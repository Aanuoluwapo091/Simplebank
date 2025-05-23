import 'dart:io';

import 'package:dart_application/task1.dart';

void main() {
  print("Welcome to Aanuoluwapo bank");

  while (true) {
    print("Please select any of the following options:");
    print("1 - Check Balance");
    print("2 - Deposit");
    print("3 - Withdraw");
    print("4 - Exit");

    int option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      print("Your account balance is:");
      print(account_balance());
    } else if (option == 2) {
      print("How much do you want to deposit:");
      int amount = int.parse(stdin.readLineSync()!);
      int result = mine(
        amount: amount,
        balance: account_balance(),
      );
      print('New balance: $result');
    } else if (option == 3) {
      print("How much do you want to withdraw:");
      int withdrawAmount = int.parse(stdin.readLineSync()!);
      int withdrawed = withdraw(amount: withdrawAmount, balance: account_balance());
      print('Your withdrawal is succcesful, your new balance is $withdrawed');
    } else if (option == 4) {
      print("Thank you for banking with us. Goodbye!");
      break;
    } else {
      print("Invalid option. Please try again.");
    }
  }
}