import 'package:flutter/material.dart';
import '../widgets/colored_circle.dart';
import '../widgets/drawer_item.dart';
import 'package:sizer/sizer.dart';
import '../utils/constants.dart';
import '../utils/file_manager.dart' as file;

class DrawerScreen extends StatelessWidget {
  final Function(Color) colorChanged;
  const DrawerScreen({required this.colorChanged});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 6.w, right: 6.w, bottom: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DrawerItem(
                title: kDrawerTitleFirstText,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColoredCircle(
                      color: kMainGreenColor,
                      onPressed: (color) {
                        file.saveTheme(color: "green");
                        colorChanged(color);
                      },
                    ),
                    ColoredCircle(
                      color: kMainBlueColor,
                      onPressed: (color) {
                        file.saveTheme(color: "blue");
                        colorChanged(color);
                      },
                    ),
                    ColoredCircle(
                      color: kMainOrangeColor,
                      onPressed: (color) {
                        file.saveTheme(color: "orange");
                        colorChanged(color);
                      },
                    ),
                    ColoredCircle(
                      color: kMainPinkColor,
                      onPressed: (color) {
                        file.saveTheme(color: "pink");
                        colorChanged(color);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              DrawerItem(
                  title: kDrawerTitleThirdText,
                  desc: kDrawerDependenciesDescText),
            ],
          ),
        ),
      ),
    );
  }
}
