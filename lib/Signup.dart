// Signup.dart With Wave Clipper
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: GetStartedScreen(),
//       ),
//     );
//   }
// }

// class GetStartedScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background wave clipper
//           ClipPath(
//             clipper: WaveClipper(),
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.55,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Color(0xFFFFFFFF),
//                     Color(0xFF000000),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   stops: [0.48, 1.0],
//                 ),
//                 border: Border.all(
//                   color: Color(0xFF000000),
//                   width: 1.0,
//                 ),
//               ),
//             ),
//           ),
//           // Content
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Spacer(flex: 2),
//                   Center(
//                     child: Padding(
//                       padding: const EdgeInsets.only(bottom: 20.0),
//                       child: Image.asset(
//                         'assets/logo.png',
//                         height: 340,
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Text(
//                     'Create Your Free Account',
//                     style: GoogleFonts.poppins(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black.withOpacity(0.87),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   // Email input field
//                   InputBox(
//                     icon: Icons.mail,
//                     hintText: 'Email',
//                   ),
//                   SizedBox(height: 16),
//                   // Password input field
//                   InputBox(
//                     icon: Icons.lock,
//                     hintText: 'Password',
//                     isPassword: true,
//                   ),
//                   SizedBox(height: 8),
//                   // Password criteria text
//                   Text(
//                     'Password must have minimum 6 letters, 1 uppercase, 1 number, 1 special symbol',
//                     style: GoogleFonts.roboto(
//                       fontSize: 12,
//                       color: Colors.black.withOpacity(0.54),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   // Checkbox for policy agreement
//                   Row(
//                     children: [
//                       Checkbox(
//                         value: false, // Initialize with false
//                         onChanged: (value) {
//                           // Add your checkbox logic here
//                         },
//                       ),
//                       Text(
//                         'I agree with the policy of YCE',
//                         style: GoogleFonts.roboto(
//                           fontSize: 14,
//                           color: Colors.black.withOpacity(0.87),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 16),
//                   // Get into your YCE Hub button
//                   Center(
//                     child: SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Add your signup functionality here
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           padding: EdgeInsets.symmetric(vertical: 14),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                         child: Text(
//                           'Get into your YCE Hub',
//                           style: GoogleFonts.roboto(
//                             fontSize: 16,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Spacer(flex: 2),
//                   // Already a Young CEO? Login prompt
//                   Center(
//                     child: GestureDetector(
//                       onTap: () {
//                         // Add your navigation to the login screen here
//                       },
//                       child: Text.rich(
//                         TextSpan(
//                           text: 'Already a Young CEO? ',
//                           style: GoogleFonts.roboto(
//                             fontSize: 14,
//                             color: Colors.black.withOpacity(0.60),
//                           ),
//                           children: [
//                             TextSpan(
//                               text: 'Log in',
//                               style: GoogleFonts.roboto(
//                                 fontSize: 14,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                 ],
//               ),
//             ),
//           ),
//           // Back button
//           Positioned(
//             top: 16,
//             left: 16,
//             child: IconButton(
//               icon: Icon(Icons.arrow_back),
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text('Confirm Exit'),
//                       content: Text(
//                           'Are you sure you want to exit the application?'),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: Text('Cancel'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                             // Add your exit application logic here
//                           },
//                           child: Text('Exit'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 60);
//     var firstControlPoint = Offset(size.width / 4, size.height);
//     var firstEndPoint = Offset(size.width / 2, size.height - 30.0);
//     var secondControlPoint = Offset(size.width * 3 / 4, size.height - 90);
//     var secondEndPoint = Offset(size.width, size.height - 60);

//     path.quadraticBezierTo(
//       firstControlPoint.dx,
//       firstControlPoint.dy,
//       firstEndPoint.dx,
//       firstEndPoint.dy,
//     );

//     path.quadraticBezierTo(
//       secondControlPoint.dx,
//       secondControlPoint.dy,
//       secondEndPoint.dx,
//       secondEndPoint.dy,
//     );

//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }

// class InputBox extends StatelessWidget {
//   final IconData icon;
//   final String hintText;
//   final bool isPassword;

//   const InputBox({
//     Key? key,
//     required this.icon,
//     required this.hintText,
//     this.isPassword = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color(0xFFF0F0F0),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: Row(
//         children: [
//           Icon(icon),
//           SizedBox(width: 10),
//           Expanded(
//             child: TextFormField(
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 hintText: hintText,
//               ),
//               obscureText: isPassword,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background wave clipper
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
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.38, 1.0],
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
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Image.asset(
                        'assets/logo.png',
                        height: 345,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Create Your Free Account',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.87),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Email input field
                  InputBox(
                    icon: Icons.mail,
                    hintText: 'Email',
                  ),
                  SizedBox(height: 16),
                  // Password input field with criteria
                  PasswordInputBox(),
                  SizedBox(height: 16),
                  // Checkbox for policy agreement
                  Row(
                    children: [
                      Checkbox(
                        value: false, // Initialize with false
                        onChanged: (value) {
                          // Add your checkbox logic here
                        },
                      ),
                      Text(
                        'I agree with the policy of YCE',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.87),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Get into your YCE Hub button
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your signup functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Get into your YCE Hub',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                  // Already a Young CEO? Login prompt
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Navigate back to previous screen
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Already a Young CEO? ',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.60),
                          ),
                          children: [
                            TextSpan(
                              text: 'Log in',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
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
                Navigator.pop(context); // Navigate back to previous screen
              },
            ),
          ),
        ],
      ),
    );
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

