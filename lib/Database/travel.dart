import 'package:booking/Database/company.dart';

class Travel{
  String companyName;
  String origin;
  String destination;
  String vehicle;
  int remainingPassengers;
  int capacity;
  DateTime departureTime;
  DateTime arrivalTime;
  String travelTime;
  int cost;
  String travelClass;
  int id;


  Travel({
    required this.companyName,
    required this.origin,
    required this.destination,
    required this.vehicle,
    required this.remainingPassengers,
    required this.capacity,
    required this.departureTime,
    required this.arrivalTime,
    required this.travelTime,
    required this.cost,
    required this.travelClass,
    required this.id
  });
}

//
// List<Travel> travelsList = [
//   Travel(
//     companyName: "Fly Emirates",
//     origin: "Barcelona",
//     destination: "London",
//     remainingPassengers: 150,
//     departureTime: DateTime(2023,11,10,11,40),
//     arrivalTime:DateTime(2023,11,10,13,55),
//     travelTime: "2h 15min",
//     cost: 15,
//     travelClass: "Economy Class",
//     id: 1
//   ),
//   Travel(
//       companyName: "Iberia",
//       origin: "Seoul",
//       destination: "New York",
//       remainingPassengers: 70,
//       departureTime: DateTime(2023,11,11,19,00),
//       arrivalTime:DateTime(2023,11,11,23,15),
//       travelTime: "4h 15min",
//       cost: 40,
//       travelClass: "First Class",
//       id: 2
//   ),
//   Travel(
//       companyName: "Delta",
//       origin: "Barcelona",
//       destination: "London",
//       remainingPassengers: 300,
//       departureTime: DateTime(2023,11,10,5,20),
//       arrivalTime:DateTime(2023,11,10,11,30),
//       travelTime: "5h 10min",
//       cost: 60,
//       travelClass: "Business Class",
//       id: 3
//   ),
//   Travel(
//       companyName: "Raja",
//       origin: "Barcelona",
//       destination: "Paris",
//       remainingPassengers: 40,
//       departureTime: DateTime(2023,11,13,11,40),
//       arrivalTime:DateTime(2023,11,13,13,55),
//       travelTime: "2h 15min",
//       cost: 90,
//       travelClass: "Economy Class",
//       id: 4
//   ),
//   Travel(
//       companyName: "Ghadir",
//       origin: "Sydney",
//       destination: "Tokyo",
//       remainingPassengers: 18,
//       departureTime: DateTime(2023,11,13,11,40),
//       arrivalTime:DateTime(2023,11,13,13,55),
//       travelTime: "2h 15min",
//       cost: 3,
//       travelClass: "Economy Class",
//       id: 5
//   ),
// ];