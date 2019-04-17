<?php

use app\models\User;

return [
    'adminEmail' => 'admin@example.com',
    'permisos' => [
                'class' => \yii\filters\AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'logout'], 
                        'allow' => true,
                        'roles' => ['?'], // ? = usuarios no autenticados (visitantes)  
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'], //Usuario autenticado
                        'matchCallback' => function($rule, $action){
                                return User::roleInArray([User::ROL_USER]);
                        }
                    ],

                    [
                        'actions' => ['logout', 'index', 'create', 'update', 'delete', 'view'],
                        'allow' => true,
                        'roles' => ['@'], //Usuario autenticado
                        'matchCallback' => function($rule, $action){
                                return User::roleInArray([User::ROL_ADMIN]);
                        }
                    ],
                ],
            ],
];
