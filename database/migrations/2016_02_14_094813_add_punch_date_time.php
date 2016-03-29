<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPunchDateTime extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('punches', function (Blueprint $table) {
           $table->dateTime('punch_date_time')->default(date('Y-m-d H:i:s'))->after('punch_date');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('punches', function (Blueprint $table) {
            $table->dateTime('punch_date_time');
        });
    }
}
