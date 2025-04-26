<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('alternatifs', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')->unique();
            $table->integer('alternatif');
            $table->string('keterangan');
            $table->string('type')->nullable();
            $table->integer('harga')->nullable();
            $table->string('batrai')->nullable();
            $table->string('power')->nullable();
            $table->integer('kecepatan')->nullable();
            $table->integer('jarak')->nullable();
            $table->integer('daya')->nullable();
            $table->string('photo')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alternatifs');
    }
};
