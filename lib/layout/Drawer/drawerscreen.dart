import 'package:flutter/material.dart';
import 'package:graduationproject/shared/styles/colors.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      width: double.infinity,
      height: 250,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/Images/ooo.jpg'),
              ),
            ),
          ),
          const Text(
            "Mahmoud Zahran",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Mobile Developer",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0
            ),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: MaterialButton(

                minWidth: double.infinity,
                height: 50.0,
                onPressed: (){
                  {

                  }
                }

                ,

                child: const Text(
                  'SignOut',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),
                ),

              ),
            ),
          ),



        ],
      ),
    );
  }
}