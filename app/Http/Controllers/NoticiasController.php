<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Noticias;
class NoticiasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
     //return \App\noticias::all();
    // return view ('layouts.tema');
         $noticias = Noticias::all();
         $total = Noticias::all()->count();
        return view('layouts.lista-noticias', compact('noticias', 'total'));
		// response()->json(compact('noticias'));
		
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       // return view ('layouts.tema');
         return view('layouts.incluir-noticias');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
   public function store(Request $request) {
   
        $dados = $request->all();
        Noticias::create($dados);
        return redirect()->route('noticias.index')->with('message', 'Notícia criada com sucesso!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function edit($id) {
        $noticias = Noticias::findOrFail($id);
        return view('layouts.alterar-noticia', compact('noticias'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $dados = $request->all();
        $id = Noticias::findOrFail($id);
        $id->update($dados);
        return back()->with(["message_edit" => 'Notícia editada com sucesso']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function destroy($id) {
        $noticias = Noticias::findOrFail($id);
        $noticias ->delete();
        return redirect()->route('noticias.index')->with('message', 'Notícia excluída com sucesso!');
    }
}
