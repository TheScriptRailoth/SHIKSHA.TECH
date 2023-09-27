import 'package:flutter/material.dart';
class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, top: 10, right: 8),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Messages',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: ('Quicksand'),
                        fontSize: 30,
                        color: Color(0xff022b3f),
                    ),),
                  ),
                  IconButton(onPressed: (){},
                      icon: const Icon(Icons.search,
                        color: Colors.black,
                        size: 36,
                      ))
                ],
              ),
              SizedBox(height: 5,),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 110,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:[
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(height: 10,),
                          Text('Ashutosh',style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(height: 10,),
                          Text('Aviral',style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(height: 10,),
                          Text('Raghav',style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(height: 10,),
                          Text('Deepak',style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(height: 10,),
                          Text('Ishaan',style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),)
                        ],
                      ),
                      SizedBox(width: 20,),
                    ]
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 579,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xff292F3F),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )
                ),
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                              Image.asset('assets/profile_pic.png').image,
                            ),
                            SizedBox(width: 10,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Manan',style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: ('Quicksand'),
                                        fontSize: 17
                                    ),),
                                    SizedBox(width: 155,),
                                    Text('08:43',style: TextStyle(
                                        color: Colors.white70
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text('dannylove@gmail.com',style: TextStyle(
                                  color: Colors.white70,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Raghav Jain',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 130,),
                                  Text('Tue',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('Will do,suer,thank you',style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Piyush Kumar',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 120,),
                                  Text('Sun',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('Uploded File',style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Aviral Gupta',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 120,),
                                  Text('13 Sep',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text("Were is another tutorial",style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Ishita Gupta',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 120,),
                                  Text('13 Sep',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text("Were is another tutorial",style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Aditya Bajoria',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 110,),
                                  Text('13 Sep',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text("Were is another tutorial",style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Aman Kumar',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 120,),
                                  Text('13 Sep',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text("Were is another tutorial",style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Aditya Mishra',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 110,),
                                  Text('13 Sep',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text("Were is another tutorial",style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0,top: 35,right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/profile_pic.png').image,
                          ),
                          SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Aviral Yadav',style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: ('Quicksand'),
                                      fontSize: 17
                                  ),),
                                  SizedBox(width: 120,),
                                  Text('13 Sep',style: TextStyle(
                                      color: Colors.white70
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text("Were is another tutorial",style: TextStyle(
                                color: Colors.white70,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}