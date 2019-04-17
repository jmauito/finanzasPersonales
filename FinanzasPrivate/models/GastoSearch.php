<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Gasto;

/**
 * GastoSearch represents the model behind the search form of `app\models\Gasto`.
 */
class GastoSearch extends Gasto
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['gasto', 'tipogasto', 'empresa'], 'integer'],
            [['fecha', 'factura', 'concepto'], 'safe'],
            [['monto'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Gasto::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'gasto' => $this->gasto,
            //'fecha' => $this->fecha,
            'tipogasto' => $this->tipogasto,
            'empresa' => $this->empresa,
            'monto' => $this->monto,
        ]);

        $query->andFilterWhere(['like', 'factura', $this->factura])
            ->andFilterWhere(['like', 'concepto', $this->concepto])
            ->andFilterWhere(['like', 'fecha', $this->fecha]);

        return $dataProvider;
    }
}
