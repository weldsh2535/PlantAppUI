import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class PlantService {
  final plantCollection = FirebaseFirestore.instance.collection('plants');

  void getPlants(){
    plantCollection.get();
  }
}