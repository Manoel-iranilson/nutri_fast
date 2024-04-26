import 'package:get/get.dart';
import 'package:nutri_fast/models/nutritionist_model.dart';
import 'package:nutri_fast/repositories/nutritionist/nutritionist_repository.dart';

class NutritionistController extends GetxController {
  final NutritionistRepository nutritionistRepository;

  NutritionistController({required this.nutritionistRepository});

  final _listNutritionists = Rxn<List<NutritionistModel>>();
  List<NutritionistModel>? get listNutritionists => _listNutritionists.value;
  final _loading = true.obs;
  bool get loading => _loading.value;
  set loading(value) => _loading(value);
  void onInit() {
    super.onInit();
    getNutritionists();
  }

  getNutritionists() async {
    try {
      final List<NutritionistModel>? nutritionists =
          await nutritionistRepository.getNutritionists();
      _listNutritionists(nutritionists);
    } catch (e) {
      print(e);
    } finally {
      loading = false;
    }
  }
}
