<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "categoriagasto".
 *
 * @property string $categoriagasto Id de Categoría de gasto
 * @property string $nombre Nombre de la categoría de gasto
 *
 * @property Tipogasto[] $tipogastos
 */
class Categoriagasto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'categoriagasto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre'], 'required'],
            [['nombre'], 'string', 'max' => 50],
            [['nombre'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'categoriagasto' => 'Id de Categoría de gasto',
            'nombre' => 'Nombre de la categoría de gasto',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipogastos()
    {
        return $this->hasMany(Tipogasto::className(), ['categoriagasto' => 'categoriagasto']);
    }
}
