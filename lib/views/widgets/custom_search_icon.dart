import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon, this.onPressed}) : super(key: key);
  final IconData icon;
final void Function()? onPressed;
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
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
               icon
            ),
          ),
        )
    );
  }
}
