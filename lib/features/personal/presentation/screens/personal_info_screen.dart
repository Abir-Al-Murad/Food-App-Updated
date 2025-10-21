import 'package:flutter/material.dart';
import 'package:foodappjava/app/assets_path.dart';
import 'package:foodappjava/features/home/data/model/drawer_item.dart';
import 'package:foodappjava/features/home/presentation/widgets/grey_container.dart';
import 'package:foodappjava/features/shared/presentation/widgets/Profile_Header.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';

import '../../../../app/app_colors.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});
  static const name = '/personal-info';

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyBackButton(),
        title: const Text("Profile"),
        actionsPadding: EdgeInsets.all(10),
        actions: [
          Text(
            "EDIT",
            style: TextStyle(
              color: AppColors.themeColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.themeColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(child: SizedBox(width: 300, child: ProfileHeader())),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GreyContainer(
                items: [
                  DrawerItem(
                    title: 'FULL NAME',
                    imageInfo: AssetsPath.personLogo,
                    onTap: () {},
                    subtitle: "Abir Al Murad",
                  ),
                  DrawerItem(
                    title: "EMAIL",
                    imageInfo: AssetsPath.emailLogo,
                    onTap: () {},
                    subtitle: "abiralmuradnub@gmail.com",
                  ),
                  DrawerItem(
                    title: "PHONE NUMBER",
                    imageInfo: AssetsPath.phoneLogo,
                    onTap: () {},
                    subtitle: '+8801715981749',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
