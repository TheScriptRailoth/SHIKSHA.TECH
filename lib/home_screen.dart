import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF4E74F9),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 3, bottom: 20),
                  child: Text("Hi, Ashutosh", style: TextStyle(
                    color:Colors.white,fontSize: 25, fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:11, bottom: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5)
                        ),
                        prefixIcon: Icon(Icons.search, size:25,)
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
