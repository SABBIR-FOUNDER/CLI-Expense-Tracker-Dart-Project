import 'dart:io';
extension CurrencyFormatter on double{
  String toTaka(){
    return "৳${this.toStringAsFixed(2)}";
  }
}

abstract class Expense {
  final String _title;
  final double _amount;
  final String _catagory;

  Expense(this._title, this._amount, this._catagory);

  String get title =>_title;
  double get amount=>_amount;
  String get catagory=> _catagory;

  void displayInfo(int index);
}

class FoodExpense extends Expense {
  FoodExpense(super.title, super.amount): super("Food");

  @override
  void displayInfo(int index){
    print("$index. $title \t - ${amount.toTaka()}  \t - $catagory");
  }
}

class TransportExpense extends Expense {
  TransportExpense (super.title, super.amount): super("Transport");

  @override
  void displayInfo(int index){
    print("$index. $title \t - ${amount.toTaka()}  \t - $catagory");
  }
}

class EntertainmentExpense extends Expense {
  EntertainmentExpense (super.title, super.amount) : super("Entertainment");

  @override
  void displayInfo(int index){
  print ("$index. $title \t - ${amount.toTaka()} \t - $catagory");
  }
}

class GeneralExpense extends Expense {
  GeneralExpense (super.title, super.amount) : super("Entertainment");
  @override
  void displayInfo()(int index){
  print ("index. $title \t - ${amount.toTaka()} \t - $catagory");
  }
}

void main(){
  List<Expense> expenseTracker=[];

  while (true) {
    print("\n===== Expense Tracker =====");
    print("1. Add Expense");
    print("2. View All Expenses");
    print("3. Show Total Expenses");
    print("4. Exit");
stdout.write("Choose Option: ");

String? choice= stdin.readLineSync();

if (choice ==1) {
  addexpense(expenseTracker);}

else if (choice == "2"){
  ViewAllExpenses(expenseTracker);}

else if (choice == "3") {
  showTotalExpenses(expenseTracker);}

else if (choice == "4") {
  print("Thank you for using Expense Tracker!");}

else { print("Invalid Option. Please choose between 1 and 4.");}
 }
}
void addExpense(List<Expense> list) {
  stdout.write("\nEnter Expense Title: ");
  String title = stdin.readLineSync() ?? "Untitled";

  stdout.write("Enter Expense Amount: ");
  double amount = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  stdout.write("Enter Category (Food/Transport/Entertainment): ");
  String categoryInput = stdin.readLineSync() ?? "General";

  Expense finalExpense;

  void addExpense(List<Expense> list) {
    stdout.write("\nEnter Expense Title: ");
    String title = stdin.readLineSync() ?? "Untitled";

    stdout.write("Enter Expense Amount: ");
    double amount = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;
    stdout.write("Enter Category (Food/Transport/Entertainment): ");
    String categoryInput = stdin.readLineSync() ?? "General";
    Expense finalExpense;


    switch (categoryInput.trim().toLowerCase()) {
      case 'food':
        finalExpense = FoodExpense(title, amount);

      case 'transport':
        finalExpense = TransportExpense(title, amount);

      case 'entertainment':
        finalExpense = EntertainmentExpense(title, amount);

      default:
        finalExpense = GeneralExpense(title, amount, categoryInput);
    }

    list.add(finalExpense);
    print("Expense Added Successfully!");
  }

  void viewAllExpenses(List<Expense> list) {
    if (list.isEmpty) {
      print("\nNo expenses logged yet.");
      return;
    }


    print("\n===== All Expenses =====");
    for (int i = 0; i < list.length; i++) {
      list[i].displayInfo(i + 1);
    }
  }

  void showTotalExpenses(List<Expense> list) {
    double total = 0.0;

    for (var expense in list) {
      total += expense.amount;}


    print("Total Expenses: ${total.toTaka()}");
  }
