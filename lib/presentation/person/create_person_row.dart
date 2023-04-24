import 'package:flutter/material.dart';

class CreatePersonInRow extends StatelessWidget {
  final String value;
  final String stringKey;

  const CreatePersonInRow({
    super.key,
    required this.stringKey,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            '$stringKey :',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Spacer(),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
