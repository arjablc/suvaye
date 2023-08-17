import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suvaye/constants/asset_paths.dart';

import '../components/bottom_nav_bar.dart';
import '../components/outline_section.dart';
import '../components/section_title.dart';
import '../components/services_section.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({
    Key? key,
  }) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Suvaye Tech",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const SectionTitle(
                actionTitle: "see more",
                action: null,
                sectionTitle: "Services",
              ),
              const ServicesSection(),
              const SizedBox(
                height: 20,
              ),
              const SectionTitle(
                  sectionTitle: "Outline", actionTitle: "See more"),
              SizedBox(height: 300, child: OutlinesGrid())
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
