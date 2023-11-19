import 'dart:io';

class DividersSum {
  final _denominatorOne = 3;
  final _denominatorTwo = 5;

//Method to control the program
  void menu() {
    late String recivedNumber;
    late String exit;

    do {
      print("\nDigite um número inteiro positivo: ");
      recivedNumber = stdin.readLineSync()!;

      try {
        checkNumber(int.parse(recivedNumber));
      } catch (e) {
        print("--Por favor, digite um número--\n");
      }

      print(
          "Para sair digite a letra 's'.\nPara continuar digite qualquer tecla: ");
      exit = stdin.readLineSync()!;
    } while (exit.toLowerCase() != 's');
  }

//Method for processing/treatments
  void checkNumber(int number) {
    int finalSum = 0;

    if (number < 0) {
      print("Por favor, digite um número positivo\n");
    } else if (number <= _denominatorOne) {
      print(
          "Como o número digitado é menor ou igual ao primeiro denomindor ($_denominatorOne), o somatório é 0.\n");
    } else {
      finalSum = divide(number);
      print("O somatório é: $finalSum\n");
    }
  }

//Method to perform divisions and calculate the sum
  int divide(int number) {
    int sum = 0;

    for (int i = number - 1; i >= _denominatorOne; i--) {
      if ((i % _denominatorOne == 0) || (i % _denominatorTwo == 0)) {
        sum += i;
      }
    }
    return sum;
  }
}
