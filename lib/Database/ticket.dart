import 'package:booking/Database/company.dart';

class Ticket{
  String companyName;
  String origin;
  String destination;
  DateTime departureTime;
  DateTime arrivalTime;
  String travelTime;
  int cost;
  String travelClass;
  int id;


  Ticket({
    required this.companyName,
    required this.origin,
    required this.destination,
    required this.departureTime,
    required this.arrivalTime,
    required this.travelTime,
    required this.cost,
    required this.travelClass,
    required this.id
  });
}


