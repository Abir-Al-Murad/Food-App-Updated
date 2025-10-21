import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/app/assets_path.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';
import 'package:foodappjava/features/shared/presentation/widgets/decorated_filled_button.dart';

class Address extends StatefulWidget {
  const Address({super.key});
  static String name = '/address';

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyBackButton(),
        title: Text('My Address'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  spacing: 10,
                  children: [
                    _AddressContainer("HOME", "2464 Royal Ln. Mesa, New Jersey 45463", AssetsPath.homeLogo),
                    _AddressContainer("WORK", "3891 Ranchview Dr. Richardson, California 62639", AssetsPath.workLogo),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DecoratedFilledButton(title: "ADD NEW ADDRESS", onTap: (){}),
          ),
        ],
      ),

    );
  }

  Widget _AddressContainer(String title,String subtitle,String imageInfo) {
    return Container(
            width: double.infinity,
            height: 120,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.themeLightGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  imageInfo,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SvgPicture.asset(AssetsPath.editIcon),
                          const SizedBox(width: 10),
                          SvgPicture.asset(AssetsPath.deleteIcon),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: AppColors.themeGrey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
