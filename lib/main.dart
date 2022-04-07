import 'package:flutter_application_1/airport.dart';
import 'package:flutter_application_1/company.dart';
import 'package:flutter_application_1/flight.dart';
import 'package:flutter_application_1/infraero.dart';

void main() {
  // Start
  List<Airport> listAirports = [
    Airport(name: 'Airport 01', city: 'PALMAS', state: 'TOCANTINS'),
    Airport(name: 'Airport 02', city: 'SANTO ANDRÉ', state: 'SÃO PAULO')
  ];
  List<Company> listCompanies = [
    Company(name: 'Company - 01'),
    Company(name: 'Company - 02'),
  ];
  List<Flight> listFlight = [
    Flight(listCompanies[0], DateTime(2022, 2, 10), DateTime(2022, 2, 30), '51',
        222.55, 10),
    Flight(listCompanies[1], DateTime(2022, 3, 10), DateTime(2022, 4, 30), '33',
        888.55, 5)
  ];

  Infraero infraero = Infraero(
      companies: listCompanies, airports: listAirports, flights: listFlight);

  List<Airport> listAirportsByState = infraero.findAirpostByState('PALMAS');
  for (Airport airport in listAirportsByState) {
    print(listAirportsByState.toString());
  }
}
