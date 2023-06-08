import 'package:booking/Database/company.dart';

class Travel{
  String companyName;
  String origin;
  String destination;
  int remainingPassengers;
  DateTime date;

  Travel({
    required this.companyName,
    required this.origin,
    required this.destination,
    required this.remainingPassengers,
    required this.date
  });
}


List<Travel> travelsList = [
  Travel(
      companyName: "Fly Emirates",
      origin: "Barcelona",
      destination: "London",
      remainingPassengers: 150,
      date: DateTime.utc(2023 , 11 ,9),
  ),
  Travel(
      companyName: "Iberia",
      origin: "Seoul",
      destination: "New York",
      remainingPassengers: 70,
      date: DateTime.utc(2023, 11,10),
  ),
  Travel(
      companyName: "Delta",
      origin: "Barcelona",
      destination: "London",
      remainingPassengers: 300,
      date: DateTime.utc(2023,11,9),
  ),
  Travel(
      companyName: "Raja",
      origin: "Barcelona",
      destination: "Paris",
      remainingPassengers: 40,
      date: DateTime.utc(2023,11,12),
  ),
  Travel(
      companyName: "Ghadir",
      origin: "Sydney",
      destination: "Tokyo",
      remainingPassengers: 18,
      date: DateTime.utc(2023,11,12),
  ),
];