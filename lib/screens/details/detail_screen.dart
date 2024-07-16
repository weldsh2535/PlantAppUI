import 'package:flutter/material.dart';
import 'package:plantapp/screens/details/components/body.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  const DetailScreen({super.key, required  this.image});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Body(image:widget.image),
    );
  }
}