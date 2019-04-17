<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Tipogasto */

$this->title = 'Actualizar Tipo de gasto: ' . $model->tipogasto;
$this->params['breadcrumbs'][] = ['label' => 'Tipogastos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tipogasto, 'url' => ['view', 'id' => $model->tipogasto]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tipogasto-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
