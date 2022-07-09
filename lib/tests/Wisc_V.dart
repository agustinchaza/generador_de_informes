import 'package:flutter/material.dart';
import 'package:generador_de_informes/tests/test.dart';

import 'calculadoraWiscEscalares/CalculadoraEscalaresWisc_V.dart';



class Wisc_V extends Test{


  //arreglo de 10 enteros
  List<int> puntuacionesDirectas=<int>[15];
  List<int> puntuacionesEscalares=<int>[15];
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

  setDatos(List<int> puntuacionesDirectas){
    this.puntuacionesDirectas=puntuacionesDirectas;
  }


  setEdad(DateTime nacimiento,DateTime fechaEvaluacion){
    edadCronologica=fechaEvaluacion.difference(nacimiento) as DateTime;
  }


  calcularPuntuacionEscalar(){
    calculadoraEscalaresWisc_V calculadora=calculadoraEscalaresWisc_V(puntuacionesDirectas, edadCronologica);
    puntuacionesEscalares=calculadora.calcularPuntuacionesEscalares();
  }


  }



