import 'package:flutter/material.dart';


import 'calculadorasWisc/CalculadoraEscalaresWisc_V.dart';
import 'calculadorasWisc/CalculadoraCI.dart';


class Wisc_V {


  //arreglo de 10 enteros
  List<int> puntuacionesDirectas=<int>[15];
  List<int> puntuacionesEscalares=<int>[15];
  late DateTime edadCronologica;
  late DateTime fechaEvalaucion;
  late DateTime fechaNacimiento;
  late int comprensionVerval;
  late int visoespacial;
  late int razonamientoFluido;
  late int memoriaDeTrabajo;
  late int velocidadDeProcesamiento;
  late int escalaTotal;


  Wisc_V(this.puntuacionesDirectas,   this.fechaEvalaucion, this.fechaNacimiento);



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

  sumaDeEscalares(){
    comprensionVerval=puntuacionesEscalares[1]+puntuacionesEscalares[5];
    visoespacial=puntuacionesEscalares[0]+puntuacionesEscalares[7];
    razonamientoFluido=puntuacionesEscalares[2]+puntuacionesEscalares[6];
    memoriaDeTrabajo=puntuacionesEscalares[3]+puntuacionesEscalares[8];
    velocidadDeProcesamiento=puntuacionesEscalares[4]+puntuacionesEscalares[9];
    //ESCALA TOTAL= SUMA DE TODOS LOS VALORES DE puntuacionesEscalares

  }

  escalaresACompuestas(){

  }

  int calculoCI(){
    CalculadoraCI calculadora=CalculadoraCI();
    return calculadora.calcularCI(puntuacionesEscalares);
  }

}



