import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onTabTapped;
  final int selectedIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.onTabTapped,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,

      type: BottomNavigationBarType.fixed,
      currentIndex: widget.selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: widget.onTabTapped,

      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            widget.selectedIndex == 0
                ? 'assets/vectors/home-bold.svg'
                : 'assets/vectors/home-outline.svg',
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            widget.selectedIndex == 1
                ? 'assets/vectors/search-bold.svg'
                : 'assets/vectors/search-outline.svg',
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            widget.selectedIndex == 2
                ? 'assets/vectors/add-square-bold.svg'
                : 'assets/vectors/add-square-outline.svg',
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            widget.selectedIndex == 3
                ? 'assets/vectors/video-play-bold.svg'
                : 'assets/vectors/video-play-outline.svg',
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/profile.png'),
              ),
              shape: BoxShape.circle,
            ),
          ),
          label: '',
        ),
      ],
    );
  }
}
