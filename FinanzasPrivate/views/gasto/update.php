<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Gasto */

$this->title = 'Update Gasto: ' . $model->gasto;
$this->params['breadcrumbs'][] = ['label' => 'Gastos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->gasto, 'url' => ['view', 'id' => $model->gasto]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="gasto-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
