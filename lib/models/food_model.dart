class FoodModel {
  final String id;
  final String name;
  final String image;
  final int calories;
  final String type;
  final List<String> ingredients;

  FoodModel({
    required this.id,
    required this.name,
    required this.image,
    required this.calories,
    required this.type,
    required this.ingredients,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    List<String> ingredients = List<String>.from(json['ingredients']);

    return FoodModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      calories: json['calories'],
      type: json['type'],
      ingredients: ingredients,
    );
  }

  @override
  String toString() {
    return 'FoodModel{id: $id, name: $name, image: $image, calories: $calories, type: $type, ingredients: $ingredients}';
  }
}