class InputBox extends StatelessWidget {
  final IconData icon;
  final String hintText;

  InputBox({required this.icon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 16.0),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordInputBox extends StatefulWidget {
  @override
  _PasswordInputBoxState createState() => _PasswordInputBoxState();
}

class _PasswordInputBoxState extends State<PasswordInputBox> {
  bool showPasswordCriteria = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.lock),
              SizedBox(width: 16.0),
              Expanded(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                  onChanged: (value) {
                    setState(() {
                      showPasswordCriteria = !validatePassword(value);
                    });
                  },
                ),
              ),
            ],
          ),
          if (showPasswordCriteria)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Password must have at least 6 characters, 1 uppercase, 1 number, and 1 special symbol.',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
        ],
      ),
    );
  }

  bool validatePassword(String password) {
    final regex = RegExp(
        r'^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$');
    return regex.hasMatch(password);
  }
}
*/

// Signup.dart With Illustration
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Avoid overflow when keyboard appears
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 2),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SvgPicture.asset(
                    'assets/signup.svg',
                    height: 360,
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Create Your Free Account',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.87),
                ),
              ),
              SizedBox(height: 16),
              // Email input field
              InputBox(
                icon: Icons.mail,
                hintText: 'Email',
              ),
              SizedBox(height: 16),
              // Password input field with criteria
              PasswordInputBox(),
              SizedBox(height: 16),
              // Checkbox for policy agreement
              Row(
                children: [
                  Checkbox(
                    value: false, // Initialize with false
                    onChanged: (value) {
                      // Add your checkbox logic here
                    },
                  ),
                  Text(
                    'I agree with the policy of YCE',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Get into your YCE Hub button
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your signup functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Get into your YCE Hub',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2),
              // Already a Young CEO? Login prompt
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Navigate back to previous screen
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'Already a Young CEO? ',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.60),
                      ),
                      children: [
                        TextSpan(
                          text: 'Log in',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to previous screen
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  final IconData icon;
  final String hintText;

  InputBox({required this.icon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 16.0),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordInputBox extends StatefulWidget {
  @override
  _PasswordInputBoxState createState() => _PasswordInputBoxState();
}

class _PasswordInputBoxState extends State<PasswordInputBox> {
  bool showPasswordCriteria = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.lock),
              SizedBox(width: 16.0),
              Expanded(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                  onChanged: (value) {
                    setState(() {
                      showPasswordCriteria = !validatePassword(value);
                    });
                  },
                ),
              ),
            ],
          ),
          if (showPasswordCriteria)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Password must have at least 6 characters, 1 uppercase, 1 number, and 1 special symbol.',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
        ],
      ),
    );
  }

  bool validatePassword(String password) {
    final regex =
    RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$');
    return regex.hasMatch(password);
  }
}

