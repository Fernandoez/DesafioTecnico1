import 'dart:io';

class Utils {
  final _denominatorOne = 3;
  final _denominatorTwo = 5;

  menu() {
    String _recivedNumber;
    String? exit;
    do {
      print("Digite um número inteiro positivo: ");
      _recivedNumber = stdin.readLineSync()!;
      divide(int.parse(_recivedNumber));
      print(
          "Para sair digite a letra 's'.\nPara continuar digite qualquer letra: ");
      exit = stdin.readLineSync();
    } while (exit != 's');
  }

  checkNumber() {}

  divide(int number) {
    int finalSum = 0;
    for (int i = number; i >= 3; i--) {
      if ((i % _denominatorOne == 0) || (i % _denominatorTwo == 0)) {
        finalSum += i;
      }
    }
    return finalSum;
  }
}
