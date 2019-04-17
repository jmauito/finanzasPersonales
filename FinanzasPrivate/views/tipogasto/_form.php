<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

use app\models\Categoriagasto;
/* @var $this yii\web\View */
/* @var $model app\models\Tipogasto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tipogasto-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'categoriagasto')->dropDownList(
        ArrayHelper::map( 
            Categoriagasto::find()->orderBy('nombre')->all(), 'categoriagasto', 'nombre'
        )
    ); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
