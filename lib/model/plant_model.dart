
import 'package:cloud_firestore/cloud_firestore.dart';

class PlantModel {
  String? DocID;
  final String? title;
  final String? country;
  final int? price;
  final String? image;
  PlantModel({
    this.DocID,
    this.title,
    this.country,
    this.price,
    this.image
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'DocID': DocID,
      'title': title,
      'country': country,
      'price': price,
      'image': image,
    };
  }

  factory PlantModel.fromMap(Map<String, dynamic> map) {
    return PlantModel(
      DocID: map['DocID'] != null ? map['DocID'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      country: map['country'] != null ? map['country'] as String : null,
      price: map['price'] != null ? map['price'] as int : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

    factory PlantModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    return PlantModel(
      DocID: doc.id,
      title: doc['title'] != null ? doc['title'] as String : null,
      country: doc['country'] != null ? doc['country'] as String : null,
      price: doc['price'] != null ? doc['price'] as int : null,
      image: doc['image'] != null ? doc['image'] as String : null,
    );
  }
}
