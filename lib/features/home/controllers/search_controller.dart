import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodappjava/features/model/food_model.dart';
import 'package:get/get.dart';

class SearchController extends GetxController{


  Future<void> search(String keyword)async{
    final querysnapshot = await FirebaseFirestore.instance.collection('restaurants').get();
    final foodList = querysnapshot.docs.map((e){return Food.fromMap(e.data(), e.id);});

  }
}