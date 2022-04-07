import 'package:flutter_application_1/airport.dart';
import 'package:flutter_application_1/company.dart';
import 'package:flutter_application_1/flight.dart';

class Infraero {
  List<Company> companies;
  List<Airport> airports;
  List<Flight> flights;

  Infraero(
      {required this.companies, required this.airports, required this.flights});

  List<Airport> findAirpostByState(String state) {
    return airports.where((item) => item.state.contains(state)).toList();
  }
}
