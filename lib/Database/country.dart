class Country{
  String fullName;
  String shortName;
  
  Country({
    required this.fullName,
    required this.shortName,
  });
}

List<Country> countriesList = [
  Country(fullName: "London", shortName: "LCY"),
  Country(fullName: "New York", shortName: "NYC"),
  Country(fullName: "Tokyo", shortName: "TYO"),
  Country(fullName: "Seoul", shortName: "SEL"),
  Country(fullName: "Barcelona", shortName: "BCN"),
  Country(fullName: "Sydney", shortName: "SYD"),
  Country(fullName: "Paris", shortName: "PAR"),
];

