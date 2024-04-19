class FoodModel {
  final String id;
  final String nome;
  final int calories;
  final String type;
  final List<String> ingredientes;

  FoodModel({
    required this.id,
    required this.nome,
    required this.calories,
    required this.type,
    required this.ingredientes,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    List<String> ingredientes = List<String>.from(json['ingredientes']);

    return FoodModel(
      id: json['id'],
      nome: json['nome'],
      calories: json['calories'],
      type: json['type'],
      ingredientes: ingredientes,
    );
  }

  @override
  String toString() {
    return 'FoodModel{id: $id, nome: $nome, calories: $calories, type: $type, ingredientes: $ingredientes}';
  }
}
