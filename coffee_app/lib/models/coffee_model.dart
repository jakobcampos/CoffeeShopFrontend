class Coffee {
  final String name;
  final String description;
  final double price;

  Coffee({this.name, this.description, this.price});

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      name: json['name'],
      description: json['description'],
      price: json['price'],
    );
  }
}
