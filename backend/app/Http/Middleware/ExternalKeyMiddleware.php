<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ExternalKeyMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $validated = Validator::make($request->all(),[
            'access_key' => 'bail|required|exists:accesskeys'
        ]);
        return (count($validated->errors()) > 0) ?
            abort(403, $validated->errors()) : $next($request);
    }
}
