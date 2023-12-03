import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  const Controls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     //color: Colors.grey,
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Control(icon: Icons.repeat,),
            Control(icon: Icons.skip_previous_outlined,),
            PlayControl(),
            Control(icon: Icons.skip_next_outlined),
            Control(icon: Icons.shuffle_sharp),
      
          ],
        ),
      ),
    );
  }
}

class PlayControl extends StatelessWidget {
  const PlayControl({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 90,
        width: 90,
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Color(0xffedd3cb),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Color(0xff6f3d2e),
            offset: Offset(10, 5),
            spreadRadius: 1,
            blurRadius: 10
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -5),
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        child: Stack(
          children: [
            Container(
              // height: 80,
              // width: 80,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xff6f3d2e),
                    shape: BoxShape.circle
                  ),
            ),
            Center(
              child: Container(
                // height: 80,
                // width: 80,
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0xffedd3cb),
                      shape: BoxShape.circle
                    ),
                    child: Center(child: Icon(Icons.play_arrow, size: 65, color: Color(0xff6f3d2e),)),
              ),
            ),
            
          ],
        ),
      );
      
  }
}

class Control extends StatelessWidget {

  const Control({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffedd3cb),
        boxShadow: [
          BoxShadow(color: Color(0xff6f3d2e),
            offset: Offset(10, 5),
            spreadRadius: 1,
            blurRadius: 10
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -5),
              spreadRadius: 1,
              blurRadius: 10,
            )
        ]
      ),

      child:  Stack(
        children:[ 
        Container(
        // height: 50,  useless after margin property set
        // width: 50,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        )
          ),

      Center(
        child: Container(
        //margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffedd3cb),
        ),
        child: Icon(icon, size: 47,color: Color(0xff6f3d2e)),
        ),
      ),
      ]),
        );

      


        



    
  }
}