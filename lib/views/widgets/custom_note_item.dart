import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context){
          return const EditNoteVew();
        } ));
      },

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCCB0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text("FlutterTips",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black
                  ),),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                  child: Text("Build your career with hassan yasser",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 20),),
                ),

                trailing: IconButton(
                  onPressed: (){},icon: const Icon(Icons.delete,
                  color: Colors.black,
                  size: 30,),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24,),
                child: Text("may21 2023",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  ),),
              ),
            ],
          ),

        ),

      ),
    );
  }
}
