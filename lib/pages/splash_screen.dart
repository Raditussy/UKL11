import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF000000),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -19,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.647, -0.917),
                  end: Alignment(0.353, 1.222),
                  colors: <Color>[Color(0xFF612C88), Color(0xFF00A9E2)],
                  stops: <double>[0.304, 1],
                ),
              ),
              child: Container(
                width: 393,
                height: 871,
              ),
            ),
          ),
          Container(
            width: 229,
            height: 229,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0)
                      .withOpacity(0.5), // Shadow color
                  blurRadius: 50, // Spread Radius
                  offset: Offset(0, 4), // Shadow position
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/PerluTukang 2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
