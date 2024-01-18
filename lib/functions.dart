import 'dart:io';
import 'verslanir.dart';

 finnaVoru(String finnaVoru) {
  String? finnaVoru;
  finnaVoru = stdin.readLineSync();
  if(bonus.containsKey(finnaVoru) || kronan.containsKey(finnaVoru)||Hagkaup.containsKey(finnaVoru)){
    print("Bónus");
    print(bonus[finnaVoru]);
    print("Krónan");
    print(kronan[finnaVoru]);
    print("Hagkaup");
    print(Hagkaup[finnaVoru]);
  }
  else{ print("vara finnst ekki");
    return bonus.containsKey(finnaVoru);
}}



  List<String> items = [];

  void addItem(String item) {
    items.add(item);
    print('$item added to the shopping list.');
  }






