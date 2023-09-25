import 'package:flutter/material.dart';

class IconBtnWithCounter extends StatefulWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.plusIconAsset,
    required this.minusIconAsset,
    required this.initialCount,
  }) : super(key: key);

  final String plusIconAsset;
  final String minusIconAsset;
  final int initialCount;

  @override
  _IconBtnWithCounterState createState() => _IconBtnWithCounterState();
}

class _IconBtnWithCounterState extends State<IconBtnWithCounter> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _count = widget.initialCount;
  }

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _incrementCount,
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Image.asset(widget.plusIconAsset), 
          ),
          Positioned(
            right: -3,
            top: -3,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "$_count",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: -3,
            top: -3,
            child: GestureDetector(
              onTap: _decrementCount,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Color(0xFF4C4C4C),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Image.asset(widget.minusIconAsset),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
