import 'package:flutter/material.dart';

import 'create_person_row.dart';

class PersonBasicDetails extends StatelessWidget {
  const PersonBasicDetails({
    super.key,
    required this.age,
    required this.country,
    required this.job,
  });

  final String age;
  final String country;
  final String job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CreatePersonInRow(
            stringKey: 'Age',
            value: age,
          ),
          const SizedBox(
            height: 4,
          ),
          CreatePersonInRow(
            stringKey: 'Country',
            value: country,
          ),
          const SizedBox(
            height: 4,
          ),
          CreatePersonInRow(
            stringKey: 'Job',
            value: job,
          ),
        ],
      ),
    );
  }
}
