import 'package:flutter/material.dart';
import 'components/top_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CategoryList(),
            ),
            Container(
              width: 157,
              height: 236,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/jonny-caspari-wsvCC6UyKjs-unsplash 1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatefulWidget {
  const CategoryList({
    super.key,
  });

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  final List<Widget> categoryIcons = <Widget>[
    Image.asset("assets/icons/star 1.png"),
    Image.asset("assets/icons/chair 4.png"),
    Image.asset("assets/icons/table 1 1.png"),
    Image.asset("assets/icons/sofa 1.png"),
    Image.asset("assets/icons/bed 1.png"),
    Image.asset("assets/icons/lamp 1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CategoryIcon(
            onTab: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            icon: categoryIcons[index],
            color:
                selectedIndex == index ? Color(0xFF4F4F4F) : Color(0xFFBDBDBE),
            shadow: selectedIndex == index
                ? [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ]
                : [],
          );
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 25);
        },
        itemCount: categoryIcons.length,
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    super.key,
    required this.onTab,
    required this.icon,
    required this.color,
    required this.shadow,
  });
  final Function()? onTab;
  final Widget? icon;
  final Color? color;
  final List<BoxShadow> shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      child: InkWell(
        child: icon,
        onTap: onTab,
      ),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: shadow,
      ),
    );
  }
}
