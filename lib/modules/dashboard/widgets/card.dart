import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_fast/core/routes/app_pages.dart';
import 'package:nutri_fast/models/food_model.dart';

class CardFood extends StatelessWidget {
  final FoodModel item;

  const CardFood({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AppPages.food,
        );
      },
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
        height: 60,
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfP0qpxFeUjAtRt3TGlDhZ4SIOrHRg1sseRKcvFKKbvw&s",
                    // width: MediaQuery.of(context).size.width,
                    height: 60,
                    width: 10,
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
                    height: 5,
                  ),
                  Text(
                    item.nome,
                    // style: ThemeFont.h3.apply(color: ThemeColor.black),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Text(
                      item.type,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      // style: ThemeFont.h5.apply(color: ThemeColor.black),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * .20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color: ThemeColor.purple,
                ),
                child: Center(
                  child: Text(item.calories.toString(),
                      // child: Text('item.value',
                      // style: ThemeFont.h4.apply(color: ThemeColor.greyLight),
                      textAlign: TextAlign.center),
                )),
          ],
        ),
      ),
    );
  }
}
