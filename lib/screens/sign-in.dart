import 'package:flutter/material.dart';
import 'package:my_web/pallete.dart';
import 'package:my_web/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_web/screens/home-page.dart';

class Signinpage extends StatelessWidget {
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
                  image: AssetImage('assets/images/img3.jpg'),
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
                  'Join Us Now',
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
                  NameField(
                      icon: FontAwesomeIcons.personBooth,
                      hint: 'Enter your full name ',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next),
                  Dateofbirth(
                      icon: FontAwesomeIcons.child,
                      hint: 'Enter Date of Birth',
                      inputType: TextInputType.datetime,
                      inputAction: TextInputAction.next),
                  TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next),
                  PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputType: TextInputType.visiblePassword,
                      inputAction: TextInputAction.done),
                  PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Confirm Password',
                      inputType: TextInputType.visiblePassword,
                      inputAction: TextInputAction.done),
                  // Text(
                  //   'Forgot Password?',
                  //   style: kBodyText,
                  // ),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: (Text(
                      'Create Account !',
                    )),
                  ),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  // Container(
                  //   child: Text(
                  //     'Create New Account',
                  //     style: kBodyText,
                  //   ),
                  // decoration: BoxDecoration(
                  //     border: Border(
                  //         bottom: BorderSide(width: 1, color: kWhite))),
                  // ),

                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => Signinpage()),
                  //     );
                  //   },
                  //   style: TextButton.styleFrom(
                  //     foregroundColor: Colors.white70,
                  //     backgroundColor: Color.fromARGB(135, 73, 73, 73),
                  //   ),
                  //   child: Text(
                  //     'Create New Account !',
                  //     style: kBodyText,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // )
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NameField extends StatelessWidget {
  const NameField({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
            height: size.height * 0.08,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
                child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    icon,
                    size: 28,
                    color: kWhite,
                  ),
                ),
                hintText: hint,
                hintStyle: kBodyText,
              ),
              style: kBodyText,
              keyboardType: inputType,
              textInputAction: inputAction,
            ))));
  }
}

class Dateofbirth extends StatelessWidget {
  const Dateofbirth({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
            height: size.height * 0.08,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
                child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    icon,
                    size: 28,
                    color: kWhite,
                  ),
                ),
                hintText: hint,
                hintStyle: kBodyText,
              ),
              style: kBodyText,
              keyboardType: inputType,
              textInputAction: inputAction,
            ))));
  }
}

// DateTime _datetime = DateTime.now();
// _showDatePicker(BuildContext context) {
//   showDatePicker(
//     context: context,
//     initialDate: DateTime.now(),
//     firstDate: DateTime(1900),
//     lastDate: DateTime(2023),
//   );
// }
