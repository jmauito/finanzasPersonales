<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\GastoSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="gasto-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'gasto') ?>

    <?= $form->field($model, 'fecha') ?>

    <?= $form->field($model, 'tipogasto') ?>

    <?= $form->field($model, 'factura') ?>

    <?= $form->field($model, 'empresa') ?>

    <?php // echo $form->field($model, 'monto') ?>

    <?php // echo $form->field($model, 'concepto') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
