import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({
    super.key,
    required this.sizes,
    required this.onSelect,
  });

  final Function(String) onSelect;

  final List<String> sizes;

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('SIZE:',style: TextStyle(fontSize: 13),),
        SizedBox(width: 10,),
        ...widget.sizes.map((e){
          return GestureDetector(
            onTap: (){
              _selectedSize = e;
              setState(() {

              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: _selectedSize == e?AppColors.themeColor:Colors.black12,
                child: FittedBox(
                  child: Text("${e}\"",style: TextStyle(color: _selectedSize == e?Colors.white:Colors.black),),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
