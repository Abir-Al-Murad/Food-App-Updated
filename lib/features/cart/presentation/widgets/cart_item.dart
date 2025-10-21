import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../shared/presentation/widgets/increment_decrement_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.onEdit,
  });

  final bool onEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            height: 170,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.themeGrey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Pizza Calzone European",
                          style: TextStyle(fontSize: 18),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if(onEdit)
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.cancel_rounded, color: Colors.red, size: 25),
                        ),
                    ],
                  ),
                  Text("\$64", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('14"', style: TextStyle(color: AppColors.themeGrey, fontSize: 18)),
                      IncrementDecrementButton(onChange: (int value){}),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}