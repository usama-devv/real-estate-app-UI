class House {
  final String image;
  final String price;
  final String name;
  final String place;
  final String beds;
  final String baths;
  final String size;
  final String description;

  House({
    required this.image,
    required this.price,
    required this.name,
    required this.place,
    required this.beds,
    required this.baths,
    required this.size,
    required this.description,
  });
}

List<House> realEstateModel = [
  House(
    image: "assets/images/whitespace.png",
    price: "1199",
    name: "Whitespace House",
    place: "Melbourne, Australia",
    beds: "4",
    baths: "6",
    size: "500",
    description: description,
  ),
  House(
    image: "assets/images/best villa.jpeg",
    price: "199900",
    name: "Best Villa",
    place: "New York, America",
    beds: "25",
    baths: "30",
    size: "50000",
    description: description,
  ),
  House(
    image: "assets/images/cyprus villa.jpeg",
    price: "11990",
    name: "Cyprus Villa",
    place: "Melbourne, Australia",
    beds: "40",
    baths: "60",
    size: "5000",
    description: description,
  ),
  House(
    image: "assets/images/dimim villa.webp",
    price: "11987",
    name: "Dimim Villa",
    place: "Melbourne, Australia",
    beds: "23",
    baths: "8",
    size: "500",
    description: description,
  ),
  House(
    image: "assets/images/smart villa.jpg",
    price: "1176",
    name: "Smart Villa",
    place: "Melbourne, Australia",
    beds: "4",
    baths: "6",
    size: "500",
    description: description,
  ),
  House(
    image: "assets/images/turkey villa.webp",
    price: "1199",
    name: "Turkey Villa",
    place: "Melbourne, Australia",
    beds: "4",
    baths: "6",
    size: "500",
    description: description,
  ),
];

String description = """
A "whitespace house" is a modern architectural design that emphasizes simplicity, minimalism, and the use of clean, open spaces. These houses often feature large, unobstructed areas with an emphasis on natural light, neutral color palettes (especially whites), and minimal decoration. The design promotes a sense of calm and clarity, with sleek lines, functional layouts, and an overall uncluttered aesthetic.

Materials such as glass, concrete, and natural wood are commonly used to enhance the openness and create a seamless connection between indoor and outdoor spaces. Whitespace houses are often designed to encourage mindful living and provide a tranquil environment.
""";
