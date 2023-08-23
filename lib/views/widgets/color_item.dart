import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.colors}) : super(key: key);
  final bool isActive;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return isActive?  CircleAvatar(
      radius: 32,
      backgroundColor: colors,

        child:const Icon(Icons.check,
          color: Colors.black,
          size: 40,
        ))
        : CircleAvatar(
      radius: 32,
      backgroundColor: colors,
    ) ;
  }
}


class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color> colors= const[
    Color(0xff847577),
    Color(0xffa6a2a2),
    Color(0xffcfd2cd),
    Color(0xffe5e6e4),
    Color(0xfffbfbf2),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 *2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: GestureDetector(
            onTap: (){
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).color=colors[index];
              setState(() {

              });
            },
            child:  ColorItem(
              colors: colors[index],
              isActive: currentIndex==index,
            ),
          ),
        );
      }),
    );
  }
}
