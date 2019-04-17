<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tipogasto".
 *
 * @property string $tipogasto Id del tipo de gasto
 * @property string $nombre Nombre del tipo de gasto
 * @property string $categoriagasto Categoría del tipo de gasto
 *
 * @property Gasto[] $gastos
 * @property Categoriagasto $categoriagasto0
 */
class Tipogasto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tipogasto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'categoriagasto'], 'required'],
            [['categoriagasto'], 'integer'],
            [['nombre'], 'string', 'max' => 50],
            [['nombre'], 'unique'],
            [['categoriagasto'], 'exist', 'skipOnError' => true, 'targetClass' => Categoriagasto::className(), 'targetAttribute' => ['categoriagasto' => 'categoriagasto']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'tipogasto' => 'Id del tipo de gasto',
            'nombre' => 'Nombre del tipo de gasto',
            'categoriagasto' => 'Categoría del tipo de gasto',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGastos()
    {
        return $this->hasMany(Gasto::className(), ['tipogasto' => 'tipogasto']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategoriagasto0()
    {
        return $this->hasOne(Categoriagasto::className(), ['categoriagasto' => 'categoriagasto']);
    }
}
