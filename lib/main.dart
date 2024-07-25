// Main.dart with Wave Clipper
/*

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart'; // Import the SignUpScreen file
import 'login.dart'; // Import the LoginScreen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GetStartedScreen(),
      ),
    );
  }
}

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient removed
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0xFF000000),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.48, 1.0],
                ),
                border: Border.all(
                  color: Color(0xFF000000),
                  width: 1.0,
                ),
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20.0), // Adjust this value to move the logo
                      child: Image.asset(
                        'assets/logo.png', // Add the path to your logo image here
                        height: 343,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Become Young Ceo now!',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.87),
                    ),
                  ),
                  Text(
                    'By creating free account',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.54),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Become The Young Ceo Now!',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        icon: SvgPicture.asset(
                          'assets/google.svg', // Add the path to your Google logo SVG here
                          height: 24,
                        ),
                        label: Text(
                          'Continue with Google',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.87),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        icon: SvgPicture.asset(
                          'assets/apple.svg', // Add the path to your Apple logo SVG here
                          height: 24,
                        ),
                        label: Text(
                          'Continue with Apple',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.87),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Already a Young Ceo? ',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.60),
                          ),
                          children: [
                            TextSpan(
                              text: 'Log in',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          // Back button
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _showExitConfirmation(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showExitConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit Application'),
          content: Text('Are you sure you want to exit the application?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    ).then((value) {
      if (value == true) {
        Navigator.of(context).pop(true);
      }
    });
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 30.0);
    var secondControlPoint = Offset(size.width * 3 / 4, size.height - 90);
    var secondEndPoint = Offset(size.width, size.height - 60);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
*/


/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart'; // Import the SignUpScreen file
import 'login.dart'; // Import the LoginScreen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GetStartedScreen(),
      ),
    );
  }
}

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background box
          Container(
            height: MediaQuery.of(context).size.height * 0.44,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFF000000),
                width: 1.0,
              ),
            ),
          ),
          // Curved box with a darker line
          Positioned(
            top: MediaQuery.of(context).size.height * 0.44 - 20, // Adjust to ensure it fits well
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 100),
              painter: CurvedBoxPainter(),
              child: Container(),
            ),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20.0), // Adjust this value to move the logo
                      child: Image.asset(
                        'assets/logo.png', // Add the path to your logo image here
                        height: 343,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Become Young Ceo now!',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.87),
                    ),
                  ),
                  Text(
                    'By creating free account',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.54),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Become The Young Ceo Now!',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        icon: SvgPicture.asset(
                          'assets/google.svg', // Add the path to your Google logo SVG here
                          height: 24,
                        ),
                        label: Text(
                          'Continue with Google',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.87),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        icon: SvgPicture.asset(
                          'assets/apple.svg', // Add the path to your Apple logo SVG here
                          height: 24,
                        ),
                        label: Text(
                          'Continue with Apple',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.87),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Already a Young Ceo? ',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.60),
                          ),
                          children: [
                            TextSpan(
                              text: 'Log in',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          // Back button
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _showExitConfirmation(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showExitConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit Application'),
          content: Text('Are you sure you want to exit the application?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    ).then((value) {
      if (value == true) {
        Navigator.of(context).pop(true);
      }
    });
  }
}

class CurvedBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white // Background color of the curved box
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = Colors.black // Color of the line at the curve
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(30));

    canvas.drawRRect(rRect, paint);
    canvas.drawLine(
      Offset(0, size.height - 2),
      Offset(size.width, size.height - 2),
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
*/      // Remove this code later



// OG Code


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart'; // Import the SignUpScreen file
import 'login.dart'; // Import the LoginScreen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GetStartedScreen(),
      ),
    );
  }
}

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient and curved box
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.44),
            painter: GradientCurvedBoxPainter(),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20.0), // Adjust this value to move the logo
                      child: Image.asset(
                        'assets/logo.png', // Add the path to your logo image here
                        height: 343,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Become Young Ceo now!',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.87),
                    ),
                  ),
                  Text(
                    'By creating free account',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.54),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Become The Young Ceo Now!',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        icon: SvgPicture.asset(
                          'assets/google.svg', // Add the path to your Google logo SVG here
                          height: 24,
                        ),
                        label: Text(
                          'Continue with Google',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.87),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: BorderSide(color: Colors.black),
                        ),
                        icon: SvgPicture.asset(
                          'assets/apple.svg', // Add the path to your Apple logo SVG here
                          height: 24,
                        ),
                        label: Text(
                          'Continue with Apple',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.87),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Already a Young Ceo? ',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.60),
                          ),
                          children: [
                            TextSpan(
                              text: 'Log in',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          // Back button
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _showExitConfirmation(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showExitConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit Application'),
          content: Text('Are you sure you want to exit the application?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    ).then((value) {
      if (value == true) {
        Navigator.of(context).pop(true);
      }
    });
  }
}

class GradientCurvedBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint gradientPaint = Paint()
      ..shader = LinearGradient(
        colors: [Colors.white, Colors.black.withOpacity(0.2)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 1.0],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final Paint borderPaint = Paint()
      ..color = Colors.black.withOpacity(0.6) // Darker color for the curve
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height * 0.4)
      ..arcTo(
        Rect.fromLTWH(-size.width * 0.2, size.height * 0.4, size.width * 1.4, size.height * 0.4),
        0,
        3.14 / 10, // Curve to approximately 5% of a semi-circle
        false,
      )
      ..lineTo(size.width, size.height * 0.4)
      ..close();

    canvas.drawPath(path, gradientPaint);
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

