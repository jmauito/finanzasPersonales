<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Tipogasto */

$this->title = 'Crear Tipo de gasto';
$this->params['breadcrumbs'][] = ['label' => 'Tipo gastos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tipogasto-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
