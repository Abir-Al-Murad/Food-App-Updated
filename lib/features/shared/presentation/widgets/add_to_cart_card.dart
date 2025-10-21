import 'package:flutter/material.dart';

import 'decorated_filled_button.dart';
import 'increment_decrement_button.dart';

class AddToCartCard extends StatelessWidget {
  const AddToCartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.maxFinite,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xffF0F5FA),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$32",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w300),),
              IncrementDecrementButton(
                onChange: (int value){},
              )

            ],
          ),
          Spacer(),
          DecoratedFilledButton(title: "ADD TO CART",onTap: (){},),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}

