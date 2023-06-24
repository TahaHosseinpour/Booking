class Company{
  int id;
  String password;
  String vehicle;
  String name;
  String logoPath;
  
  Company({
    required this.id,
    required this.password,
    required this.vehicle,
    required this.name,
    required this.logoPath,
  });
}



List<Company> companiesList = [
  Company(
      id: 1,
      password: "delta1010",
      vehicle: "international",
      name: "Delta",
      logoPath: "assets/images/company/delta.png"
  ),
  Company(
      id: 2,
      password: "flyEmirates1010",
      vehicle: "international",
      name: "Fly Emirates",
      logoPath: "assets/images/company/fly_emirates.png"
  ),
  Company(
      id: 3,
      password: "iberia1010",
      vehicle: "international",
      name: "Iberia",
      logoPath: "assets/images/company/iberia.png"
  ),
  Company(
      id: 4,
      password: "raja1010",
      vehicle: "train",
      name: "Raja",
      logoPath: "assets/images/company/raja.png"
  ),
  Company(
      id: 5,
      password: "ghadir1010",
      vehicle: "bus",
      name: "Ghadir",
      logoPath: "assets/images/company/ghadir.png"
  )
];