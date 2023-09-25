import 'package:flutter/material.dart';
import '/enums.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/screens/home/home_screen.dart';
import '/screens/profile/profile_screen.dart';


class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 10,
                color: Color(0xFFDADADA).withOpacity(0.15))
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                colorFilter: selectedMenu == MenuState.home
                    ? ColorFilter.mode(Colors.black, BlendMode.srcIn)
                    : ColorFilter.mode(inActiveIconColor, BlendMode.srcIn),
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/person.svg",
                colorFilter: selectedMenu == MenuState.profile
                    ? ColorFilter.mode(Colors.black, BlendMode.srcIn)
                    : ColorFilter.mode(inActiveIconColor, BlendMode.srcIn),
              )
              ),
        ],
      )),
    );
  }
}

