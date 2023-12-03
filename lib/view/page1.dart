import 'package:flutter/material.dart';
import 'package:music_player/view/album_art.dart';
import 'package:music_player/view/controls.dart';
import 'package:music_player/view/nav_bar.dart';

class MusicP extends StatefulWidget {
  const MusicP({super.key});

  @override
  State<MusicP> createState() => _MusicPState();
}

class _MusicPState extends State<MusicP> {
  double sliderValue=3;
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height; //for device size 

    return Scaffold(
      backgroundColor: Color(0xffedd3cb),
      body: SafeArea(
        child: Column(
          
          children: [
            NavBar(),
            Container(
              height: height/2.5,
              //color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index){
                  // return Container(
                  //   margin: EdgeInsets.only(left: 10),
                  //   height: 30,
                  //   width: 300,
                  //   color: Colors.blue,
                  //   child: Image.asset("images/poste.jpg"),
                  // );
                  return AlbumArt();
                }

            )
            ),
            Text("Suna Kanchhi",style: TextStyle(fontSize: 28, color: Color(0xff6f3d2e), fontWeight:FontWeight.w500),),
            
            Text("Sajjan Raj Vaidya",style: TextStyle(fontSize: 20, color: Color(0xff6f3d2e), fontWeight:FontWeight.w300),),
             SizedBox(height: 10,),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 2,
                thumbShape:RoundSliderThumbShape(enabledThumbRadius: 5)
              ),
              child: Slider(value: sliderValue, onChanged: (value){
            
                setState(() {
                  sliderValue=value;
                });
              },
              min: 0,
              max: 10,
              activeColor: Color(0xff6f3d2e),
              inactiveColor: Color(0xff6f3d2e).withOpacity(0.5),
              ),
            ),

            SizedBox(height: 35,),
            Controls()
            
          ],
        ),
      ),
    );
  }
}