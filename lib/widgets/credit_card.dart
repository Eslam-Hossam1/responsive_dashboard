import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(top: 20, left: 31, right: 69 - 24),
              title: Text(
                "Name card",
                style:
                    AppStyles.textStyleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style:
                    AppStyles.textStyleMedium20.copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.textStyleSemiBold24
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.textStyleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
