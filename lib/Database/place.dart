class Place{
  String title;
  String text;
  String imagePath;

  Place({
    required this.title,
    required this.text,
    required this.imagePath
  });
}

List<Place> placesList = [
  Place(
    title: "Mosque",
      text: "Nasirolmolk Mosque is the most beautiful place in iran ...",
      imagePath: "assets/images/places/nasirolmolk.png"
  ),
  Place(
    title: "Loot Desert",
      text: "Loot Desert is the most beautiful place in iran ...",
      imagePath: "assets/images/places/loot.png"
  ),
  Place(
    title: "Golestan Palace",
      text: "Golestan Palace is the most beautiful place in iran ...",
      imagePath: "assets/images/places/golestan.png"
  ),
  Place(
    title: "Shoshtar",
      text: "Shoshtar is the most beautiful place in iran...",
      imagePath: "assets/images/places/shoshtar.png"
  ),
  Place(
    title: "Ziggurat",
      text: "Ziggurat is the most beautiful place in iran ...",
      imagePath: "assets/images/places/ziggurat.png"
  ),
];