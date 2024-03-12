<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(){

        $users = User::all();
        $response = [
            'success' => true,
            'data' => $users,
            'message' => 'Success!',
        ];
        return response()->json($response, 200);
    }
}
