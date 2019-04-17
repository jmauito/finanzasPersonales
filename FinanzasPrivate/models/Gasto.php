<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "gasto".
 *
 * @property string $gasto Id del gasto
 * @property string $fecha Fecha
 * @property string $tipogasto Tipo de gasto
 * @property string $factura Nro. de factura
 * @property string $empresa Empresa o negocio
 * @property string $monto Monto
 * @property string $concepto Concepto
 *
 * @property Empresa $empresa0
 * @property Tipogasto $tipogasto0
 */
class Gasto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'gasto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha', 'tipogasto', 'empresa', 'monto'], 'required'],
            [['fecha'], 'safe'],
            [['tipogasto', 'empresa'], 'integer'],
            [['monto'], 'number'],
            [['concepto'], 'string'],
            [['factura'], 'string', 'max' => 50],
            [['empresa'], 'exist', 'skipOnError' => true, 'targetClass' => Empresa::className(), 'targetAttribute' => ['empresa' => 'empresa']],
            [['tipogasto'], 'exist', 'skipOnError' => true, 'targetClass' => Tipogasto::className(), 'targetAttribute' => ['tipogasto' => 'tipogasto']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'gasto' => 'Id del gasto',
            'fecha' => 'Fecha',
            'tipogasto' => 'Tipo de gasto',
            'factura' => 'Nro. de factura',
            'empresa' => 'Empresa o negocio',
            'monto' => 'Monto',
            'concepto' => 'Concepto',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpresa0()
    {
        return $this->hasOne(Empresa::className(), ['empresa' => 'empresa']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipogasto0()
    {
        return $this->hasOne(Tipogasto::className(), ['tipogasto' => 'tipogasto']);
    }
}
