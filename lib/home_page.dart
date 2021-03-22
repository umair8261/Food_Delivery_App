import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget categoriesContainer({@required String image, @required String name}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
  Widget bottomContainer({@required String image, @required int price, @required String name}) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Color(0xff3a3e3e),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 60,
          ),
          ListTile(
            leading: Text(
              name,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            trailing: Text(
              "\$$price",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.star_fill,
                  size: 20,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  size: 20,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  size: 20,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  size: 20,
                ),
                Icon(
                  CupertinoIcons.star,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(CupertinoIcons.slider_horizontal_3),
        actions: [
          Padding(
            padding: EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('images/dp.jpg'),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search Food',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
                fillColor: Color(0xff3a3e3e),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoriesContainer(image: 'images/8.png', name: 'All'),
                categoriesContainer(image: 'images/7.png', name: 'Special'),
                categoriesContainer(image: 'images/3.png', name: 'Cheezy'),
                categoriesContainer(image: 'images/4.png', name: 'BBQ'),
                categoriesContainer(image: 'images/6.png', name: 'Italian'),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              shrinkWrap: false,
                primary: false,
                crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              children: [
                bottomContainer(image: 'images/7.png', price: 10 , name: 'Italic'),
                bottomContainer(image: 'images/8.png', price: 12 , name: 'Desi'),
                bottomContainer(image: 'images/3.png', price: 15 , name: 'American'),
                bottomContainer(image: 'images/4.png', price: 12 , name: 'Cheezy'),
                bottomContainer(image: 'images/7.png', price: 10 , name: 'BBQ'),
                bottomContainer(image: 'images/6.png', price: 20 , name: 'Special'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
