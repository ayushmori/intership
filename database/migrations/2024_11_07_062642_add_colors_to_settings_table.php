<?php

// database/migrations/2024_11_07_XXXXXX_add_colors_to_settings_table.php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        // Add the 'header_color' and 'footer_color' columns to the 'settings' table
        Schema::table('settings', function (Blueprint $table) {
            $table->string('header_color', 7)->default('#FFFFFF'); // Default header color
            $table->string('footer_color', 7)->default('#000000'); // Default footer color
        });
    }

    public function down()
    {
        // Rollback the migration: remove the 'header_color' and 'footer_color' columns
        Schema::table('settings', function (Blueprint $table) {
            $table->dropColumn(['header_color', 'footer_color']);
        });
    }
};
