<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 2/20/16
 * Time: 1:12 PM
 */

namespace Erp\Forms;


use Erp\Models\Salary\SalaryType;

class SalaryTypeForm extends SalaryType implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Salary Type',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|unique:salary_types,name,'.$id
            ],
            [
                'type'=>'select',
                'name'=>self::STATUS,
                'label' => 'Status',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->statusList(),
                'value'=>0,
                'validation'=>"required|in:".$this->statusKeys()
            ],
            [
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'readonly'=>'readonly'
                ],
            ]
        ];

    }

}