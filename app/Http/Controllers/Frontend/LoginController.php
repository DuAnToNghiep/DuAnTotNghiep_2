<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('frontend.pages.login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => ['email', 'required'],
            'password' => ['required', 'string']
        ]);

        $credentials = $request->only('email', 'password');

        if (auth()->attempt($credentials)) {
<<<<<<< HEAD
=======
            toastr()->success('Đăng nhập thành công!');
>>>>>>> d3f87d19688e1c553938f31d803cd2f6b534a04d
            return redirect()->route('frontend.home');
        }

        return redirect()->back()->withInput($request->only('email'))->with('error', __('frontend.Invalid credentials'));
    }

    /**
     * Logout Users.
     */
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect(route('frontend.login'))->with('success', __('frontend.You have been logged out.'));
    }
}
