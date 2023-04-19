import 'dart:html';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_web/pallete.dart';
import 'package:my_web/screens/home-page.dart';
// import 'package:my_web/widgets/rounded-button.dart';
// import 'package:my_web/widgets/password-input.dart';
// import 'package:my_web/widgets/text-input.dart';
import 'package:my_web/widgets/widgets.dart';
import 'package:my_web/screens/screens.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.black, Colors.transparent],
          ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/img1.jpeg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Text(
                  'Equity Manager',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next),
                  PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done),
                  Text(
                    'Forgot Password?',
                    style: kBodyText,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: (Text(
                      'Login',
                    )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // Container(
                  //   child: Text(
                  //     'Create New Account',
                  //     style: kBodyText,
                  //   ),
                  // decoration: BoxDecoration(
                  //     border: Border(
                  //         bottom: BorderSide(width: 1, color: kWhite))),
                  // ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signinpage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white70,
                      backgroundColor: Color.fromARGB(135, 73, 73, 73),
                    ),
                    child: Text(
                      'Create New Account !',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 70,
                  // decoration: BoxDecoration(
                  //   color: Colors.grey.withOpacity(0.5),
                  //   borderRadius: BorderRadius.circular(16),
                  // ),
                ),
                //       child: Center(
                //         child: TextField(
                //           decoration: InputDecoration(
                //             border: InputBorder.none,
                //             prefixIcon: Padding(
                //               padding:
                //                   const EdgeInsets.symmetric(horizontal: 20.0),
                //               child: Icon(
                //                 FontAwesomeIcons.envelope,
                //                 size: 28,
                //                 color: kWhite,
                //               ),
                //             ),
                //             hintText: 'Email',
                //             hintStyle: kBodyText,
                //           ),
                //           style: kBodyText,
                //           keyboardType: TextInputType.emailAddress,
                //           textInputAction: TextInputAction.next,
                //         ),
                //       )),
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 10.0),
                //   child: Container(
                //       height: 70,
                //       decoration: BoxDecoration(
                //         color: Colors.grey.withOpacity(0.5),
                //         borderRadius: BorderRadius.circular(16),
                //       ),
                //       child: Center(
                //         child: TextField(
                //           decoration: InputDecoration(
                //             border: InputBorder.none,
                //             prefixIcon: Padding(
                //               padding:
                //                   const EdgeInsets.symmetric(horizontal: 20.0),
                //               child: Icon(
                //                 FontAwesomeIcons.lock,
                //                 size: 28,
                //                 color: kWhite,
                //               ),
                //             ),
                //             hintText: 'Password',
                //             hintStyle: kBodyText,
                //           ),
                //           obscureText: true,
                //           style: kBodyText,
                //           keyboardType: TextInputType.name,
                //           textInputAction: TextInputAction.done,
                //         ),
                //       )),
                // ),

                // Center(
                //   child: ElevatedButton(
                //       child: const Text('Login'),
                //       onPressed: () {
                //         primary:
                //         Colors.black;
                //         style:
                //         TextStyle(
                //             color: Colors.white,
                //             fontFamily: 'Montserrat',
                //             fontSize: 20.0);
                //         // Navigator.push(
                //         //   context,
                //         //   MaterialPageRoute(builder: (context) => const SecondRoute()),
                //         // );
                //       }),
                // ),
                // Center(
                //   child: ElevatedButton(
                //       child: const Text('Sign Up'),
                //       onPressed: () {
                //         primary:
                //         Color.fromARGB(255, 25, 18, 18);
                //         style:
                //         TextStyle(
                //             color: Color.fromARGB(255, 102, 116, 122),
                //             fontFamily: 'Montserrat',
                //             fontSize: 20.0);
                //         // Navigator.push(
                //         //   context,
                //         //   MaterialPageRoute(builder: (context) => const SecondRoute()),
                //         // );
                //       }),
                // ),
                // Row(
                //   children: [
                //   TextButton(
                //     onPressed: () {},
                //     child: Text("Login"),
                //     style: TextButton.styleFrom(
                //       // primary: Color.fromARGB(255, 49, 49, 49),
                //       backgroundColor: Colors.black45,
                //       textStyle: TextStyle(
                //           color: Colors.white,
                //           fontFamily: 'Montserrat',
                //           fontSize: 20.0),
                //       elevation: 25,
                //     ),
                //   ),
                //   TextButton(
                //     onPressed: () {},
                //     child: Text("Sign Up"),
                //     style: TextButton.styleFrom(
                //       // primary: Color.fromARGB(255, 47, 47, 47),
                //       backgroundColor: Colors.black,

                //       textStyle: TextStyle(
                //           color: Colors.white,
                //           fontStyle: FontStyle.italic,
                //           fontSize: 20.0),
                //       elevation: 25,
                //     ),
                //   )
                // ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}



