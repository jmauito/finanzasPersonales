<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "empresa".
 *
 * @property string $empresa Id de Empresa
 * @property string $nombre Nombre de la empresa
 *
 * @property Gasto[] $gastos
 */
class Empresa extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'empresa';
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
            'empresa' => 'Id de Empresa',
            'nombre' => 'Nombre de la empresa',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGastos()
    {
        return $this->hasMany(Gasto::className(), ['empresa' => 'empresa']);
    }
}
