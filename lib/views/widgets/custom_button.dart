import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, required this.isLoading}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor

          ),
          child:  isLoading ? const Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          )   :const Center(
            child: Text("add",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
          ),
        ),
      ),
    );
  }
}