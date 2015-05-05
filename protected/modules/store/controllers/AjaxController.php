<?php
Yii::import("application.modules.orders.OrdersModule");
Yii::import("application.modules.orders.models.*");

/**
 * Handle ajax requests
 */
class AjaxController extends Controller
{
	public $form;
	public $errors = false;
	
	/**
	 * Set currency for user session.
	 */
	public function actionActivateCurrency()
	{
		Yii::app()->currency->setActive(Yii::app()->request->getParam('id'));
	}

	/**
	 * Rate product
	 * @param integer $id product id
	 */
	public function actionRateProduct($id)
	{
		$request = Yii::app()->request;
		if($request->isAjaxRequest)
		{
			$model=StoreProduct::model()->active()->findByPk($id);

			$cookieName='rating_'.$model->id;
			$rating = (int) $_GET['rating'];
			if($model && in_array($rating, array(1,2,3,4,5)))
			{
				$model->saveCounters(array(
					'votes'=>1,
					'rating'=>$rating
				));

				$cookie=new CHttpCookie($cookieName, true);
				$cookie->expire=time()+60*60*24*60;
				Yii::app()->request->cookies[$cookieName]=$cookie;
			}
		}
	}


	public function actionGetSubCatergories()
	{
		$id = isset($_GET['id']) ? $_GET['id'] : '';
		$request = Yii::app()->request;
		//die("DSADSA");
		if($request->isAjaxRequest && $id)
		{
			$category = StoreCategory::model()->findByPk($id);
			$categories = $category->children()->findAll();

			if($categories)
			{
				echo CHtml::dropDownList('category[]',false,array(''=>'Модель')+CHtml::listData($categories, 'id', 'name'),array(
					'class' => 'j-category',
				));
			}
		}
	}


	public function actionCreateOrder()
	{
		$this->form = new OrderForm();
		// Make order
		if( Yii::app()->request->isPostRequest )
		{
			if(isset($_POST['OrderForm']))
			{
				$this->form->attributes = $_POST['OrderForm'];

				if($this->form->validate())
				{
					if($this->createOrder())
					{
						$result['success'] = true;
					}
					else
					{
						$result['errors'] = $this->errors;
					}
				}
				else
				{
					$result['errors'] = $this->form->getErrors();
				}
			}
		}

		echo json_encode($result);
		Yii::app()->end();
	}



	/**
	 * Create new order
	 * @return Order
	 */
	public function createOrder()
	{

		$order = new Order;

		// Set main data
		$order->user_id      = Yii::app()->user->isGuest ? null : Yii::app()->user->id;
		$order->user_name    = $this->form->name;
		$order->user_email   = $this->form->email;
		$order->user_phone   = $this->form->phone;
		$order->user_comment = $this->form->comment;

		$model = StoreProduct::model()->findByPk($this->form->product_id);

		if($order->validate())
			$order->save();
		else
		{
			$this->errors = $order->getErrors();
			return false;
		}

		// Process products
		$ordered_product = new OrderProduct;
		$ordered_product->order_id        = $order->id;
		$ordered_product->product_id      = $model->id;
		$ordered_product->name            = $model->name;
		$ordered_product->quantity        = 1;
		$ordered_product->sku             = $model->sku;
		$ordered_product->price           = $model->price;


		$ordered_product->save();

		// Reload order data.
		$order->refresh();

		// Send email to user.
		$this->sendEmail($order);

		if( $ordered_product->getErrors() )
		{
			$this->errors = $ordered_product->getErrors();
			return false;
		}

		return true;
	}


	/**
	 * Sends email to user after create new order.
	 */
	private function sendEmail(Order $order)
	{
		$theme=Yii::t('OrdersModule', 'Ваш заказ').$order->id;

		$lang=Yii::app()->language;
		$emailBodyFile=Yii::getPathOfAlias("application.emails.$lang").DIRECTORY_SEPARATOR.'new_order.php';

		// If template file does not exists use default russian translation
		if(!file_exists($emailBodyFile))
			$emailBodyFile=Yii::getPathOfAlias("application.emails.ru").DIRECTORY_SEPARATOR.'new_order.php';
		$body = $this->renderFile($emailBodyFile, array('order'=>$order), true);

		$mailer           = Yii::app()->mail;
		$mailer->From     = Yii::app()->params['adminEmail'];
		$mailer->FromName = Yii::app()->settings->get('core', 'siteName');
		$mailer->Subject  = $theme;
		$mailer->Body     = $body;
		$mailer->AddAddress($order->user_email);
		$mailer->AddReplyTo(Yii::app()->params['adminEmail']);
		$mailer->isHtml(true);
		$mailer->Send();
		$mailer->ClearAddresses();
	}

}