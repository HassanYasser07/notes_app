import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';


class CustomTextField extends StatelessWidget {
   const CustomTextField({Key? key, this.maxLines=1, required this.hint, this.onSaved, this.onChanged}) : super(key: key);
final int maxLines;
final String hint;
final void Function(String?)? onSaved;
final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          TextFormField(
            onChanged: onChanged,
            onSaved: onSaved,
            validator: (value){
              if(value?.isEmpty ?? true){
                return "Field is required";
              }else{return null;}
            },
            cursorColor:kPrimaryColor,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText:hint ,
               hintStyle: const TextStyle(
                  color: kPrimaryColor,
               ),
              enabledBorder:buildOutlineInputBorder() ,

              border: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(kPrimaryColor)
            )
          ),
          const SizedBox(height: 10,)
        ],
      ),


    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: color ?? Colors.white
          )
        );
  }
}

