<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFatherMotherNameToUsersTranslation extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('user_translations', function (Blueprint $table) {
            $table->string('father_name')->nullable()->change();
            $table->string('mother_name')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('user_translations', function (Blueprint $table) {
            //
        });
    }
}
