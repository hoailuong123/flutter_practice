import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    super.key,
  });

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  final List<Widget> categoryIcons = [
    Image.asset("assets/icons/star 1.png"),
    Image.asset("assets/icons/chair 4.png"),
    Image.asset("assets/icons/table 1 1.png"),
    Image.asset("assets/icons/sofa 1.png"),
    Image.asset("assets/icons/bed 1.png"),
    Image.asset("assets/icons/lamp 1.png"),
  ];

  final List<String> categoryNames = [
    "Popular",
    "Chair",
    "Table",
    "Armchair",
    "Bed",
    "Lamp"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
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
            text: categoryNames[index],
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
    required this.text,
  });
  final Function()? onTab;
  final Widget? icon;
  final Color? color;
  final List<BoxShadow> shadow;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
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
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF232323),
            fontSize: 14,
            fontFamily: 'Nunito Sans',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ],
    );
  }
}
