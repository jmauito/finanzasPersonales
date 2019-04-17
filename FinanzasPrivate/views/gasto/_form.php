<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\jui\DatePicker;

use app\models\Empresa;
use app\models\Tipogasto;
/* @var $this yii\web\View */
/* @var $model app\models\Gasto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="gasto-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'fecha')->widget(DatePicker::className(), ['dateFormat' => 'php:Y-m-d' ]); ?>

    <?= $form->field($model, 'tipogasto')->dropDownList(
        ArrayHelper::map( 
            Tipogasto::find()->orderBy('nombre')->all(), 'tipogasto', 'nombre'
        )
    ); ?>

    <?= $form->field($model, 'factura')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'empresa')->dropDownList(
        ArrayHelper::map( 
            Empresa::find()->orderBy('nombre')->all(), 'empresa', 'nombre'
        )
    ); ?>

    <?= $form->field($model, 'monto')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'concepto')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
