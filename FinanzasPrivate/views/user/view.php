<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

use app\models\User;

/* @var $this yii\web\View */
/* @var $model app\models\User */

$this->title = $model->usuario;
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="user-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->usuario], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->usuario], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'usuario',
            'username',
            'password',
            #'rol',
            [
                'label' => 'Rol',
                'value' => User::getRoles()[$model->rol],
            ],
            'realName',
        ],
    ]) ?>

</div>
