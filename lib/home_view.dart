import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Sign C',style: TextStyle(color: Color(0xFF2196F3),fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF42A5F5),
                Color(0xFF90CAF9),
                Color(0xFFA1C4FD),
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
                                AssetImage('assets/images/WhatsApp Image 2023-05-26 at 5.06.48 PM.jpeg'),
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
                                AssetImage('assets/images/WhatsApp Image 2023-05-26 at 4.56.23 PM.jpeg'),
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
