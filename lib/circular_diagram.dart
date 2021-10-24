// import 'package:bloc_testing/utils/ratio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:sleek_circular_slider/sleek_circular_slider.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// import 'constants/colors.dart';

// class PreviousValue extends StatelessWidget {
//   const PreviousValue({
//     Key? key,
//     required this.widthRatio,
//     required this.size,
//     required this.color,
//     required this.value,
//   }) : super(key: key);

//   final double widthRatio;
//   final double size;
//   final Color color;
//   final double value;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size,
//       width: size,
//       child: SfRadialGauge(
//         axes: <RadialAxis>[
//           RadialAxis(
//             startAngle: 270,
//             endAngle: 270,
//             showLabels: false,
//             showTicks: false,
//             minimum: 0,
//             maximum: 100,
//             radiusFactor: 1,
//             axisLineStyle: AxisLineStyle(
//               cornerStyle: CornerStyle.bothCurve,
//               thickness: 0,
//             ),
//             pointers: <GaugePointer>[
//               WidgetPointer(
//                 value: value,
//                 child: Center(
//                   child: Container(
//                     width: 6 * widthRatio,
//                     height: 6 * widthRatio,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Padding(
//                         padding: EdgeInsets.all(1 * widthRatio),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: color,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CircularProgress extends StatelessWidget {
//   CircularProgress({
//     Key? key,
//     required this.progressBarColor,
//     required this.size,
//     this.initialValue = 0,
//     this.child,
//   }) : super(key: key);

//   final Color progressBarColor;
//   final double size;
//   final double initialValue;
//   final Widget Function(double)? child;

//   @override
//   Widget build(BuildContext context) {
//     final double widthRatio = getWidthRatio(context);

//     final sliderWidth = CustomSliderWidths(
//       trackWidth: 0,
//       progressBarWidth: widthRatio * 10,
//       handlerSize: widthRatio * 3,
//     );

//     final CustomSliderColors customColors03 = CustomSliderColors(
//         dotColor: Colors.white.withOpacity(0.8),
//         trackColor: Colors.transparent,
//         progressBarColor: progressBarColor,
//         hideShadow: true);

//     final CircularSliderAppearance sliderAppearence = CircularSliderAppearance(
//       customWidths: sliderWidth,
//       customColors: customColors03,
//       startAngle: 270,
//       angleRange: 360,
//       size: size,
//       animDurationMultiplier: 0.5,
//       animationEnabled: true,
//       infoProperties: InfoProperties(
//         modifier: (double value) => '',
//       ),
//     );

//     return SleekCircularSlider(
//       appearance: sliderAppearence,
//       min: 0,
//       max: 100,
//       initialValue: initialValue,
//       innerWidget: child ?? null,
//     );
//   }
// }

// class CircularProgressBackground extends StatelessWidget {
//   const CircularProgressBackground({
//     Key? key,
//     required this.widthRatio,
//   }) : super(key: key);

//   final double widthRatio;

//   @override
//   Widget build(BuildContext context) {
//     return Neumorphic(
//       style: NeumorphicStyle(
//         boxShape: NeumorphicBoxShape.circle(),
//         shadowLightColorEmboss: Color.fromRGBO(255, 255, 255, 1),
//         color: kNeumorphicWidgetColor,
//         depth: -1,
//       ),
//       child: Container(
//         width: widthRatio * 230,
//         height: widthRatio * 230,
//         child: Center(
//           child: Neumorphic(
//             style: NeumorphicStyle(
//               boxShape: NeumorphicBoxShape.circle(),
//               color: kNeumorphicWidgetColor,
//             ),
//             child: Container(
//               width: widthRatio * 50,
//               height: widthRatio * 50,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
