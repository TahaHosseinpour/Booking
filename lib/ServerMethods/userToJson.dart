import 'dart:convert';
import 'package:booking/Database/user.dart';
import 'package:booking/Database/ticket.dart';
import 'package:booking/Database/transaction.dart';

String userToJson(User user) {
  Map<String, dynamic> userMap = {
    'username': user.username,
    'password': user.password,
    'email': user.email,
    'avatarPath': user.avatarPath,
    'phone': user.phone,
    'id': user.id,
    'birthday': user.birthday,
    'walletBalance': user.walletBalance,
    'transactionsList': user.transactionsList.map((transaction) => transactionToJson(transaction)).toList(),
    'ticketsList': user.ticketsList.map((ticket) => ticketToJson(ticket)).toList(),
  };

  return json.encode(userMap);
}

String transactionToJson(Transaction transaction) {
  Map<String, dynamic> transactionMap = {
    'date': transaction.date,
    'type': transaction.type,
    'amount': transaction.amount,
    'id': transaction.id,
  };

  return json.encode(transactionMap);
}

String ticketToJson(Ticket ticket) {
  Map<String, dynamic> ticketMap = {
    'companyName': ticket.companyName,
    'origin': ticket.origin,
    'destination': ticket.destination,
    'departureTime': ticket.departureTime.toString(),
    'arrivalTime': ticket.arrivalTime.toString(),
    'travelTime': ticket.travelTime,
    'cost': ticket.cost,
    'travelClass': ticket.travelClass,
    'id': ticket.id,
  };

  return json.encode(ticketMap);
}
