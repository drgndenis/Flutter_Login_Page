import 'package:flutter/material.dart';
import 'package:flutter_login_page/widgets/paddings.dart';
import '../login_page.dart';
import 'colors.dart';

// --------- Elevated Button ---------
class SpecialButton extends StatelessWidget {
  const SpecialButton({
    Key? key,
    required this.textData,
  }) : super(key: key);

  final String textData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: ProjectColors().mineShaft,
        shape: RoundedRectangleBorder(
            borderRadius: ProjectBorders().circularBorder),
      ),
      child: Padding(
        padding: ProjectPaddings().textPadding,
        child: Text(
          textData,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: ProjectColors().concrete),
        ),
      ),
    );
  }
}
