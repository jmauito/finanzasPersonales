<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Categoriagasto */

$this->title = 'Actualizar Categoría de gasto: ' . $model->nombre;
$this->params['breadcrumbs'][] = ['label' => 'Categoría gastos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->categoriagasto, 'url' => ['view', 'id' => $model->categoriagasto]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="categoriagasto-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
