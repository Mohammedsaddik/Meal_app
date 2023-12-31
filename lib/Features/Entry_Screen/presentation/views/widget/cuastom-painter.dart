import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  late Color backgroundColor;
  RPSCustomPainter(this.backgroundColor);
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    Path path_0 = Path();
    path_0.moveTo(0.065, 203.082);
    path_0.lineTo(0.131, 406.164);
    path_0.lineTo(1.282, 408.525);
    path_0.cubicTo(3.57, 413.22, 8.159, 416.784, 14.033, 418.429);
    path_0.lineTo(16.131, 419.016);
    path_0.lineTo(56.647, 419.087);
    path_0.cubicTo(96.46, 419.156, 97.19, 419.148, 98.704, 418.637);
    path_0.cubicTo(102.23, 417.446, 105.295, 415.175, 107.45, 412.154);
    path_0.cubicTo(109.625, 409.106, 110.241, 407.125, 111.351, 399.607);
    path_0.cubicTo(112.617, 391.031, 116.827, 377.992, 121.047, 369.577);
    path_0.cubicTo(148.816, 314.208, 217.834, 302.093, 260.62, 345.078);
    path_0.cubicTo(274.706, 359.231, 286.245, 382.224, 288.642, 400.918);
    path_0.cubicTo(289.811, 410.031, 293.419, 415.445, 300.197, 418.255);
    path_0.lineTo(302.033, 419.016);
    path_0.lineTo(343.082, 419.016);
    path_0.lineTo(384.131, 419.016);
    path_0.lineTo(386.439, 418.292);
    path_0.cubicTo(392.818, 416.292, 396.604, 413.204, 399.083, 407.98);
    path_0.lineTo(400, 406.048);
    path_0.lineTo(400, 203.024);
    path_0.lineTo(400, 0);
    path_0.lineTo(199.999, 0);
    path_0.lineTo(-0.001, 0);
    path_0.lineTo(0.065, 203.082);

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = backgroundColor;
    canvas.drawPath(path_0, paint0fill);

    Path path_1 = Path();
    path_1.moveTo(194.289, 319.402);
    path_1.cubicTo(194.755, 319.46, 195.581, 319.461, 196.125, 319.405);
    path_1.cubicTo(196.669, 319.348, 196.289, 319.3, 195.279, 319.299);
    path_1.cubicTo(194.269, 319.298, 193.824, 319.344, 194.289, 319.402);
    path_1.moveTo(202.945, 319.402);
    path_1.cubicTo(203.411, 319.46, 204.237, 319.461, 204.781, 319.405);
    path_1.cubicTo(205.325, 319.348, 204.944, 319.3, 203.934, 319.299);
    path_1.cubicTo(202.925, 319.298, 202.479, 319.344, 202.945, 319.402);
    path_1.moveTo(191.151, 319.661);
    path_1.cubicTo(191.477, 319.724, 191.949, 319.721, 192.2, 319.656);
    path_1.cubicTo(192.451, 319.59, 192.184, 319.539, 191.607, 319.542);
    path_1.cubicTo(191.03, 319.544, 190.824, 319.598, 191.151, 319.661);
    path_1.moveTo(207.151, 319.661);
    path_1.cubicTo(207.477, 319.724, 207.949, 319.721, 208.2, 319.656);
    path_1.cubicTo(208.451, 319.59, 208.184, 319.539, 207.607, 319.542);
    path_1.cubicTo(207.03, 319.544, 206.824, 319.598, 207.151, 319.661);
    path_1.moveTo(188.656, 319.919);
    path_1.cubicTo(188.908, 319.984, 189.321, 319.984, 189.574, 319.919);
    path_1.cubicTo(189.826, 319.853, 189.62, 319.799, 189.115, 319.799);
    path_1.cubicTo(188.61, 319.799, 188.403, 319.853, 188.656, 319.919);
    path_1.moveTo(209.639, 319.919);
    path_1.cubicTo(209.892, 319.984, 210.305, 319.984, 210.557, 319.919);
    path_1.cubicTo(210.81, 319.853, 210.603, 319.799, 210.098, 319.799);
    path_1.cubicTo(209.593, 319.799, 209.387, 319.853, 209.639, 319.919);
    path_1.moveTo(164.197, 326.951);
    path_1.cubicTo(163.836, 327.157, 163.659, 327.326, 163.803, 327.326);
    path_1.cubicTo(163.948, 327.326, 164.361, 327.157, 164.721, 326.951);
    path_1.cubicTo(165.082, 326.745, 165.259, 326.576, 165.115, 326.576);
    path_1.cubicTo(164.97, 326.576, 164.557, 326.745, 164.197, 326.951);
    path_1.moveTo(234.492, 326.951);
    path_1.cubicTo(234.852, 327.157, 235.266, 327.326, 235.41, 327.326);
    path_1.cubicTo(235.554, 327.326, 235.377, 327.157, 235.016, 326.951);
    path_1.cubicTo(234.656, 326.745, 234.243, 326.576, 234.098, 326.576);
    path_1.cubicTo(233.954, 326.576, 234.131, 326.745, 234.492, 326.951);
    path_1.moveTo(159.41, 329.33);
    path_1.cubicTo(158.429, 329.862, 158.489, 330.084, 159.475, 329.574);
    path_1.cubicTo(159.908, 329.35, 160.262, 329.111, 160.262, 329.042);
    path_1.cubicTo(160.262, 328.874, 160.234, 328.883, 159.41, 329.33);
    path_1.moveTo(238.951, 329.036);
    path_1.cubicTo(238.951, 329.108, 239.305, 329.35, 239.738, 329.574);
    path_1.cubicTo(240.17, 329.798, 240.525, 329.922, 240.525, 329.85);
    path_1.cubicTo(240.525, 329.777, 240.17, 329.535, 239.738, 329.311);
    path_1.cubicTo(239.305, 329.088, 238.951, 328.964, 238.951, 329.036);
    path_1.moveTo(148.262, 336.541);
    path_1.cubicTo(147.505, 337.122, 146.885, 337.655, 146.885, 337.725);
    path_1.cubicTo(146.885, 337.796, 147.534, 337.363, 148.328, 336.764);
    path_1.cubicTo(149.581, 335.818, 149.961, 335.463, 149.705, 335.48);
    path_1.cubicTo(149.669, 335.482, 149.02, 335.96, 148.262, 336.541);
    path_1.moveTo(249.443, 335.559);
    path_1.cubicTo(249.443, 335.623, 250.121, 336.184, 250.951, 336.806);
    path_1.cubicTo(251.78, 337.429, 252.317, 337.762, 252.143, 337.547);
    path_1.cubicTo(251.787, 337.105, 249.443, 335.38, 249.443, 335.559);
    path_1.moveTo(144.377, 339.738);
    path_1.lineTo(143.607, 340.59);
    path_1.lineTo(144.459, 339.82);
    path_1.cubicTo(144.928, 339.396, 145.311, 339.012, 145.311, 338.967);
    path_1.cubicTo(145.311, 338.765, 145.095, 338.943, 144.377, 339.738);
    path_1.moveTo(253.902, 338.967);
    path_1.cubicTo(253.902, 339.012, 254.285, 339.396, 254.754, 339.82);
    path_1.lineTo(255.607, 340.59);
    path_1.lineTo(254.836, 339.738);
    path_1.cubicTo(254.118, 338.943, 253.902, 338.765, 253.902, 338.967);
    path_1.moveTo(142.283, 341.574);
    path_1.lineTo(141.246, 342.689);
    path_1.lineTo(142.361, 341.652);
    path_1.cubicTo(143.397, 340.687, 143.596, 340.459, 143.397, 340.459);
    path_1.cubicTo(143.355, 340.459, 142.853, 340.961, 142.283, 341.574);
    path_1.moveTo(256.656, 341.508);
    path_1.cubicTo(257.219, 342.085, 257.739, 342.557, 257.811, 342.557);
    path_1.cubicTo(257.884, 342.557, 257.482, 342.085, 256.918, 341.508);
    path_1.cubicTo(256.355, 340.931, 255.835, 340.459, 255.762, 340.459);
    path_1.cubicTo(255.69, 340.459, 256.092, 340.931, 256.656, 341.508);
    path_1.moveTo(138.754, 344.787);
    path_1.cubicTo(137.679, 345.869, 136.859, 346.754, 136.931, 346.754);
    path_1.cubicTo(137.003, 346.754, 137.942, 345.869, 139.016, 344.787);
    path_1.cubicTo(140.091, 343.705, 140.911, 342.82, 140.839, 342.82);
    path_1.cubicTo(140.767, 342.82, 139.829, 343.705, 138.754, 344.787);
    path_1.moveTo(258.361, 342.892);
    path_1.cubicTo(258.361, 342.931, 259.275, 343.846, 260.393, 344.925);
    path_1.lineTo(262.426, 346.885);
    path_1.lineTo(260.466, 344.852);
    path_1.cubicTo(258.645, 342.964, 258.361, 342.7, 258.361, 342.892);
    path_1.moveTo(135.46, 348.393);
    path_1.cubicTo(133.608, 350.374, 132.883, 351.213, 133.021, 351.213);
    path_1.cubicTo(133.096, 351.213, 133.953, 350.328, 134.925, 349.246);
    path_1.cubicTo(136.815, 347.143, 137.193, 346.54, 135.46, 348.393);
    path_1.moveTo(264.252, 349.18);
    path_1.cubicTo(265.244, 350.298, 266.106, 351.213, 266.169, 351.213);
    path_1.cubicTo(266.338, 351.213, 263.755, 348.274, 263.056, 347.672);
    path_1.cubicTo(262.721, 347.384, 263.259, 348.062, 264.252, 349.18);
    path_1.moveTo(128.525, 356.984);
    path_1.cubicTo(128.216, 357.416, 128.023, 357.77, 128.095, 357.77);
    path_1.cubicTo(128.168, 357.77, 128.479, 357.416, 128.787, 356.984);
    path_1.cubicTo(129.095, 356.551, 129.288, 356.197, 129.216, 356.197);
    path_1.cubicTo(129.144, 356.197, 128.833, 356.551, 128.525, 356.984);
    path_1.moveTo(270.426, 356.984);
    path_1.cubicTo(270.734, 357.416, 271.046, 357.77, 271.118, 357.77);
    path_1.cubicTo(271.19, 357.77, 270.997, 357.416, 270.689, 356.984);
    path_1.cubicTo(270.38, 356.551, 270.069, 356.197, 269.997, 356.197);
    path_1.cubicTo(269.925, 356.197, 270.118, 356.551, 270.426, 356.984);
    path_1.moveTo(126.002, 360.721);
    path_1.cubicTo(125.099, 362.253, 125.04, 362.384, 125.5, 361.836);
    path_1.cubicTo(126.033, 361.201, 126.492, 360.393, 126.32, 360.393);
    path_1.cubicTo(126.251, 360.393, 126.108, 360.541, 126.002, 360.721);
    path_1.moveTo(273.015, 360.787);
    path_1.cubicTo(273.157, 361.075, 273.465, 361.548, 273.7, 361.836);
    path_1.lineTo(274.127, 362.361);
    path_1.lineTo(273.87, 361.836);
    path_1.cubicTo(273.728, 361.548, 273.42, 361.075, 273.185, 360.787);
    path_1.lineTo(272.758, 360.262);
    path_1.lineTo(273.015, 360.787);
    path_1.moveTo(122.23, 367.213);
    path_1.cubicTo(121.935, 367.79, 121.753, 368.262, 121.825, 368.262);
    path_1.cubicTo(121.898, 368.262, 122.197, 367.79, 122.492, 367.213);
    path_1.cubicTo(122.786, 366.636, 122.968, 366.164, 122.896, 366.164);
    path_1.cubicTo(122.824, 366.164, 122.524, 366.636, 122.23, 367.213);
    path_1.moveTo(276.59, 366.951);
    path_1.cubicTo(276.814, 367.384, 277.056, 367.738, 277.128, 367.738);
    path_1.cubicTo(277.2, 367.738, 277.076, 367.384, 276.852, 366.951);
    path_1.cubicTo(276.629, 366.518, 276.387, 366.164, 276.314, 366.164);
    path_1.cubicTo(276.242, 366.164, 276.366, 366.518, 276.59, 366.951);
    path_1.moveTo(119.785, 372.078);
    path_1.cubicTo(119.169, 373.37, 119.255, 373.59, 119.899, 372.369);
    path_1.cubicTo(120.192, 371.814, 120.385, 371.314, 120.328, 371.257);
    path_1.cubicTo(120.272, 371.201, 120.027, 371.57, 119.785, 372.078);

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = const Color(0xfffc8e54).withOpacity(1.0);
    canvas.drawPath(path_1, paint1fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
