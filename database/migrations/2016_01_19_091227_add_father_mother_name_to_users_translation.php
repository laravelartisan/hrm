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
            $table->string('father_name')->after('last_name');
            $table->string('mother_name')->after('father_name');
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
            $table->dropColumn('father_name');
            $table->dropColumn('mother_name');
        });
    }
}
