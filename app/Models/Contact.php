<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    // Define the table name if it's not the plural of the model name
    protected $table = 'contacts';  // Assuming your table name is 'contacts'

    // Specify which attributes are mass assignable
    protected $fillable = ['name','lastname','email','phone','message'];
}
