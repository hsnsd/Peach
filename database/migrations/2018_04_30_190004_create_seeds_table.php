<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class CreateSeedsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('seeds', function (Blueprint $t) {
            $t->foreign('product-id')->references('product-id')->on('Product');     
            $t->primary('seed-id');   
            $t->string('Name');
            $t->string('Photo');
            $t->string('local_name');
            $t->date('sowingTime');
            $t->date('reapingTime');
            $t->string('SowingMethod');
            $t->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('seeds');
    }
}
