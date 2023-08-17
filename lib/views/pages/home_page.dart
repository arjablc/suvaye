import 'package:flutter/material.dart';

import '../../controller/services_controller.dart';
import '../widgets/section_title.dart';
import '../widgets/services_section.dart';

class HomePageView extends StatelessWidget {
  HomePageView({
    Key? key,
  }) : super(key: key);

  final ServicesController _servicesController = ServicesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/logo.png"),
                const Text(
                  "Suvaye",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Badge(
                  child: Icon(Icons.notifications_outlined),
                ))
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Suvaye Tech",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              SectionTitle(
                actionTitle: "see more",
                action: null,
                sectionTitle: "Services",
              ),
              ServicesSection()
            ],
          ),
        ),
      ),
    );
  }
}
