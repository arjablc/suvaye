import 'package:flutter/material.dart';

import '../../controller/services_controller.dart';

class ServicesSection extends StatefulWidget {
  const ServicesSection({
    super.key,
  });

  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
  int _activePage = 0;
  final ServicesController controller = ServicesController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.servicesList.length,
              itemBuilder: (context, index) {
                setState(() {
                  _activePage = index;
                });
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        controller.servicesList[index].serviceTitle,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        controller.servicesList[index].serviceDescription,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
