import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/app/assets_path.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});
  static const name = '/order';

  @override
  Widget build(BuildContext context) {
    final steps = [
      "Your order has been received",
      "The restaurant is preparing your food",
      "Your order has been picked up for delivery",
      "Order arriving soon!"
    ];

    final currentStep = 1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: MyBackButton(),
        title: const Text("Order Status"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 110,
                          decoration: BoxDecoration(
                            color: AppColors.themeGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Uttora Coffee House",style: TextStyle(fontSize:18),),
                            Text("Orderd at 06 Sept, 10:00pm",style: TextStyle(fontSize: 14,color: AppColors.themeGrey),),
                            SizedBox(height: 20,),
                            Text('2x Burger',style: TextStyle(color: Color(0xff646982)),),
                            Text('4x Sanwitch',style: TextStyle(color: Color(0xff646982)),),
                          ],
                        )
                      ],
                    ),

                    const SizedBox(height: 60,),

                    Text("20 min",style:TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold
                    ),),
                    Text("ESTIMATED DELIVERY TIME",style:TextStyle(
                        fontSize: 14,color: AppColors.themeGrey
                    ),),
                    const SizedBox(height: 40,),
                    Column(
                      children: List.generate(steps.length, (index) {
                        final isActive = index <= currentStep;
                        final isLast = index == steps.length - 1;

                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: isActive ? Colors.orange : Colors.grey[300],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    isActive
                                        ? Icons.check_circle_outline
                                        : Icons.radio_button_unchecked,
                                    color: isActive ? Colors.white : Colors.grey,
                                    size: 16,
                                  ),
                                ),
                                if (!isLast)
                                  Container(
                                    width: 2,
                                    height: 40,
                                    color:
                                    isActive ? Colors.orange : Colors.grey[300],
                                  ),
                              ],
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  steps[index],
                                  style: TextStyle(
                                    color: isActive ? Colors.orange : Colors.grey,
                                    fontSize: 15,
                                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),topLeft: Radius.circular(20),
              ),
              border: Border(top: BorderSide(color: Colors.grey.shade300))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  // child: Image.asset(),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Maruf",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Courier",style: TextStyle(color: AppColors.themeGrey),),

                  ],
                ),
                Spacer(),
                SvgPicture.asset(AssetsPath.callIcon,),
              ],
            ),
          )

        ],
      ),
    );
  }
}
