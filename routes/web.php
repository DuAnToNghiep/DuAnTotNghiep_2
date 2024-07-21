<?php

use App\Http\Controllers\Admin\BannerController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\HomeController as AdminHomeController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\PostCategoryController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\ProductCategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ProductOptionController;
use App\Http\Controllers\Admin\RegisterController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\AccountController;
use App\Http\Controllers\Frontend\BlogController;
use App\Http\Controllers\Frontend\BlogDetailController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\LoginController as FrontendLoginController;
use App\Http\Controllers\Frontend\PrivacyPolicyController;
use App\Http\Controllers\Frontend\ProductCommentController;
use App\Http\Controllers\Frontend\ProductDetailsController;
use App\Http\Controllers\Frontend\ProductListController;
use App\Http\Controllers\Frontend\RegisterController as FrontendRegisterController;
use App\Http\Controllers\Frontend\TermController;
use App\Http\Controllers\Frontend\WishlistController;
use App\Models\User;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('locale/{locale}', function ($locale) {
    Session::put('locale', $locale);
    return redirect()->back();
});

Route::get('{page}-detail/locale/{locale}', function ($page, $locale) {
    Session::put('locale', $locale);
    return redirect()->back();
})->where('page', 'blog|product');

Route::prefix('admin')->group(function () {
    Route::get('{page}/locale/{locale}', function ($page, $locale) {
        Session::put('locale', $locale);
        return redirect()->back();
    })->where('page', 'contact|product');
});

// Admin Routes
Route::group(['prefix' => 'admin'], function () {
    Route::get('/sign-up', [RegisterController::class, 'create'])->name('auth.register');
    Route::post('/sign-up', [RegisterController::class, 'store'])->name('auth.register.store');

    Route::get('/sign-in', [LoginController::class, 'create'])->name('auth.login');
    Route::post('/sign-in', [LoginController::class, 'store'])->name('auth.login.store');

    Route::group(['middleware' => ['auth:web', 'role:administrator|employee']], function () {
        Route::get('/logout', [UserController::class, 'logout'])->name('logout');

        Route::get('/', [AdminHomeController::class, 'index'])->name('admin.home');

        Route::group(['prefix' => 'banner'], function () {
            Route::get('/', [BannerController::class, 'index'])->name('admin.banner.index')->middleware(['permission:read banner management']);
            Route::get('/create', [BannerController::class, 'create'])->name('admin.banner.create')->middleware(['permission:create banner management']);
            Route::post('/', [BannerController::class, 'store'])->name('admin.banner.store');
            Route::get('/edit/{id}', [BannerController::class, 'edit'])->name('admin.banner.edit')->middleware(['permission:update banner management']);
            Route::patch('/{id}', [BannerController::class, 'update'])->name('admin.banner.update');
            Route::get('/{id}', [BannerController::class, 'destroy'])->name('admin.banner.destroy')->middleware(['permission:delete banner management']);
        });

        Route::group(['prefix' => 'brand'], function () {
            Route::get('/', [BrandController::class, 'index'])->name('admin.brand.index')->middleware(['permission:read brand management']);
            Route::get('/create', [BrandController::class, 'create'])->name('admin.brand.create')->middleware(['permission:create brand management']);
            Route::post('/', [BrandController::class, 'store'])->name('admin.brand.store');
            Route::get('/edit/{id}', [BrandController::class, 'edit'])->name('admin.brand.edit')->middleware(['permission:update brand management']);
            Route::patch('/{id}', [BrandController::class, 'update'])->name('admin.brand.update');
            Route::get('/{id}', [BrandController::class, 'destroy'])->name('admin.brand.destroy')->middleware(['permission:delete brand management']);
        });

        Route::group(['prefix' => 'category'], function () {
            Route::get('/', [ProductCategoryController::class, 'index'])->name('admin.category.index')->middleware(['permission:read category management']);
            Route::get('/create', [ProductCategoryController::class, 'create'])->name('admin.category.create')->middleware(['permission:create category management']);
            Route::post('/', [ProductCategoryController::class, 'store'])->name('admin.category.store');
            Route::get('/edit/{id}', [ProductCategoryController::class, 'edit'])->name('admin.category.edit')->middleware(['permission:update category management']);
            Route::patch('/{id}', [ProductCategoryController::class, 'update'])->name('admin.category.update');
            Route::get('/{id}', [ProductCategoryController::class, 'destroy'])->name('admin.category.destroy')->middleware(['permission:delete category management']);
        });

        Route::group(['prefix' => 'post-category'], function () {
            Route::get('/', [PostCategoryController::class, 'index'])->name('admin.post-category.index')->middleware(['permission:read blog management']);
            Route::get('/create', [PostCategoryController::class, 'create'])->name('admin.post-category.create')->middleware(['permission:create blog management']);
            Route::post('/', [PostCategoryController::class, 'store'])->name('admin.post-category.store');
            Route::get('/edit/{id}', [PostCategoryController::class, 'edit'])->name('admin.post-category.edit')->middleware(['permission:update blog management']);
            Route::patch('/{id}', [PostCategoryController::class, 'update'])->name('admin.post-category.update');
            Route::get('/{id}', [PostCategoryController::class, 'destroy'])->name('admin.post-category.destroy')->middleware(['permission:delete blog management']);
        });

        Route::group(['prefix' => 'post'], function () {
            Route::get('/', [PostController::class, 'index'])->name('admin.post.index')->middleware(['permission:read blog management']);
            Route::get('/create', [PostController::class, 'create'])->name('admin.post.create')->middleware(['permission:create blog management']);
            Route::post('/', [PostController::class, 'store'])->name('admin.post.store');
            Route::get('/edit/{id}', [PostController::class, 'edit'])->name('admin.post.edit')->middleware(['permission:update blog management']);
            Route::patch('/{id}', [PostController::class, 'update'])->name('admin.post.update');
            Route::get('/{id}', [PostController::class, 'destroy'])->name('admin.post.destroy')->middleware(['permission:delete blog management']);
        });

        Route::group(['prefix' => 'product'], function () {
            Route::get('/comment/{id}', [ProductController::class, 'updateCommentStatus'])->name('admin.product.comment-status')->middleware(['permission:update product management']);
            Route::get('/', [ProductController::class, 'index'])->name('admin.product.index')->middleware(['permission:read product management']);
            Route::get('/create', [ProductController::class, 'create'])->name('admin.product.create')->middleware(['permission:create product management']);
            Route::post('/', [ProductController::class, 'store'])->name('admin.product.store');
            Route::get('/show/{id}', [ProductController::class, 'show'])->name('admin.product.show')->middleware(['permission:read product management']);
            Route::get('/edit/{id}', [ProductController::class, 'edit'])->name('admin.product.edit')->middleware(['permission:update product management']);
            Route::patch('/{id}', [ProductController::class, 'update'])->name('admin.product.update');
            Route::get('/{id}', [ProductController::class, 'destroy'])->name('admin.product.destroy')->middleware(['permission:delete product management']);

        });

 
// Frontend Routes














// Password Reset Routes...


// End frontend routes
