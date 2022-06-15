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



/*
Verb          Path                        Action  Route Name
GET           /users                      index   users.index
GET           /users/create               create  users.create
POST          /users                      store   users.store
GET           /users/{user}               show    users.show
GET           /users/{user}/edit          edit    users.edit
PUT|PATCH     /users/{user}               update  users.update
DELETE        /users/{user}               destroy users.destroy
 */
Route::prefix('form_category')
    ->name('form_category.')->group(function () {
        Route::get('/indexform_category', [FormCategoryController::class, 'index'])->name('index');
        Route::get('/createform_categoryfaq', [FormCategoryController::class, 'create'])->name('create');
        Route::post('/', [FormCategoryController::class, 'store'])->name('store');
        Route::get('/{id}', [FormCategoryController::class, 'show'])->name('show');
        Route::get('/{id}/edit', [FormCategoryController::class, 'edit'])->name('edit');
        Route::put('/{id}', [FormCategoryController::class, 'update'])->name('update');
        Route::delete('/{id}', [FormCategoryController::class, 'destroy'])->name('destroy');
    });

