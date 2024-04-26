import 'package:get/get.dart';
import 'package:nutri_fast/models/nutritionist_model.dart';
import 'package:nutri_fast/repositories/nutritionist/nutritionist_repository.dart';

class DetailNutritionistController extends GetxController {
  final NutritionistRepository nutritionistRepository;

  DetailNutritionistController({required this.nutritionistRepository});

  final _nutritionist = Rxn<NutritionistModel>();
  NutritionistModel? get nutritionist => _nutritionist.value;

  final _loading = true.obs;
  bool get loading => _loading.value;
  set loading(value) => _loading(value);

  @override
  void onInit() {
    getNutritionist(Get.arguments);
    super.onInit();
  }

  getNutritionist(String id) async {
    try {
      final NutritionistModel nutritionist =
          await nutritionistRepository.getNutritionist(id);
      _nutritionist(nutritionist);
    } catch (e) {
      print(e);
    } finally {
      loading = false;
    }
  }
}
