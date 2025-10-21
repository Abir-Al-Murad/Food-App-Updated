import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/app/assets_path.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';
import 'package:foodappjava/features/shared/presentation/widgets/double_container_grid_view.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key,required this.keyword});
  static String name = '/search-result-screen';
  final String keyword;

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  final List<String> keywords = [
    'Burger',
    'Sandwich',
    'Pizza',
    'Hamburger',
    'Coffee',
  ];
  @override
  Widget build(BuildContext context) {
    String selectedItem = widget.keyword;
    return Scaffold(
      appBar: AppBar(
        leading: MyBackButton(),
        title: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(30)
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: Icon(
                Icons.arrow_drop_down,
                color: AppColors.arrowColor,
              ),
              isDense: true,
              value: selectedItem,
              alignment: Alignment.center,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),
              items: keywords
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) {
                selectedItem = v!;
                setState(() {
                });
              },
            ),
          ),
        ),
        actions: [
          SvgPicture.asset(AssetsPath.searchLogo),
          SizedBox(width: 6,),
          SvgPicture.asset(AssetsPath.filterLogo),
          SizedBox(width: 20,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Popular Burgers",style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: 100,),
              DoubleContainerGridView(title: 'Burger Bistro', restaurantName: "Rose Garden", imageUrl: ""),
        
            ],
          ),
        ),
      ),
    );
  }
}
