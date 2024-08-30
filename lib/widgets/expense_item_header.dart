import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpenseItemHeader extends StatelessWidget {
  const ExpenseItemHeader({
    super.key,
    required this.image,
    required this.isSelected,
  });
  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected
                ? Colors.white.withOpacity(.1)
                : const Color(0xffFAFAFA),
          ),
          child: isSelected
              ? SvgPicture.asset(
                  image,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                )
              : SvgPicture.asset(image),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.5707963268 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: isSelected ? Colors.white : Color(0xff064061),
            )),
      ],
    );
  }
}
