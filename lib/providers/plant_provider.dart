import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantapp/model/plant_model.dart';
import 'package:plantapp/services/plant_service.dart';

final serviceProvider = StateProvider<PlantService>((ref) {
  return PlantService();
});

final fetchStreamProvider = StreamProvider<List<PlantModel>>((ref) async* {
  final getData = FirebaseFirestore.instance
      .collection("plants")
      .snapshots()
      .map((event) => event.docs
          .map((snapshot) => PlantModel.fromSnapshot(snapshot))
          .toList());
  yield* getData;
});
