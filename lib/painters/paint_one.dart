import 'package:flutter/material.dart';

class PaintOne extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
		final Paint stroke = Paint()
		..style = PaintingStyle.stroke
		..strokeWidth = 10;

		final Paint fill = Paint()
		..style = PaintingStyle.fill
		..color = Colors.amber;

		canvas.drawCircle(Offset(100, 250), 50, fill);
        canvas.drawArc(Rect.fromPoints(Offset.zero, Offset(100, 100)), 90, 30, true, stroke);
		canvas.drawLine(Offset(-100, -200), Offset(0, 200), stroke);
		canvas.drawRect(Rect.fromPoints(Offset(200, -300), Offset(100, -200)), stroke);
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
        return false;
    }
}
