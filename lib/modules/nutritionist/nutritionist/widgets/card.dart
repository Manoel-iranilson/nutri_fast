import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_fast/core/routes/app_pages.dart';
import 'package:nutri_fast/core/theme/app_colors.dart';
import 'package:nutri_fast/models/food_model.dart';
import 'package:nutri_fast/models/nutritionist_model.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist_pages.dart';

class CardNutri extends StatelessWidget {
  final NutritionistModel item;

  const CardNutri({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(
        //   AppPages.food,arguments: item
        // );
      },
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 30,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, .1),
                blurRadius: 10, // has the effect of softening the shadow
                spreadRadius: 0, // has the effect of extending the shadow
                offset: Offset(
                  0,
                  0,
                ),
              )
            ],
          ),
          height: 80,
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(item.image,
                      // width: MediaQuery.of(context).size.width,
                      height: 80,
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .55 - 64,
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.name,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    Text("${item.specialty}"),
                  ],
                ),
              ),
              Expanded(
                  child: Center(
                child: IconButton(
                    onPressed: () {
                      Get.toNamed(NutritionistPages.detail_nutritionist,
                          arguments: item.id);
                    },
                    icon: Icon(
                      Icons.info,
                      color: AppColors.primary,
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
