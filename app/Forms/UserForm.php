<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/21/15
 * Time: 10:48 AM
 */

namespace Erp\Forms;


use Erp\Models\Email\Email;
use Erp\Models\User\User;



class UserForm extends User implements FormInterface
{

    use FormControll, DataHelper;//must for form-validations


    // choose field names from the $formFields Array which u dont want to edit in the edit form
    protected $nonEditableFields = ['role'];
    protected $nonCreatableFields = [];




    public function formInputFields($id = null,$mode=null)
    {


        $formFields =[

                          [
                                'type'=>'hidden',
                                'name'=>'role',
                                'value'=>$this->role('employee')
                          ],
                        [
                            'type'=>'label',
                            'name'=>'photo',
                            'value' => 'Photograph',
                            'others'=>[
                                'class'=>'form-control',
                                'style'=>'background-color:#0073b7; color:white'
                            ],
                            'labclass'=>'col-sm-12',
                            'wrapclass'=>'col-sm-12',

                        ],

                            [
                                'type'=>'file',
                                'name'=>self::PHOTO,
                                'label' => 'User\'s  Photo',
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>false,
                                'others'=>[
                                    'class'=>'form-control',
                                    'id'=>'file'
                                ],
                                'validation'=>"required|image"
                            ],
                            [
                                'type'=>'label',
                                'value' => 'Personal Information',
                                'others'=>[
                                    'class'=>'form-control',
                                    'style'=>'background-color:#0073b7; color:white'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                            ],
            [
                'type'=>'text',
                'name'=>self::EMPLOYEE_ID,
                'label' => 'Employee Id',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:users,".self::EMPLOYEE_ID.",".$id.",|max:10|min:6"
            ],
                              [
                                    'type'=>'text',
                                    'name'=>self::USER_NAME,
                                    'label' => 'User Name',
                                    'value'=>null,
                                    'labclass'=>'col-sm-12',
                                    'wrapclass'=>'col-sm-12 ',
                                    'trans'=>false,
                                    'others'=>[
                                        'class'=>'form-control',
                                    ],
                                    'validation'=>"required|unique:users,".self::USER_NAME.",".$id.",|max:10|min:6"
                              ],
                          [
                                'type'=>'text',
                                'name'=>self::FIRST_NAME,
                                'label' => 'First Name',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>true,
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,
                                    'id'=>'first_name'
                                ],
                                'validation'=>'required|max:10',

                          ],
                          [
                                'type'=>'text',
                                'name'=>self::LAST_NAME,
                                'label' => 'Last Name',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>true,
                                'validation'=>'required|max:10',
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,

                                ],
                          ],
                            [
                                'type'=>'text',
                                'name'=>self::FATHER,
                                'label' => 'Father\'s Name',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>true,
                                'validation'=>'required|max:10',
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,

                                ],
                            ],
                            [
                                'type'=>'text',
                                'name'=>self::MOTHER,
                                'label' => 'Mother\'s Name',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>true,
                                'validation'=>'required|max:10',
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,

                                ],
                            ],
                          [
                                'type'=>'textarea',
                                'name'=>self::ADDRESS,
                                'label' => 'Local Address',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>true,
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,
                                ],
                                'validation'=>'required|max:10',

                          ],
                            [
                                'type'=>'textarea',
                                'name'=>self::PERMANENT_ADDRESS,
                                'label' => 'Permanent Address',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>true,
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,
                                ],
                                'validation'=>'required|max:10',

                            ],
                            [
                                'type'=>'date',
                                'name'=>self::BIRTHDAY,
                                'label' => 'Date of Birth',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'value'=>date('m/d/Y'),
                                'validation'=>"required"
                            ],
                          [
                                'type'=>'text',
                                'name'=>self::PHONE,
                                'label' => 'Phone',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'bool'=> true,
                                'radval'=> ['1','2','3'],
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,
                                ],
                                'validation'=>'required|max:10',
                          ],
                          [
                                'type'=>'select',
                                'name'=>self::GENDER,
                                'label' => 'Gender',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>false,
                                'options'=>$this->genderList(),
                                'value'=>0,
                                'validation'=>"required|in:".$this->genderKeys()

                          ],
                          [
                                'type'=>'select',
                                'name'=>self::RELIGION,
                                'label' => 'Religion',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'options'=>$this->relegionList(),
                                'value'=>0,
                                'validation'=>"required|in:".$this->relegionKeys()
                          ],
                            [
                                'type'=>'label',

                                'value' => 'Company Details',
                                'others'=>[
                                    'class'=>'form-control',
                                    'style'=>'background-color:#0073b7; color:white'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',

                            ],
                          [
                                'type'=>'select',
                                'name'=>self::DEPARTMENT,
                                'label' => 'Department',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'options'=>$this->departmentList(),
                                'value'=>0,
                                'validation'=>"required|in:".$this->departmentKeys()
                          ],
                            [
                                'type'=>'select',
                                'name'=>self::DESIGNATION,
                                'label' => 'Designation',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'options'=>[],
                                'value'=>0,
                                'validation'=>"required|in:".$this->designationKeys()
                            ],
                            [
                                'type'=>'select',
                                'name'=>self::SHIFT,
                                'label' => 'Shift',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'options'=>[],
                                'value'=>0,
                                'validation'=>"required|in:".$this->shiftKeys()
                            ],
                            [
                                'type'=>'date',
                                'name'=>self::DETP_JOIN_DATE,
                                'label' => 'Joining Date',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'value'=>date('m/d/Y'),
                                'validation'=>"required"
                            ],
                            [
                                'type'=>'label',

                                'value' => 'Salary Details',
                                'others'=>[
                                    'class'=>'form-control',
                                    'style'=>'background-color:#0073b7; color:white'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',

                            ],

                            [
                                'type'=>'text',
                                'name'=>self::BASIC,
                                'label' => 'Basic',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>false,
                                'validation'=>'required|max:10',
                                'others'=>[
                                    'class'=>'form-control',
                                    'maxlength'=>10,
                                    'minlength'=>5,

                                ],
                            ],
                            [
                                'type'=>'select',
                                'name'=>self::ALLOWANCE,
                                'label' => 'Allowance',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>false,
                                'options'=>$this->salaryAllowanceList(),
                                'value'=>0,
                                'validation'=>"required|in:".$this->allowanceKeys()

                            ],
                            [
                                'type'=>'select',
                                'name'=>self::OVERTIME,
                                'label' => 'Overtime',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>false,
                                'options'=>$this->overtimeList(),
                                'value'=>0,
                                'validation'=>"required|in:".$this->overtimeKeys()

                            ],

                            [
                                'type'=>'select',
                                'name'=>self::SALARY_CUT,
                                'label' => 'Salary Cut',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>false,
                                'options'=>$this->salaryCutList(),
                                'value'=>0,
                                'validation'=>"required|in:".$this->salaryCutKeys()

                            ],
                            [
                                'type'=>'select',
                                'name'=>self::BONUS,
                                'label' => 'Bonus',
                                'others'=>['class'=>'form-control'],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'trans'=>false,
                                'options'=>$this->bonusList(),
                                'value'=>0,
                //                'validation'=>"required|in:".$this->bonusKeys()

                            ],
                            [
                                'type'=>'label',

                                'value' => 'Authentication Information',
                                'others'=>[
                                    'class'=>'form-control',
                                    'style'=>'background-color:#0073b7; color:white'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',

                            ],
                          [
                                'type'=>'email',
                                'name'=>self::EMAIL,
                                'label' => 'Email',
                                'others'=>[
                                    'class'=>'form-control'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',
                                'validation'=>"required|unique:users,email,".$id."|unique:emails,email"
                          ],
                            [
                                'type'=>'password',
                                'name'=>self::PASSWORD,
                                'label' => 'Password',
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-6',
                                'others'=>[
                                    'class'=>'form-control'
                                ],
                                'validation'=>'required|confirmed'

                            ],
                            [
                                'type'=>'password',
                                'name'=>self::CONFIRM_PASSWORD,
                                'label' => 'Confirm Password',
                                'others'=>[
                                    'class'=>'form-control'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-6',
                            ],
                            [
                                'type'=>'label',

                                'value' => 'Bank Account Information',
                                'others'=>[
                                    'class'=>'form-control',
                                    'style'=>'background-color:#0073b7; color:white'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',

                            ],
                            [
                                'type'=>'text',
                                'name'=>self::ACCOUNT_NO,
                                'label' => 'Account No',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>false,
                                'others'=>[
                                    'class'=>'form-control',
                                ],
                                'validation'=>"required"
                            ],
                            [
                                'type'=>'text',
                                'name'=>self::BANK,
                                'label' => 'Bank Name',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>false,
                                'others'=>[
                                    'class'=>'form-control',
                                ],
                                'validation'=>"required"
                            ],
                            [
                                'type'=>'text',
                                'name'=>self::BRANCH,
                                'label' => 'Branch Name',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>false,
                                'others'=>[
                                    'class'=>'form-control',
                                ],
                                'validation'=>"required"
                            ],
                            [
                                'type'=>'text',
                                'name'=>self::IFSC,
                                'label' => 'IFSC No',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>false,
                                'others'=>[
                                    'class'=>'form-control',
                                ],
                                'validation'=>"required"
                                            ],
                            [
                                'type'=>'text',
                                'name'=>self::PAN,
                                'label' => 'Pan No',
                                'value'=>null,
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>false,
                                'others'=>[
                                    'class'=>'form-control',
                                ],
                                'validation'=>"required"
                            ],

                            [
                                'type'=>'label',

                                'value' => 'Employee Documents',
                                'others'=>[
                                    'class'=>'form-control',
                                    'style'=>'background-color:#0073b7; color:white'
                                ],
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12',

                            ],
                            [
                                'type'=>'file',
                                'name'=>'file[]',
                                'label' => 'Resume',
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'trans'=>false,
                                'others'=>[
                                    'class'=>'form-control',
                                ],
                //                'validation'=>"required"
                            ],
                            [
                                'type'=>'file',
                                'name'=>'file[]',
                                'label' => 'Offer Letter',
                                'labclass'=>'col-sm-12',
                                'wrapclass'=>'col-sm-12 ',
                                'others'=>[
                                    'class'=>'form-control',
                                ],
                //                'validation'=>"required"
                            ],
                        [
                            'type'=>'file',
                            'name'=>'file[]',
                            'label' => 'Joining Letter',
                            'labclass'=>'col-sm-12',
                            'wrapclass'=>'col-sm-12 ',
                            'trans'=>false,
                            'others'=>[
                                'class'=>'form-control',
                            ],
            //                'validation'=>"required"
                        ],
                        [
                            'type'=>'file',
                            'name'=>'file[]',
                            'label' => 'Contract and Agreement',
                            'labclass'=>'col-sm-12',
                            'wrapclass'=>'col-sm-12 ',
                            'trans'=>false,
                            'others'=>[
                                'class'=>'form-control',
                            ],
            //                'validation'=>"required"
                        ],
                        [
                            'type'=>'file',
                            'name'=>'file[]',
                            'label' => 'ID Proof',
                            'labclass'=>'col-sm-12',
                            'wrapclass'=>'col-sm-12 ',
                            'trans'=>false,
                            'others'=>[
                                'class'=>'form-control',
                            ],
            //                'validation'=>"required"
                        ],
                          [
                                'type'=>'submit',
                                'label' => 'Submit',
                                'others'=>[
                                    'class'=>'btn btn-success',
                                    'style'=>'background-color:#0073b7 ; color:white',
                                    'readonly'=>'readonly'
                                ]
                          ]
                        ];


        return $formFields;
    }
}