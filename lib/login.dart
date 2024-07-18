// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'signup.dart'; // Import the signup page

// class LoginScreen extends StatelessWidget {
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
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   stops: [0.38, 1.0],
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
//                         height: 345,
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Text(
//                     'Already Young CEO!',
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
//                   PasswordInputBox(),
//                   SizedBox(height: 16),
//                   // Forgot password link
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: GestureDetector(
//                       onTap: () {
//                         // Add your forgot password functionality here
//                       },
//                       child: Text(
//                         'Forgot password?',
//                         style: GoogleFonts.roboto(
//                           fontSize: 14,
//                           color: Colors.black.withOpacity(0.87),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   // Login button
//                   Center(
//                     child: SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Add your login functionality here
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           padding: EdgeInsets.symmetric(vertical: 14),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                         child: Text(
//                           'Login',
//                           style: GoogleFonts.roboto(
//                             fontSize: 16,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Spacer(flex: 2),
//                   // Want to become Young CEO? Sign Up prompt
//                   Center(
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => SignUpScreen()),
//                         );
//                       },
//                       child: Text.rich(
//                         TextSpan(
//                           text: 'Want to become Young CEO? ',
//                           style: GoogleFonts.roboto(
//                             fontSize: 14,
//                             color: Colors.black.withOpacity(0.60),
//                           ),
//                           children: [
//                             TextSpan(
//                               text: 'Sign Up',
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
//                 Navigator.pop(context); // Navigate back to previous screen
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

//   InputBox({required this.icon, required this.hintText});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 5.0,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Icon(icon),
//           SizedBox(width: 16.0),
//           Expanded(
//             child: TextFormField(
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 hintText: hintText,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PasswordInputBox extends StatefulWidget {
//   @override
//   _PasswordInputBoxState createState() => _PasswordInputBoxState();
// }

// class _PasswordInputBoxState extends State<PasswordInputBox> {
//   bool showPasswordCriteria = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 5.0,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Icon(Icons.lock),
//               SizedBox(width: 16.0),
//               Expanded(
//                 child: TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Password',
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       showPasswordCriteria = !validatePassword(value);
//                     });
//                   },
//                 ),
//               ),
//             ],
//           ),
//           if (showPasswordCriteria)
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: Text(
//                 'Password must have at least 6 characters, 1 uppercase, 1 number, and 1 special symbol.',
//                 style: TextStyle(
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//   bool validatePassword(String password) {
//     final regex =
//         RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$');
//     return regex.hasMatch(password);
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart'; // Import the signup page
import 'forgetpassword.dart'; // Import the forget password page

class LoginScreen extends StatelessWidget {
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
                    'Already Young CEO!',
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
                  // Password input field
                  PasswordInputBox(),
                  SizedBox(height: 16),
                  // Forgot password link
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPasswordScreen()),
                        );
                      },
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.87),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Login button
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your login functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                  // Want to become Young CEO? Sign Up prompt
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Want to become Young CEO? ',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.60),
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
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
    final regex =
        RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$');
    return regex.hasMatch(password);
  }
}
