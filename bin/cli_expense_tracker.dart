import 'dart:io';
extension CurrencyFormatter on double{
  String toTaka(){
    return "৳${thia.toStringAsFixed(2)}";
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
  void displayInfo()(int index){
  print ("index. $title \t - ${amount.toTaka()} \t - $catagory");
  }
}

class GeneralExpense extends Expense {
  GeneralExpense (super.title, super.amount) : super("Entertainment");
  @override
  void displayInfo()(int index){
  print ("index. $title \t - ${amount.toTaka()} \t - $catagory");
  }
}

