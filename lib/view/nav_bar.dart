import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10)-- this works too--wrapping the whole container alos works 
     // margin:EdgeInsets.symmetric(horizontal: 10), --this works too
      height: 100,
       //alignment: Alignment.centerRight,
      //color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItem(icon: Icons.arrow_back_ios),
          Text("Now Playing",style: TextStyle(fontSize: 22),),
          NavBarItem(icon: Icons.list,)
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
   final IconData icon;

  const NavBarItem({super.key, required this.icon}); 
   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        //padding: EdgeInsets.only(right:10), ---this didnt work at all so wrapped with padding and worked
      
        height: 50,
        width: 50,
        //color: Colors.blue,
        decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(color: Color(0xff6f3d2e).withOpacity(0.5),
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
          color: Color(0xffedd3cb),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(icon, color: Color(0xff6f3d2e),),
      ),
    );
  }
}