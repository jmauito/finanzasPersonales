<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Categoriagasto */

$this->title = 'Crear Categoría de gasto';
$this->params['breadcrumbs'][] = ['label' => 'Categoriagastos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="categoriagasto-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
