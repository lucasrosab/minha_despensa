enum CategoryTypes {
  bebidas("Bebidas", "https://cdn-icons-png.flaticon.com/512/1700/1700766.png"),
  cereais("Cereais", "https://cdn-icons-png.flaticon.com/512/2829/2829840.png"),
  paes("Pães", "https://cdn-icons-png.flaticon.com/256/2713/2713563.png");

  const CategoryTypes(this.name, this.url);
  final String name;
  final String url;
}