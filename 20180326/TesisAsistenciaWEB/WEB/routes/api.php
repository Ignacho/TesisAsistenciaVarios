<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/', function () {
    return view('index.blade.php');
});

Route::post('/authenticate', 'LoginController@authenticate')->middleware('cors');


//Usuario
Route::post('/identity','UsuarioController@getAuthenticatedUser');
Route::get('/usuario/{id?}', 'UsuarioController@index');
Route::post('/crear-usuario', 'UsuarioController@store');
Route::post('/actualizar-usuario/{id}', 'UsuarioController@update');
Route::post('/eliminar-usuario', 'UsuarioController@destroy');

//Alumnos
Route::get('/alumno/{id?}', 'AlumnoController@index');
Route::post('/crear-alumno', 'AlumnoController@store');
Route::post('/actualizar-alumno/{id}', 'AlumnoController@update');
Route::delete('/eliminar-alumno/{id}', 'AlumnoController@destroy');

//Carreras
Route::get('/carrera/{id?}', 'CarreraController@index');
Route::post('/crear-carrera', 'CarreraController@store');
Route::post('/actualizar-carrera/{id}', 'CarreraController@update');
Route::delete('/eliminar-carrera/{id}', 'CarreraController@destroy');

//Materias
Route::get('/materia/{id?}', 'MateriaController@index');
Route::post('/crear-materia', 'MateriaController@store');
Route::post('/actualizar-materia/{id}', 'MateriaController@update');
Route::delete('/eliminar-materia/{id}', 'MateriaController@destroy');

//Inscriptos
Route::get('/inscripto/{id?}', 'InscriptoController@index');
Route::post('/nuevo-inscripto', 'InscriptoController@store');
Route::post('/actualizar-inscripcion/{id}', 'InscriptoController@update');
Route::delete('/eliminar-inscripto/{id}', 'InscriptoController@destroy');

//Docentes asignados
Route::get('/docente-asignado/{id?}', 'AsignadoController@index');
Route::post('/asignar-docente', 'AsignadoController@store');
Route::post('/actualizar-asignacion/{id}', 'AsignadoController@update');
Route::delete('/eliminar-asignacion/{id}', 'AsignadoController@destroy');

//Asistencias Cursos
Route::get('/asistenciaCurso/{id?}', 'AsistenciaCursoController@index');
Route::post('/nueva-asistencia', 'AsistenciaCursoController@store');
Route::post('/modificar-asistencia/{id}', 'AsistenciaCursoController@update');
Route::delete('/eliminar-asistencia/{id}', 'AsistenciaCursoController@destroy');

//Asistentes
Route::get('/asistente/{id?}', 'AsistenteController@index');
Route::post('/nuevo-asistente', 'AsistenteController@store');
Route::post('/actualizar-asistente/{id}', 'AsistenteController@update');
Route::delete('/eliminar-asistente/{id}', 'AsistenteController@destroy');

//Dictados
Route::get('/dictado/{id?}', 'DictadoController@index');
Route::post('/nuevo-dictado', 'DictadoController@store');
Route::post('/actualizar-dictado/{id}', 'DictadoController@update');
Route::delete('/eliminar-dictado/{id}', 'DictadoController@destroy');

//Docentes
Route::get('/docente/{id?}', 'DocenteController@index');
Route::post('/nuevo-docente', 'DocenteController@store');
Route::post('/actualizar-docente/{id}', 'DocenteController@update');
Route::delete('/eliminar-docente/{id}', 'DocenteController@destroy');

//APP
Route::get('/login', 'DocenteController@index');