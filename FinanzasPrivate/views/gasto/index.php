<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\GastoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Gastos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="gasto-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Gasto', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'gasto',
            'fecha',
            'tipogasto0.nombre:text:Tipo de gasto',
            'factura',
            'empresa0.nombre:text:Empresa o negocio',
            //'monto',
            //'concepto:ntext',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
