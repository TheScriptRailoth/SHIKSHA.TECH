import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shiksha_tech/widgets/category.dart';
import 'package:shiksha_tech/widgets/place_holder.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
   double appPadding = 25.0;
   double spacer = 50.0;
   double smallSpacer = 30.0;
   double miniSpacer = 10.0;
   final bool extend=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: spacer - 1.0),

         Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore',
            style: TextStyle(
              color: Color(0xff022b3f),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Seek for your preference',
            style: TextStyle(
              color: Color(0xff022b3f),
              fontSize: 15.0,
            ),
          ),
        ],
      ),
          SizedBox(height: spacer),
          Container(
            width: 350,
            height: 50,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  alignment: Alignment.center,
                  child: Container(
                    child: Icon(Icons.search),
                  ),
                ),
                Flexible(
                  child: Container(
                    width: 250,
                    height: 38,
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: TextField(
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "Type Something....",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  height: 40.0,
                  width: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF4E74F9).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF4E74F9).withOpacity(0.5),
                        spreadRadius: 0.0,
                        blurRadius: 6.0,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Container(
                      child: Icon(Icons.filter_alt)
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: spacer),

          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Searches',
              style: TextStyle(
                color: Color(0xff022b3f),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            (extend)
                ? GestureDetector(
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   route,
                //   arguments: arg,
                // );
              },
              child: Text(
                'See More',
                style: TextStyle(
                    color: Color(0xFF4E74F9),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            )
                : Container(),
          ],
        ),
          SizedBox(height: smallSpacer),

          //suggestion
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: List.generate(CategoryItem.length, (index) {
              return Container(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF4E74F9).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF4E74F9).withOpacity(0.5),
                      spreadRadius: 0.0,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Text(
                  CategoryItem[index]['title'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              );
            }),
          ),
          SizedBox(height: spacer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  color: Color(0xff022b3f),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              (false)
                  ? GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(
                  //   context,
                  //   route,
                  //   arguments: arg,
                  // );
                },
                child: Text(
                  'See More',
                  style: TextStyle(
                      color: Color(0xFF4E74F9),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400),
                ),
              )
                  : Container(),
            ],
          ),
          SizedBox(height: smallSpacer),

          //list categories
          Column(
            children: List.generate(AllCategories.length, (index) {
              var data = AllCategories[index];
              var getData = data['data'];
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () {

                  },

                  child:PlaceHolder(
                    title: data['title'],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}