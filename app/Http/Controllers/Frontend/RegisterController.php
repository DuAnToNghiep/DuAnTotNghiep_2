<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;

class RegisterController extends Controller
{
    public function index()
    {
        return view('frontend.pages.register');
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string'],
            'email' => ['email', 'required'],
            'password' => ['required', 'string', 'confirmed']
        ]);

        $data = $request->only('name', 'email', 'password');

        $user = User::create($data);

        auth()->login($user);

        event(new Registered($user));

<<<<<<< HEAD
=======
        toastr()->success('Đăng ký tài khoản thành công!');

>>>>>>> d3f87d19688e1c553938f31d803cd2f6b534a04d
        return redirect()->route('frontend.home');
    }
}
