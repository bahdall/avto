<?php

/**
 * @var $this Controller
 */

$this->pageTitle = Yii::t('FeedbackModule.core', 'Контакты');
$this->breadcrumbs[] = Yii::t('FeedbackModule.core', 'Контакты');
?>
	<div class="title"><?php echo Yii::t('FeedbackModule.core', 'Контакты') ?></div>
	<div style="clear: both;"></div>
	<div class="contact">
		<div class="phone info">
			<img src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/phone.png" />
			<span>
				<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
					'file'	=> 'phone'
				));?>
			</span>
		</div>
		<div class="email info">
			<img src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/email.png" />
			<span>
				<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
					'file'	=> 'email'
				));?>
			</span>
		</div>
		<div class="address info">
			<img src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/marker.png" />
			<span>
				<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
					'file'	=> 'address'
				));?>
			</span>
		</div>
		<div style="clear: both;"></div>
		<div class="contact_box">
			<div class="form_contact">
				<?php $form=$this->beginWidget('CActiveForm'); ?>
					<!-- Display errors  -->
					<?php if($errors = $model->getErrors() ): ?>
						<div class="error" style="margin: -15px -8px 15px;">
							<?php foreach($errors as $error): ?>
							<ol class="error_container">
								<li id="OrderForm_email-error" class="error">
									<i class="icon-info-4"></i>
									<?php echo $error[0] ?>
								</li>
							</ol>
							<?php endforeach; ?>
						</div>
					<?php endif; ?>

					<?php if($success = Yii::app()->user->getFlash('messages')): ?>

						<div class="successful" style="margin: -15px -8px 15px;">
							<ol class="successful_container">
								<li><i class="icon-ok-circled"></i><?php echo $success ?></li>
							</ol>
						</div>
						<?php
							$model = new FeedbackForm();
						?>
					<?php endif; ?>


					<div class="form_group" >
						<label>Имя</label><br />
						<?php echo CHtml::activeTextField($model,'name' , array('class' => 'input_')); ?>
					</div>
					<div class="form_group" >
						<label>E-mail</label><br />
						<?php echo CHtml::activeTextField($model,'email' , array('class' => 'input_')); ?>
					</div>
					<div class="form_group" >
						<label>Телефон</label><br />
						<?php echo CHtml::activeTextField($model,'phone' , array('class' => 'input_')); ?>
					</div>
					<div class="form_group" >
						<label>Сообщение</label><br />
						<?php echo CHtml::activeTextArea($model,'message' , array('class' => 'input_')); ?>
					</div>
					<div class="form_group" >
						<input class="btn submit" type="submit" value="Отправить" />
					</div>

				<?php $this->endWidget(); ?>
			</div>
			<div class="map">
<!--				<img src="--><?php //echo Yii::app()->theme->baseUrl ?><!--/assets/images/map.png" />-->
				<script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=WNWnkgxehJoR_lL_iNNFAs6RYQR6j9oz&width=480&height=450"></script>
			</div>
		</div>
	</div>
