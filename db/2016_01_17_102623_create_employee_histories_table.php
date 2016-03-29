<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_histories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')
                  ->references('id')
                  ->on('users')
                  ->onDelete('cascade');
            $table->integer('department_id')->unsigned();
            $table->foreign('department_id')
                   ->references('id')
                   ->on('users')
                   ->onDelete('cascade');
            $table->integer('designation_id')->unsigned();
            $table->foreign('designation_id')
                  ->references('id')
                  ->on('users')
                  ->onDelete('cascade');
            $table->timestamp('dept_join_date')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('employee_histories');
    }
}
