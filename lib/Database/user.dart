class User{
  String username;
  String password;
  String email;
  String avatarPath;
  String phone;
  String id;
  String birthday;
  String walletBalance;
  // List<Transaction> transactionsList;
  // List<Ticket> ticketsList;
  User({
  required this.username,
  required this.password,
  required this.email,
  required this.avatarPath,
  required this.phone,
  required this.id,
  required this.birthday,
  required this.walletBalance
  });
}



List<User> usersList = [
  User(
      username: "Taha223",
      password: "Thoss1010",
      email: "t.hosseinpour2347@gmail.com",
      avatarPath: "assets/images/avatars/Taha223.png",
      phone: "09105860050",
      id: "0200052934",
      birthday: "02.3.16",
      walletBalance: "140"
  ),

  User(
      username: "hossein82",
      password: "Hosseinaa",
      email: "hossein@gmail.com",
      avatarPath: "assets/images/avatars/default_avatar.png",
      phone: "Null",
      id: "Null",
      birthday: "Null",
      walletBalance: "0"
  ),

];

