import 'package:bloc_testing/utils/ratio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.iconAsset,
    this.borderRadius,
    this.subtext,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final String? iconAsset;
  final double? borderRadius;
  final String? subtext;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //FocusScope.of(context).unfocus();
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size.height / kMockupHeight * 60,
        width: size.width / kMockupWidth * 335,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(borderRadius ?? 100.0)),
          color: kNeumorphicWidgetColor,
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(225, 226, 232, 1),
                offset: Offset(3, 6),
                spreadRadius: 0,
                blurRadius: 10),
            BoxShadow(
                color: Color.fromRGBO(225, 226, 232, 1),
                offset: Offset(5, 10),
                spreadRadius: 2,
                blurRadius: 10),
            BoxShadow(
                color: Colors.white,
                spreadRadius: 0.0,
                blurRadius: 20,
                offset: Offset(-5.0, -5.0)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(borderRadius ?? 100.0)),
              color: Color.fromRGBO(174, 174, 192, 0.4),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(255, 255, 255, 0.02),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius ?? 100.0)),
                  color: kNeumorphicWidgetColor,
                ),
                child: Center(
                  child: iconAsset == null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              text,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              subtext ?? '',
                              style: TextStyle(
                                  color: Color(0xFF9FABBF), fontSize: 15),
                            )
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width / kMockupWidth * 10,
                            ),
                            Text(
                              text,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NeumoButtonBig extends StatelessWidget {
  NeumoButtonBig({this.iconImg, this.area, this.widget});

  final String? iconImg;
  final double? area;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          lightSource: LightSource.top,
          depth: 4,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: Container(
          height: area ?? 36,
          width: area ?? 36,
          decoration: BoxDecoration(
            color: Colors.white,
            //Color(0xFFF0F0F3)
            //kNeumorphicWidgetColor,
          ),
          child: Center(
              child: Container(
            height: 36,
            width: 36,
            child: Center(
              child: widget ??
                  Image.asset(
                    'assets/icons/iconbar/$iconImg',
                  ),
            ),
          )),
        ),
      ),
    );
  }
}

class NeumoButton extends StatelessWidget {
  NeumoButton({
    required this.iconImg,
    this.area,
    this.press,
  });

  final String iconImg;
  final double? area;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: press,
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          depth: 4,
          lightSource: LightSource.top,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: Container(
          height: area ?? 36,
          width: area ?? 36,
          decoration: BoxDecoration(color: Colors.white
              //Color(0xFFF4F4F6)
              //kNeumorphicWidgetColor,
              ),
          child: Center(),
        ),
      ),
    );
  }
}
