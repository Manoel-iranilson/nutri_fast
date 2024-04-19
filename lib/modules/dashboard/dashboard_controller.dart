import 'package:get/get.dart';
import 'package:nutri_fast/models/food_model.dart';

import 'package:nutri_fast/repositories/food/food_repository.dart';

class DashboardController extends GetxController {
  final FoodRepository foodRepository;
  DashboardController({
    required this.foodRepository,
  });

  final _totalCalories = 0.obs;
  int get totalCalories => _totalCalories.value;
  final _filter = "".obs;
  get filter => _filter.value;
  set filter(value) => _filter(value);
  final _listfoods = Rxn<List<FoodModel>>();
  List<FoodModel>? get listfoods => _listfoods.value;

  final _loading = true.obs;
  bool get loading => _loading.value;
  set loading(value) => _loading(value);

  @override
  void onInit() {
    super.onInit();
    getfoods();
  }

  void filterValues(int index) {
    if (index == 2) {
      var filterfoods = listfoods!.where((e) => e.type == "Proteina").toList();
      _listfoods(filterfoods);
    }
  }

  getfoods() async {
    try {
      final List<FoodModel>? foods = await foodRepository.getFoods();
      _listfoods(foods);
      if (foods != null) {
        int total = 0;
        for (var food in foods) {
          total += food.calories;
        }
        _totalCalories(total);
      }
    } catch (e) {
      print(e);
    } finally {
      loading = false;
    }
  }
}
