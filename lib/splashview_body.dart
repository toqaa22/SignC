
import 'package:flutter/material.dart';

import 'package:signc/signup_view.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    Future.delayed(const Duration(seconds: 4),(){
      // Get.to(()=>HomeView(),
      //     transition: Transition.fade,duration: Duration(milliseconds: 250),
      // );
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>  SignUpView(),
          ));
    },);
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/try.png'),
        const SizedBox(
          height: 5,
        ),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'Welcome To SignC',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:  Color(0xFF7852A9)),
                  textAlign: TextAlign.center,
                ),
              );
            }),
      ],
    );
  }
}
