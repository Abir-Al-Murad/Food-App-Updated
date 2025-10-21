import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';
import '../../shared/presentation/widgets/decorated_filled_button.dart';
import '../presentation/screens/order_tracking_screen.dart';

class OngoingAndHistoryOrder extends StatelessWidget {
  const OngoingAndHistoryOrder({
    super.key,
    required this.isHistory,
  });
  final bool isHistory;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.themeGrey,
                        ),
                      ),

                      const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pizza Hut",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                          const SizedBox(height: 10,),
                          Text("\$35.25",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 55,
                          width:200,
                          child: DecoratedFilledButton(title: isHistory?'Re-Order':"Track Order", onTap: (){
                            if(!isHistory) {
                              Navigator.pushNamed(context, OrderTrackingScreen.name);
                            }

                          })),
                      FilledButton(onPressed: (){},style: FilledButton.styleFrom(
                          minimumSize: Size(200, 55),
                          backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),side: BorderSide(color: AppColors.themeColor)
                      )
                      ), child: Text(isHistory?'Rate':'Cancel',style: TextStyle(color: AppColors.themeColor),),)
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
