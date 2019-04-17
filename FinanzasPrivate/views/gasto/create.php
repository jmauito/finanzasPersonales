<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Gasto */

$this->title = 'Create Gasto';
$this->params['breadcrumbs'][] = ['label' => 'Gastos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="gasto-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
