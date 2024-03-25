import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutri_fast/core/theme/app_colors.dart';

enum AZButtonTypes { primary, outline }

class Button extends StatelessWidget {
  final double? width;
  final double? height;
  final double? maxHeight;
  final String text;
  final AZButtonTypes? type;
  final Function() onPress;

  const Button({
    super.key,
    required this.text,
    required this.onPress,
    this.type = AZButtonTypes.primary,
    this.width,
    this.height,
    this.maxHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      constraints: BoxConstraints(
        minHeight: height ?? 0.0,
        maxHeight: maxHeight != null ? maxHeight! : double.infinity,
      ),
      child: type == AZButtonTypes.primary
          ? ElevatedButton(
              onPressed: onPress,
              child: Text(
                text,
                style: const TextStyle(
                    color: AppColors.primary, fontWeight: FontWeight.w600),
              ),
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  overlayColor: MaterialStatePropertyAll(AppColors.primary),
                  surfaceTintColor: MaterialStatePropertyAll(Colors.white)),
            )
          : ElevatedButton(
              onPressed: onPress,
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppColors.primary),
                  overlayColor: MaterialStatePropertyAll(Colors.white),
                  surfaceTintColor: MaterialStatePropertyAll(Colors.white),
                  side: MaterialStatePropertyAll(
                      BorderSide(width: 6, color: Colors.white))),
            ),
    );
  }
}
