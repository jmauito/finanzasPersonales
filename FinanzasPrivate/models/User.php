<?php

namespace app\models;

use Yii;
use yii\db\ActiveRecord;
use yii\helpers\Security;
use yii\web\IdentityInterface;

class User extends ActiveRecord implements IdentityInterface
{


    const ROL_USER = 0;
    const ROL_ADMIN = 9;
    

    static public function getRoles(){
        return [
            self::ROL_ADMIN => 'Administrador',
            self::ROL_USER => 'Usuario simple', 
        ];
    }

    public static function tableName(){
        return 'usuario';
    }

    public function rules(){
        return [
            [['username', 'password', 'rol', 'realName'],'required'],
            [['username'], 'unique'],
            [['username'], 'string', 'max' => 20],
            [['password'], 'string', 'max' => 128],
            [['rol'], 'integer'],
            [['realName'], 'string', 'max' => 200],
        ];
    }

    public function attributeLabels(){

    }


    /**
     * {@inheritdoc}
     */
    public static function findIdentity($id){
        return static::findOne($id);
    }


    /**
     * {@inheritdoc}
     */
    public static function findIdentityByAccessToken($token, $type = null){
        throw new \yii\base\NotSupportedException('No está implementado el método findIdentityByAccessToken');
    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByUserName($usuario){
        return static::findOne([
            'username'=>$usuario,
            
    ]);
    }

    /**
     * {@inheritdoc}
     */
    public function getId(){
        return $this->getPrimaryKey();
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey()
    {
        return $this->authKey;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey)
    {
        throw new \yii\base\NotSupportedException('No está implementado el método validateAuthKey');
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return bool if password provided is valid for current user
     */
    public function validatePassword($password){
        return Yii::$app->getSecurity()->validatePassword($password, $this->password);
    }

    public static function getHash($password){
        return Yii::$app->getSecurity()->generatePasswordHash($password);
    }

    public function beforeSave($insert){
        if (!parent::beforeSave($insert)){
            return false;
        }

        if ( !empty($this->password)){
            $this->password = $this->getHash($this->password);
        } else {
            unset($this->password);
        }
        return true;
    }

    public static function roleInArray($arr_role){
        return in_array(Yii::$app->user->identity->rol, $arr_role);
    }
}
