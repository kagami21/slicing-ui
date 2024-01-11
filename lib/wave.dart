import 'package:flutter/material.dart';

class CurvedWaveApp extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          800,
          (400)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
      

      // CustomPaint(
      //   painter: CurvedWaveClipper(),
      //   size: const Size(80,80),
      //   // child: Container(
      //   //   height: 100,
      //   //   color: Colors.purple,
      //   //   child: Center(
      //   //     child: Text(
      //   //       'Lorem ipsum',
      //   //       style: TextStyle(
      //   //         color: Colors.white,
      //   //         fontSize: 24,
      //   //       ),
      //   //     ),
      //   //   ),
      //   // ),
      // ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.quadraticBezierTo(size.width * 0.3950000, size.height * 0.4440000,
        size.width * 0.7575000, size.height);
    path_0.quadraticBezierTo(size.width * 0.8925000, size.height * 1.2200000,
        size.width, size.height);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 101, 15, 86)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(0, size.height);
    path_1.lineTo(0, size.height * 0.5000000);
    path_1.quadraticBezierTo(size.width * 0.2103125, size.height * 0.4985000,
        size.width * 0.3737500, size.height * 0.7220000);
    path_1.quadraticBezierTo(
        size.width * 0.1753125, size.height * 0.7451000, 0, size.height);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Layer 1

//     Paint paint_fill_0 = Paint()
//       ..color = Colors.purple
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.0001625, size.height * 0.0001400);
//     path_0.lineTo(0, size.height * 0.5000000);
//     path_0.quadraticBezierTo(size.width * 0.3589000, size.height * 0.0345200,
//         size.width * 0.6470125, size.height * 0.3446800);
//     path_0.quadraticBezierTo(size.width * 0.8767750, size.height * 0.5710800,
//         size.width, size.height * 0.5000000);
//     path_0.lineTo(size.width, 0);
//     path_0.lineTo(size.width * 0.0001625, size.height * 0.0001400);
//     path_0.close();

//     canvas.drawPath(path_0, paint_fill_0);

//     // Layer 1

//     Paint paint_stroke_0 = Paint()
//       ..color = const Color.fromARGB(0, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_0, paint_stroke_0);

//     // Layer 1

//     Paint paint_fill_1 = Paint()
//       ..color = const Color.fromARGB(255, 101, 15, 86)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_1 = Path();
//     path_1.moveTo(0, size.height * 0.5000000);
//     path_1.lineTo(size.width * 0.0004125, size.height * 0.1240000);
//     path_1.quadraticBezierTo(size.width * 0.2877875, size.height * 0.0016000,
//         size.width * 0.4211875, size.height * 0.2213600);
//     path_1.quadraticBezierTo(size.width * 0.2090625, size.height * 0.2211000, 0,
//         size.height * 0.5000000);
//     path_1.close();

//     canvas.drawPath(path_1, paint_fill_1);

//     // Layer 1

//     Paint paint_stroke_1 = Paint()
//       ..color = const Color.fromARGB(0, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 0
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_1, paint_stroke_1);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
