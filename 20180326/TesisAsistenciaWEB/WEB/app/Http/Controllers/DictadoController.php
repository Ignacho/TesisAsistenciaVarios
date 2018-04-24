<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dictado;
use App\Materia; 

class DictadoController extends Controller
{
    public function index($id = null) {

      if ($id == null){
        
        $materias = Materia::all();
        $dictado = Dictado::all();

        foreach ($dictado as $d) {
            $d['materia'] = $materias->find($d['id_materia']);
        }
        return $dictado;
      } else {
        return Dictado::find($id);
      }
    }

    public function show($id) {
        return Dictado::find($id);
    }

    public function store(Request $request) {
        $dictado = new Dictado;
        $dictado->id_materia = $request->input('id_materia');
        $dictado->cuat = $request->input('cuat');
        $dictado->ano = $request->input('ano');
        $dictado->dia_cursada = $request->input('dia_cursada');
        $dictado->alt_hor = $request->input('alt_hor');
        $dictado->cant_insc_act = $request->input('cant_insc_act');
        $dictado->cant_clases = $request->input('cant_clases');
        $dictado->cant_faltas_max = $request->input('cant_faltas_max');
        $dictado->fecha_inicio = $request->input('fecha_inicio');
        $dictado->fecha_fin = $request->input('fecha_fin');
        $dictado->save();
        return 'Dictado record successfully created with id' . $dictado->id;
    }
    
    public function update(Request $request, $id) {
        $dictado = Dictado::find($id);
        $dictado->cuat = $request->input('cuat');
        $dictado->ano = $request->input('ano');
        $dictado->dia_cursada = $request->input('dia_cursada');
        $dictado->alt_hor = $request->input('alt_hor');
        $dictado->cant_insc_act = $request->input('cant_insc_act');
        $dictado->cant_clases = $request->input('cant_clases');
        $dictado->cant_faltas_max = $request->input('cant_faltas_max');
        $dictado->fecha_inicio = $request->input('fecha_inicio');
        $dictado->fecha_fin = $request->input('fecha_fin');
        $dictado->save();
        return 'Dictado record successfully updated with id ' . $dictado->id;
    }
    public function destroy($id) {
        $dictado = Dictado::find($id)->delete();
        return 'Dictado record successfully deleted';
    }
}
