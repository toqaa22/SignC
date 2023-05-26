import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signc/custom_button.dart';
import 'package:signc/custom_text_field.dart';
import 'package:signc/home_view.dart';
import 'package:signc/signup_view.dart';


class LogInView extends StatelessWidget {
  LogInView({Key? key}) : super(key: key);
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
                          Color(0xFF42A5F5),
                          Color(0xFF90CAF9),
                          Color(0xFFA1C4FD),
                          Color(0xFFCAE9F5),
                          Colors.white,
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
                  const Text('LogIn',style: TextStyle(
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
                      try {
                        var auth = FirebaseAuth.instance;
                        auth.signInWithEmailAndPassword(email: email!, password: password!);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const HomeView(),
                            ));
                      } on FirebaseAuthException catch (e){
                        if (e.code == 'user-not-found') {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Error'),
                                content: const Text('No user found for that email.'),
                                actions: [
                                  TextButton(
                                    child: const Text('Close'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );

                          // showSnackBar(context, "No user found for that email.");
                        }

                      }







                    },
                    name: 'LogIn',
                    color: const Color(0xFF2196F3),),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have Account ?",
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
                                builder: (BuildContext context) =>  SignUpView(),
                              ));
                        },
                        child: const Text(
                          "SignUp",
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
