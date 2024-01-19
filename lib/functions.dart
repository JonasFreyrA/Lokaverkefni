import 'dart:io';
import 'verslanir.dart';
leitaVoru(String finnaVoru){
// fallið fær streng sem er borin saman við orð /key í map listanum og gefur verð í samræmi við orðið
    if (bonus.containsKey(finnaVoru) || kronan.containsKey(finnaVoru) ||
        Hagkaup.containsKey(finnaVoru)) {
      /*print("Bónus");
      print(bonus[finnaVoru]);
      print("Krónan");
      print(kronan[finnaVoru]);
      print("Hagkaup");
      print(Hagkaup[finnaVoru]);

       */
      print(bonus[finnaVoru]);
    }
    else {
      print("vara finnst ekki");
    }
}


