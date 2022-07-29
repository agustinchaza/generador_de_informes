import 'dart:collection';

class CalculadoraCI {


  CalculadoraCI();


  int calcularCI(List<int> puntuacionesEscalares) {
    int CI = 0;
    bool SeSustituyo = false;
    bool prorratear = false;
    for (int i = 0; i < 6; i++) {
      if(puntuacionesEscalares[i]!=0){
        CI += puntuacionesEscalares[i];
      }
      else if(!SeSustituyo){
        try{
          CI+=Sustituir(i, puntuacionesEscalares);
          SeSustituyo=true;     //solo se puede sustituir una vez
        }catch(e){
          prorratear=true;      //si no se puede sustituir, se prorratea
        }
      }
      else{
        return -1;
      }
    }

    if(prorratear){
      try{
      CI=Prorratear(CI);}
      catch(e){
        return -1;
      }
    }


    return CI;
  }




  int Sustituir(int i, List<int>tabla) {   //i es la posicion de la puntuacion a sustituir


      if(i==0){
        if(tabla[7]!=0){
          return tabla[7];
        }
      }

      if(i==1){
        if(tabla[10]!=0){
          return tabla[10];
        }
        if(tabla[13]!=0){
          return tabla[13];
        }
      }

      if(i==3){
        if(tabla[8]!=0){
          return tabla[8];
        }
        if(tabla[11]!=0){
          return tabla[11];
        }
      }

      if(i==4){
        if(tabla[9]!=0){
          return tabla[9];
        }
      }


      if(i==5){
        if(tabla[10]!=0){
          return tabla[10];
        }
        if(tabla[13]!=0){
          return tabla[13];
        }
      }

      if(i==6){
        if(tabla[14]!=0){
          return tabla[14];
        }
      }

      throw ArgumentError("No se puede sustituir");
  }

  int Prorratear(int CI){   //COMPLETAR
    //nuevo Hashapa de puntuaciones
    Map<int, int> puntuaciones= {
      6: 7,
      7: 8,
      8: 9,
      9: 11,
      10: 12,
      11: 13,
      12: 14,
      13: 15,
      14: 16,
      15: 18,
      16: 19,
      17: 20,
      18: 21,
      19: 22,
      20: 23,
      21: 25,
      22: 26,
      23: 27,
      24: 28,
      25: 29,
      26: 30,
      27: 32,
      28: 33,
      29: 34,
      30: 35,
      31: 36,
      32: 37,
      33: 39,
      34: 40,
      35: 41,
      36: 42,
      37: 44,
      38: 44,
      39: 46,
      40: 47,
      41: 48,
      42: 49,
      43: 50,
      44: 51,
      45: 53,
      46: 54,
      47: 55,
      48: 56,
      49: 57,
      50: 58,
      51: 60,
      52: 61,
      53: 62,
      54: 63,
      55: 64,
      56: 65,
      57: 67,
      58: 68,
      59: 69,
      60: 70,
      61: 71,
      62: 72,
      63: 74,
      64: 75,
      65: 76,
      66: 77,
      67: 78,
      68: 79,
      69: 81,
      70: 82,
      71: 83,
      72: 84,
      73: 85,
      74: 86,
      75: 88,
      76: 89,
      77: 90,
      78: 91,
      79: 92,
      80: 93,
      81: 95,
      82: 96,
      83: 97,
      84: 98,
      85: 99,
      86: 100,
      87: 102,
      88: 103,
      89: 104,
      90: 105,
      91: 106,
      92: 107,
      93: 109,
      94: 110,
      95: 111,
      96: 112,
      97: 113,
      98: 115,
      99: 116,
      100: 117,
      101: 118,
      102: 119,
      103: 121,
      104: 122,
      105: 123,
      106: 124,
      107: 125,
      108: 126,
      109: 128,
      110: 129,
      111: 130,
      112: 131,
      113: 132,
      114: 134,


    };
    //obtener valor de la puntuacion key CI
    int? valorCI=puntuaciones[CI];
    if(valorCI==null){
      throw ArgumentError("No se puede prorratear");
    }
    return valorCI.toInt();
  }

}