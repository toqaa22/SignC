import 'package:flutter/material.dart';
import 'package:signc/custom_button.dart';
import 'package:signc/custom_text_field.dart';
import 'package:signc/login_view.dart';

class SignUpView extends StatelessWidget {
   SignUpView({Key? key}) : super(key: key);
  String? email;
  String? password;


  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
          return Scaffold(
            body: Stack(
              fit: StackFit.expand,
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: SizedBox(

                    height: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFB47EDE), // baby violet color
                            Color(0xFFA1C4FD), // baby blue color
                            Color(0xFFCAE9F5),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                      ),
                    )
                  ),
                ),

                Form(
                  key: formKey,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('SignUp',style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white
                        ),),
                        const SizedBox(
                          height: 20,
                        ),


                        CustomTextField(
                          hintText: 'Enter Your Email',
                          title: "email",
                          icon: const Icon(Icons.email_outlined),
                          onChanged: (data) {
                            email = data;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                          hintText: 'Enter Your Password',
                          title: "Password",
                          icon: const Icon(Icons.lock),
                          onChanged: (data) {
                            password = data;
                          },
                        ),

                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                            ontap: () async {

                            },
                            name: 'SignUp',
                            color: const Color(0xFF7852A9),),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already Have Account ?",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>  LogInView(),
                                    ));
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          );
        }


  }


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height * 0.75)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.65,
          size.width * 0.5, size.height * 0.75)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.85,
          size.width * 1.0, size.height * 0.75)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
