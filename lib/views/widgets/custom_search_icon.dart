import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
                 borderRadius: BorderRadius.circular(12)
        ),
        child:  Center(
          child: Icon(
             icon
          ),
        )
    );
  }
}
