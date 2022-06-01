<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Eform\FormCategoryController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});




Route::prefix('form_category')
    ->name('form_category.')->group(function () {
        Route::get('/indexform_category', [FormCategoryController::class, 'index'])->name('index');
//        Route::get('/createfaq', [FaqController::class, 'create'])->name('create');
//        Route::post('/', [FaqController::class, 'store'])->name('store');
//        Route::get('/{id}', [FaqController::class, 'show'])->name('show');
//        Route::get('/{id}/edit', [FaqController::class, 'edit'])->name('edit');
//        Route::put('/{id}', [FaqController::class, 'update'])->name('update');
//        Route::delete('/{id}', [FaqController::class, 'destroy'])->name('destroy');
    });

