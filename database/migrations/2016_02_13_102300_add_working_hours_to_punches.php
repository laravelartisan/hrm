<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddWorkingHoursToPunches extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('punches', function (Blueprint $table) {
            $table->float('working_hours')->default(0)->after('punch_out_date_time');
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
            $table->dropColumn('working_hours');
        });
    }
}
