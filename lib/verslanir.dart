import 'dart:io';

void main(){
  Map<String, int> bonus = {
    "banani": 100,
    "mjolk": 149,
    "ostur": 1599,
  };
  print(bonus["banani"]);

  String? finnaVoru;
  finnaVoru = stdin.readLineSync();
  if(bonus.containsKey(finnaVoru)){
    print(bonus[finnaVoru]);
  }
  else{ print("vara finnst ekki");
  }}