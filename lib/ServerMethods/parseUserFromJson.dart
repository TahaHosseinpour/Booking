import 'package:booking/Database/user.dart';
import 'package:booking/Database/transaction.dart';
import 'package:booking/Database/ticket.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


User parseUserFromJson(String jsonString) {
  final Map<String, dynamic> userMap = jsonDecode(jsonString);


  // Extract values from the map
  final String username = userMap['username'];
  if(username == "null"){
    return usersList.first;
  }else{
    final String password = userMap['password'];
    final String email = userMap['email'];
    final String avatarPath = userMap['avatarPath'];
    final String phone = userMap['phone'];
    final String id = userMap['id'];
    final String birthday = userMap['birthday'];
    final String walletBalance = userMap['walletBalance'];

    final Map<String, dynamic> transactionsMap = userMap['transactionsList'];
    final List<Transaction> transactionsList = [];
    transactionsMap.forEach((key, value) {
      final String date = value['date'];
      final String type = value['type'];
      final int amount = value['amount'];
      final String transactionId = value['id'];
      transactionsList.add(Transaction(date:date, type : type, amount :amount,id: transactionId));
    });

    final Map<String, dynamic> ticketsMap = userMap['ticketsList'];
    final List<Ticket> ticketsList = [];
    ticketsMap.forEach((key, value) {
      final String companyName = value['companyName'];
      final String origin = value['origin'];
      final String destination = value['destination'];
      final String departureTime = value['departureTime'];
      final String arrivalTime = value['arrivalTime'];
      final String travelTime = value['travelTime'];
      final int cost = value['cost'];
      final String travelClass = value['travelClass'];
      final int ticketId = value['id'];
      ticketsList.add(Ticket(
          companyName : companyName,
          origin : origin,
          destination : destination,
          departureTime : DateFormat("yyyy-MM-dd HH:mm:ss.SSS").parse(departureTime),
          arrivalTime : DateFormat("yyyy-MM-dd HH:mm:ss.SSS").parse(arrivalTime),
          travelTime : travelTime,
          cost : cost,
          travelClass : travelClass,
          id : ticketId
      ));
    });

    return User(username : username, password : password, email : email, avatarPath : avatarPath, phone : phone, id : id, birthday : birthday,
        walletBalance : walletBalance, transactionsList : transactionsList, ticketsList: ticketsList);
  }
}