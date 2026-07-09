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


}