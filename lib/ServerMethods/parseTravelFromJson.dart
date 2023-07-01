import 'package:booking/Database/travel.dart';
import 'package:booking/Database/travel.dart';
import 'dart:convert';

List<Travel> parseTravelFromJson(String jsonString) {
  List<Travel> tickets = [];

  List<String> jsonStrings = jsonString.split(',').map((item) => item.trim()).toList();

  for (String jsonItem in jsonStrings) {
    Map<String, dynamic> jsonTicket = jsonDecode(jsonItem);

    Travel ticket = Travel(
      companyName: jsonTicket['companyName'],
      origin: jsonTicket['origin'],
      destination: jsonTicket['destination'],
      vehicle: jsonTicket['vehicle'],
      remainingPassengers: jsonTicket['remainingPassengers'],
      capacity: jsonTicket['capacity'],
      departureTime: DateTime.parse(jsonTicket['departureTime']),
      arrivalTime: DateTime.parse(jsonTicket['arrivalTime']),
      travelTime: jsonTicket['travelTime'],
      cost: jsonTicket['cost'],
      travelClass: jsonTicket['travelClass'],
      id: jsonTicket['id'],
    );

    tickets.add(ticket);
  }

  return tickets;
}