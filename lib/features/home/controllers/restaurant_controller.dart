import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodappjava/features/model/food_model.dart';
import 'package:foodappjava/features/model/restaurant_model.dart';
import 'package:get/get.dart';

class RestaurantController extends GetxController{
  RxList<RestaurantModel> restaurats = <RestaurantModel>[].obs;
  String? error ;

  final _db = FirebaseFirestore.instance;

  @override
  void onInit() {

    super.onInit();
  }

  Future<void> fetchRestaurants() async {
    try {
      final snapshot = await _db.collection("restaurants").get();

      final List<RestaurantModel> data = await Future.wait(snapshot.docs.map((e) async {

        final menuSnapshot = await _db
            .collection('restaurants')
            .doc(e.id)
            .collection('menu')
            .get();

        final menu = menuSnapshot.docs
            .map((doc) => Food.fromMap(doc.data(), doc.id))
            .toList();

        return RestaurantModel.fromMap(e.data(), e.id, menu: menu);
      }).toList());
      restaurats.assignAll(data);
    } catch (e) {
      error = "Something went wrong: $e";
      print(error);
    }
  }
  // Future<void> fetchMenu(String restaurantId)async{
  //   try{
  //     final snapshot =await _db.collection("restaurants").doc(restaurantId).collection('menu').get();
  //     final menu = snapshot.docs.map((e){
  //       return Food.fromMap(e.data(), e.id);
  //     });
  //   }catch(e){
  //     error = 'Something went wrong';
  //   }
  // }



}