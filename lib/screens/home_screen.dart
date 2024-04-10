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
            Text(
              'Instagram',
              style: TextStyle(
                fontFamily: 'Instagram',
                fontSize: 27.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: Image.asset(
                    'assets/vectors/loveInsta.png',
                    width: 28,
                    height: 28,
                  ),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Image.asset(
                    'assets/vectors/message.png',
                    width: 28,
                    height: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.4), // Choose your border color
              width: 0.4, // Choose the width of the border
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // StoryAvatar(url: "https://source.unsplash.com/random/200x200?sig=1"),
                  for (int i = 1; i <= 100; i++)
                    StoryAvatar(
                      url: "https://source.unsplash.com/random/200x200?sig=$i",
                    ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              thickness: 0.9,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
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
                    icon: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            //  image slider

            SizedBox(
              width: double.infinity,
              height: 400,
              child: Expanded(
                child: PageView.builder(
                  itemCount: 10, // Replace with the number of images
                  itemBuilder: (context, index) {
                    return Image.network(
                      "https://source.unsplash.com/random/800x600?sig=$index",
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    size: 28,
                  ),
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: Image.asset(
                //     'assets/vectors/share.png',
                //     width: 28,
                //     height: 28,
                //   ),
                // ),
              ],
            )
          ],
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
      width: 90, // Adjust width to accommodate padding and border width
      margin: const EdgeInsets.fromLTRB(19, 0, 0, 0),
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
        padding: const EdgeInsets.all(3.00),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white, // Background color of the CircleAvatar
          ),
          padding: EdgeInsets.all(5.0),
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
