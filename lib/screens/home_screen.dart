import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bottom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    fontSize: 27.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                IconButton(
                    onPressed: () => {}, icon: Icon(Icons.keyboard_arrow_down)),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add your onPressed action here
                      },
                      icon: Transform.scale(
                        scale: 1.2, // Adjust the scale factor as needed
                        child: Icon(
                          Icons.favorite_border,
                          size: 27,
                        ),

                        // Image.asset(
                        //   'assets/vectors/loveInsta.png',
                        //   width: 28, // Optionally, set the width of the image
                        //   height: 28, // Optionally, set the height of the image
                        // ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: BoxConstraints(
                          minWidth: 10,
                          minHeight: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add your onPressed action here
                      },
                      icon: Transform.scale(
                        scale: 1.1, // Adjust the scale factor as needed
                        child: Image.asset(
                          'assets/vectors/message.png',
                          width: 28, // Optionally, set the width of the image
                          height: 28, // Optionally, set the height of the image
                        ),
                      ),
                    ),
                    Positioned(
                      top: 3,
                      right: 3,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "20",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 10,
                          minHeight: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                // IconButton(
                //   onPressed: () => {},
                //   icon: Image.asset(
                //     'assets/vectors/message.png',
                //     width: 28,
                //     height: 28,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color:
                      Colors.grey.withOpacity(0.4), // Choose your border color
                  width: 0.4, // Choose the width of the border
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // StoryAvatar(url: "https://source.unsplash.com/random/200x200?sig=1"),
                      for (int i = 1; i <= 100; i++)
                        StoryAvatar(
                          url:
                              "https://source.unsplash.com/random/200x200?sig=$i",
                        ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.4),
                  thickness: 0.5,
                ),

                Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 0, 13, 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://source.unsplash.com/random/200x200?sig=1"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "er_roony_1463",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                //  image slider
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0.0),
                  height: 400.0,
                  child:  PageView.builder(
                        itemCount: 10, // Replace with the number of images
                        itemBuilder: (context, index) {
                          return Image.network(
                            "https://source.unsplash.com/random/800x600?sig=$index",
                            fit: BoxFit.cover,
                          );
                        },
                      ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/vectors/messageoutline.png",
                          width: 25,
                          height: 25,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/vectors/share.png',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      ],
                    ),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(Icons.more_horiz,color: Colors.grey,)
                    // ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/vectors/save.png",
                          width: 27,
                          height: 27,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                            radius: 13,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Liked by",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Alice Smith",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "and 337,676 others",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "DanielMillerdm_24144 🌐",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "View all 6,963 comments",
                            style: TextStyle(
                                fontSize: 14,color: Colors.grey, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "13 hours ago",
                            style: TextStyle(
                                fontSize: 14,color: Colors.grey, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),],),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 0, 13, 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://source.unsplash.com/random/200x200?sig=1"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "er_roony_1463",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                  //  image slider
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0.0),
                    height: 400.0,
                    child:  PageView.builder(
                      itemCount: 10, // Replace with the number of images
                      itemBuilder: (context, index) {
                        return Image.network(
                          "https://source.unsplash.com/random/800x600?sig=$index",
                          fit: BoxFit.cover,
                        );
                      },
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/vectors/messageoutline.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/vectors/share.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ],
                      ),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(Icons.more_horiz,color: Colors.grey,)
                      // ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/vectors/save.png",
                            width: 27,
                            height: 27,
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                              AssetImage("assets/images/profile.png"),
                              radius: 13,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Liked by",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Alice Smith",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "and 337,676 others",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "DanielMillerdm_24144 🌐",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "View all 6,963 comments",
                              style: TextStyle(
                                  fontSize: 14,color: Colors.grey, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 0, 13, 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "13 hours ago",
                              style: TextStyle(
                                  fontSize: 14,color: Colors.grey, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),],),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTabTapped: _onTabTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}

class StoryAvatar extends StatelessWidget {
  final String url;

  const StoryAvatar({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80, // Adjust width to accommodate padding and border width
      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFE10DF8), // Adjust gradient colors as needed
            Color(0xFFE87523),
            Color(0xFFE5D949),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.50),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white, // Background color of the CircleAvatar
          ),
          padding: EdgeInsets.all(3.0),
          // Add padding between CircleAvatar and border
          child: CircleAvatar(
            radius: 32, // Adjust radius of the CircleAvatar as needed
            backgroundImage: NetworkImage(
              url as String,
            ),
          ),
        ),
      ),
    );

    //   Container(
    //   width: 80,
    //   padding: const EdgeInsets.all(4),
    //   margin: const EdgeInsets.symmetric(horizontal: 6.0),
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     gradient: LinearGradient(
    //       begin: Alignment.topRight,
    //       end: Alignment.bottomRight,
    //       colors: [
    //         Color(0xFFE10DF8), // Adjust gradient colors as needed
    //         Color(0xFFE87523),
    //         Color(0xFFE5D949),
    //       ],
    //     ),
    //
    //   ),
    //   child: CircleAvatar(
    //     radius: 50,
    //     backgroundColor: backgroundColor,
    //   ),
    // );
  }
}
