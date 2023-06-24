class Passenger{
  String firstname;
  String lastname;
  String passportNumber;
  DateTime birthday;

  void firsnameSetter(String firstname){
    this.firstname = firstname;
  }
  Passenger({
    required this.firstname,
    required this.lastname,
    required this.passportNumber,
    required this.birthday,
  });
}