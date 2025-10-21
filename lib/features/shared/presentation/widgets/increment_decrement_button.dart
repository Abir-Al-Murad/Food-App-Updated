import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({
    super.key,
    required this.onChange
  });

  final Function(int) onChange;

  @override
  State<IncrementDecrementButton> createState() => _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
  int _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.themeBlack,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: (){
              if(_currentValue >1){
                _currentValue--;
                widget.onChange(_currentValue);
                setState(() {

                });
              }
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.7),
              child: Icon(Icons.remove,color: Colors.white,),
            ),
          ),
          Text(_currentValue.toString(),style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
          GestureDetector(
            onTap: (){
              _currentValue ++;
              widget.onChange(_currentValue);
              setState(() {

              });
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.7),
              child: Icon(Icons.add,color: Colors.white,),
            ),
          ),

        ],
      ),
    );
  }
}
