<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class UserController extends Controller
{

    public $successStatus = 200;

    
	   public function index()
    {
        $users = User::orderBy('created_at', 'desc')->paginate(10);
        return view('layouts.show-users',['users' => $users]);
    }

    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
     public function logar()
    {
       // return view ('layouts.tema');
         return view('layouts.logar-users');

    }
    public function login(){
		
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
			//var_dump($user);
            $success['token'] =  $user->createToken('MyApp')->accessToken;
            return response()->json(['userData' => $success], $this->successStatus);
           // return redirect()->route('/index')->with('message', 'Usuário excluída com sucesso!');
          //   return view('layouts.home');
        }
        else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }
  public function new()
    {
       // return view ('layouts.tema');
         return view('layouts.create-users');

    }
    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->name;

      //  return response()->json(['success'=>$success], $this->successStatus);
           return back()->with(["message_success" => 'Usuário cadastrado com sucesso']);
    }
public function edit($id)
    {
        $edit = User::findOrFail($id);
        return view('layouts.alterar-users',compact('users'));
    }
  
    public function update(ProductRequest $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->name        = $request->name;
        $product->description = $request->description;
        $product->quantity    = $request->quantity;
        $product->price       = $request->price;
        $product->save();
        return redirect()->route('products.index')->with('message', 'Product updated successfully!');
    }
    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    public function details()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }
}