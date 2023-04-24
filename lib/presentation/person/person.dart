import 'package:basics/presentation/person/person_image_name.dart';
import 'package:flutter/material.dart';
import 'person_basic_details.dart';

class Person extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String age;
  final String country;
  final String job;
  final bool isFromAssets;

  const Person(
      {required this.name,
      required this.age,
      required this.country,
      required this.job,
      required this.imageUrl,
      required this.isFromAssets,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: Column(
          children: [ 
            PersonImageWithName(
              imageUrl: imageUrl,
              name: name,
              isFromAssets: isFromAssets,
            ),
            PersonBasicDetails(
              age: age,
              country: country,
              job: job, 
            ), 
          ],
        ),
      ),
    );
  }
}