// class TextInputField extends StatelessWidget {
//   const TextInputField({
//     Key? key,
//     required this.icon,
//     required this.hint,
//     required this.inputType,
//     required this.inputAction,
//   }) : super(key: key);
//   final IconData icon;
//   final String hint;
//   final TextInputType inputType;
//   final TextInputAction inputAction;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10.0),
//         child: Container(
//             height: size.height * 0.08,
//             width: size.width * 0.8,
//             decoration: BoxDecoration(
//               color: Colors.grey.withOpacity(0.5),
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Center(
//                 child: TextField(
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 prefixIcon: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Icon(
//                     icon,
//                     size: 28,
//                     color: kWhite,
//                   ),
//                 ),
//                 hintText: hint,
//                 hintStyle: kBodyText,
//               ),
//               style: kBodyText,
//               keyboardType: inputType,
//               textInputAction: inputAction,
//             ))));
//   }
// }

// class PasswordInput extends StatelessWidget {
//   const PasswordInput({
//     Key? key,
//     required this.icon,
//     required this.hint,
//     required this.inputType,
//     required this.inputAction,
//   }) : super(key: key);
//   final IconData icon;
//   final String hint;
//   final TextInputType inputType;
//   final TextInputAction inputAction;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10.0),
//         child: Container(
//             height: size.height * 0.08,
//             width: size.width * 0.8,
//             decoration: BoxDecoration(
//               color: Colors.grey.withOpacity(0.5),
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Center(
//                 child: TextField(
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 prefixIcon: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Icon(
//                     icon,
//                     size: 28,
//                     color: kWhite,
//                   ),
//                 ),
//                 hintText: hint,
//                 hintStyle: kBodyText,
//               ),
//               obscureText: true,
//               style: kBodyText,
//               keyboardType: inputType,
//               textInputAction: inputAction,
//             ))));
//   }
// }
// class RoundedButton extends StatelessWidget {
//   const RoundedButton({
//     Key? key,
//     required this.buttonName,
//   }) : super(key: key);
//   final String buttonName;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height * 0.08,
//       width: size.width * 0.8,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         color: kBlue,
//       ),
//       child: TextButton(
//         onPressed: () {},
//         child: Text(
//           buttonName,
//           style: kBodyText.copyWith(fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// class TextInputField extends StatelessWidget {
//   const TextInputField({
//     Key? key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Container(
//           height: 70,
//           decoration: BoxDecoration(
//             color: Colors.grey.withOpacity(0.5),
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Center(
//             child: TextField(
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 prefixIcon: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Icon(
//                     FontAwesomeIcons.envelope,
//                     size: 28,
//                     color: kWhite,
//                   ),
//                 ),
//                 hintText: 'Email',
//                 hintStyle: kBodyText,
//               ),
//               style: kBodyText,
//               keyboardType: TextInputType.emailAddress,
//               textInputAction: TextInputAction.next,
//             ),
//           )),
//     );
//   }
// }
