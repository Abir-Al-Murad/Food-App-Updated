import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/features/search/presentation/screens/search_result_screen.dart';
import 'package:foodappjava/features/shared/presentation/utils/icon_card.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';
import 'package:foodappjava/features/shared/presentation/widgets/double_container_grid_view.dart';
import 'package:foodappjava/features/shared/presentation/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static String name = '/search-screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  List<String> keywords = [
    'Burger',
    'Sandwich',
    'Pizza',
    'Hamburger',
    'Coffee',
  ];

  @override
  void initState() {
    _searchController.addListener(() {
      setState(() {});
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyBackButton(),
        title: Text("Search", style: TextStyle(fontSize: 17)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/Cart.svg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchField(
                hintText: 'Search Food',
                controller: _searchController,
                focusNode: _focusNode,
              ),
              const SizedBox(height: 18),
              Text(
                "Recent Keywords",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 18),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: keywords.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, SearchResultScreen.name,arguments: keywords[index]);
                      },
                      child: Chip(
                        label: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 5,
                          ),
                          child: Text(keywords[index]),
                        ),
                        color: WidgetStatePropertyAll(Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: AppColors.chipBorderGrey,
                            width: 2,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 6);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Suggested Restaurants",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 18),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AppColors.themeGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Image")),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pansi Restaurant",
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.3,
                              ),
                            ),
                            IconCard.ratingCard(rating: '4.3'),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
              Divider(),
              const SizedBox(height: 20),
              Text(
                "Popular Fast Food",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 80),
              DoubleContainerGridView(title: "European Pizza",restaurantName: "Uttora Coffee House",imageUrl: '',),

            ],
          ),
        ),
      ),
    );
  }
}

