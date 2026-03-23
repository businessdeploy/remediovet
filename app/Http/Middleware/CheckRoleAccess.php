<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckRoleAccess
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next, $role)
    {

        
        $user = Auth::user();
        
        // echo "<pre>";
        // print_r($user->role_as);
        // die('===');

        if ($user) {
            
            if ($role == 2 && $user->role_as == 2) {
                return redirect()->back()->with('error', 'Access denied.');
            } elseif ($role == '3' && $user->role_as == 3) {
                return redirect()->back()->with('error', 'Access denied.');
            }
        }

        return $next($request);
    }
}
