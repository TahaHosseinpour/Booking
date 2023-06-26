import 'package:booking/Database/ticket.dart';
import 'package:booking/Database/transaction.dart';

class User{

  String username;
  String password;
  String email;
  String avatarPath;
  String phone;
  String id;
  String birthday;
  String walletBalance;
  List<Transaction> transactionsList;
  List<Ticket> ticketsList;

  User({
    required this.username,
    required this.password,
    required this.email,
    required this.avatarPath,
    required this.phone,
    required this.id,
    required this.birthday,
    required this.walletBalance,
    required this.transactionsList,
    required this.ticketsList
  });
}



List<User> usersList = [
  User(
      username: "Taha5423",
      password: "Thoss1010",
      email: "t.hosseinpour2347@gmail.com",
      avatarPath: "assets/images/avatars/Taha223.png",
      phone: "09105860050",
      id: "0200052934",
      birthday: "02.3.16",
      walletBalance: "140",
      transactionsList:  [
        Transaction(id: "784676", date: "22.14.07",amount: 40,type: "Buy",),
        Transaction(id: "764643", date: "22.14.07",amount: 340,type: "Buy",),
        Transaction(id: "02865443", date: "22.14.07",amount: 98,type: "Income",),
        Transaction(id: "0342343", date: "22.13.07",amount: 340,type: "Buy",),
        Transaction(id: "3478655", date: "22.14.02",amount: 26,type: "Income",),
        Transaction(id: "0783562", date: "22.14.06",amount: 76,type: "Income",),
        Transaction(id: "6856865", date: "22.14.08",amount: 240,type: "Buy",),
        Transaction(id: "2456788", date: "22.14.07",amount: 340,type: "Income",),
        Transaction(id: "678467", date: "22.15.07",amount: 20,type: "Buy",),
        Transaction(id: "345737", date: "22.13.09",amount: 340,type: "Income",),
        Transaction(id: "05747", date: "22.14.07",amount: 340,type: "Income",),
      ],
    ticketsList: [
      Ticket(
          companyName: "Fly Emirates",
          origin: "Barcelona",
          destination: "London",
          departureTime: DateTime(2023,11,10,11,40),
          arrivalTime:DateTime(2023,11,10,13,55),
          travelTime: "2h 15min",
          cost: 15,
          travelClass: "Economy Class",
          id: 1
      ),
      Ticket(
          companyName: "Iberia",
          origin: "Seoul",
          destination: "New York",
          departureTime: DateTime(2023,11,11,19,00),
          arrivalTime:DateTime(2023,11,11,23,15),
          travelTime: "4h 15min",
          cost: 40,
          travelClass: "First Class",
          id: 2
      ),
      Ticket(
          companyName: "Delta",
          origin: "Barcelona",
          destination: "London",
          departureTime: DateTime(2023,11,10,5,20),
          arrivalTime:DateTime(2023,11,10,11,30),
          travelTime: "5h 10min",
          cost: 60,
          travelClass: "Business Class",
          id: 3
      ),
      Ticket(
          companyName: "Raja",
          origin: "Barcelona",
          destination: "Paris",
          departureTime: DateTime(2023,11,13,11,40),
          arrivalTime:DateTime(2023,11,13,13,55),
          travelTime: "2h 15min",
          cost: 90,
          travelClass: "Economy Class",
          id: 4
      ),
      Ticket(
          companyName: "Ghadir",
          origin: "Sydney",
          destination: "Tokyo",
          departureTime: DateTime(2023,11,13,11,40),
          arrivalTime:DateTime(2023,11,13,13,55),
          travelTime: "2h 15min",
          cost: 3,
          travelClass: "Economy Class",
          id: 5
      ),
    ]
  ),

  User(
      username: "hossein82",
      password: "Hosseinaa",
      email: "hossein@gmail.com",
      avatarPath: "assets/images/avatars/default_avatar.png",
      phone: "Null",
      id: "Null",
      birthday: "Null",
      walletBalance: "0",
      transactionsList: [
        Transaction(id: "784676", date: "22.14.07",amount: 40,type: "Buy",),
        Transaction(id: "764643", date: "22.14.07",amount: 340,type: "Buy",),
        Transaction(id: "02865443", date: "22.14.07",amount: 98,type: "Income",),
        Transaction(id: "0342343", date: "22.13.07",amount: 340,type: "Buy",),
        Transaction(id: "3478655", date: "22.14.02",amount: 26,type: "Income",),
        Transaction(id: "0783562", date: "22.14.06",amount: 76,type: "Income",),
        Transaction(id: "6856865", date: "22.14.08",amount: 240,type: "Buy",),
        Transaction(id: "2456788", date: "22.14.07",amount: 340,type: "Income",),
        Transaction(id: "678467", date: "22.15.07",amount: 20,type: "Buy",),
        Transaction(id: "345737", date: "22.13.09",amount: 340,type: "Income",),
        Transaction(id: "05747", date: "22.14.07",amount: 340,type: "Income",),
      ],
      ticketsList: [

        Ticket(
            companyName: "Iberia",
            origin: "Seoul",
            destination: "New York",
            departureTime: DateTime(2023,11,11,19,00),
            arrivalTime:DateTime(2023,11,11,23,15),
            travelTime: "4h 15min",
            cost: 40,
            travelClass: "First Class",
            id: 2
        ),
        Ticket(
            companyName: "Delta",
            origin: "Barcelona",
            destination: "London",
            departureTime: DateTime(2023,11,10,5,20),
            arrivalTime:DateTime(2023,11,10,11,30),
            travelTime: "5h 10min",
            cost: 60,
            travelClass: "Business Class",
            id: 3
        ),
        Ticket(
            companyName: "Raja",
            origin: "Barcelona",
            destination: "Paris",
            departureTime: DateTime(2023,11,13,11,40),
            arrivalTime:DateTime(2023,11,13,13,55),
            travelTime: "2h 15min",
            cost: 90,
            travelClass: "Economy Class",
            id: 4
        ),

      ]
  ),

];

