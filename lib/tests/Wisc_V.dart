import 'package:flutter/material.dart';
import 'package:generador_de_informes/tests/test.dart';



class Wisc_V extends Test{


  //arreglo de 10 enteros
  int puntuacionesDirectas=List.filled(15, null, growable: false) as int;
  int puntuacionesEscalares=List.filled(15, null, growable: false) as int;
  late DateTime edadCronologica;


  @override
   Widget getPantalla() {
    return Center(
      child: Text(
        'Wisc_V',
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Test(){

  }

  setDatos(int puntuacionesDirectas){
    this.puntuacionesDirectas=puntuacionesDirectas;
  }


  setEdad(DateTime nacimiento,DateTime fechaEvaluacion){
    edadCronologica=fechaEvaluacion.difference(nacimiento) as DateTime;
  }


  calcularPuntuacionEscalar(){

  }


  }



