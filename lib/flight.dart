import 'package:flutter_application_1/company.dart';

class Flight {
  Company? company;
  DateTime? startDate;
  DateTime? endDate;
  String? number;
  num? price;
  int? capacity;

  Flight(this.company, this.startDate, this.endDate, this.number, this.price,
      this.capacity);
}
