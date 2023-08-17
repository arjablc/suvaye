import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.sectionTitle,
    required this.actionTitle,
    this.action,
  }) : super(key: key);
  final String sectionTitle;
  final String actionTitle; //feel like this should be a widget but whatever
  final Function? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          sectionTitle,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: () => action,
            child: Row(
              children: [
                Text(
                  actionTitle,
                  style: const TextStyle(fontSize: 14, color: Colors.green),
                ),
                const Icon(
                  Icons.chevron_right_rounded,
                  size: 25,
                  color: Colors.green,
                )
              ],
            ))
      ],
    );
  }
}
