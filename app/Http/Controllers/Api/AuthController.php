<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request){
        // Validation

        $validation = Validator::make($request->all(),[
            'name' => 'required',
            'email'=>'required|unique:users,email',
            'password'=>'required|min:6|max:32',
            'confirm_password'=>'required|same:password'
        ]);

        if($validation->fails()){
            $response =[
                'success'=>false,
                'message'=>$validation->errors(),
            ];
            return response()->json($response,400);
        }

        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->save();

        $data['token']= $user->createToken($user->email)->plainTextToken;
        $data['user'] = $user;
        $response = [
            'success' => true,
            'data'=> $data,
            'message' => 'Your Register Successfully!',
        ];
        return response()->json($response, 200);
    }

    public function login(Request $request){
        // Validation

        $validation = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|min:6|max:32'
        ]);

        if ($validation->failed()) {
            $response = [
                'success' => false,
                'message' => $validation->errors(),
            ];
            return response()->json($response, 400);
        }
        $cred = ['email'=>$request->email,'password'=>$request->password];
        if(Auth::attempt($cred)){
            $user = Auth::user();
            $data['token'] = $user->createToken($user->email)->plainTextToken;
            $data['user'] = $user;
            $response = [
                'success' => true,
                'data' => $data,
                'message' => 'Your Login Successfully!',
            ];
            return response()->json($response, 200);
        }else{
            $response = [
                'success' => false,
                'message' => 'Email and Password invalid!',
            ];
            return response()->json($response, 400);
        }
    }
}
