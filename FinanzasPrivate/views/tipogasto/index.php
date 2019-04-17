<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TipogastoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tipo de gastos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tipogasto-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Crear Tipo de gasto', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'tipogasto',
            'nombre',
            //'categoriagasto',
            'categoriagasto0.nombre:text:Categoría',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
