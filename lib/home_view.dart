import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
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

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 200,

                  child: Card(

                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(17,),
                    ),

                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor:  Color(0xFFCAE9F5),
                              radius: 60,
                            ),

                            Positioned(
                              top: 5,
                              left: 2,
                              right: 2,
                              bottom: 5,
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/asl detection.png'),
                              ),
                            ),
                          ],
                        ),
                        Text('ASL Detection',style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 170,
                  height: 200,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(17,),
                    ),
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFCAE9F5),
                              radius: 60,
                            ),

                            Positioned(
                              top: 5,
                              left: 2,
                              right: 2,
                              bottom: 5,
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/currency detection2.jpg'),
                              ),
                            ),
                          ],
                        ),
                        Text('Currency Detection',style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),



              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 200,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(17,),
                    ),
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFCAE9F5),
                              radius: 60,
                            ),

                            Positioned(
                              top: 5,
                              left: 2,
                              right: 2,
                              bottom: 5,
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/object detection.jpg'),
                              ),
                            ),
                          ],
                        ),
                        Text('Object Detection',style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 170,
                  height: 200,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(17,),
                    ),
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFCAE9F5),
                              radius: 60,
                            ),

                            Positioned(
                              top: 5,
                              left: 2,
                              right: 2,
                              bottom: 5,
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/text extractin 2.png'),
                              ),
                            ),
                          ],
                        ),
                        Text('Text Detection',style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),



              ],
            ),








          ],
        ),
      ),
    );
  }
}
