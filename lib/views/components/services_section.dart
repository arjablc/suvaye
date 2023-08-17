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
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (currentPage) => setState(() {
                    _activePage = currentPage;
                  }),
              scrollDirection: Axis.horizontal,
              itemCount: controller.servicesList.length,
              itemBuilder: (context, index) {
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
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        controller.servicesList[index].serviceDescription,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                );
              }),
        ),
        DotsIndicator(number: 3, activePage: _activePage)
      ],
    );
  }
}

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.number,
    required int activePage,
  }) : _activePage = activePage;

  final int number;
  final int _activePage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          number,
          (index) => Padding(
                padding: const EdgeInsets.only(left: 3, right: 3.0, top: 10),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: (_activePage == index)
                      ? const Color(0xff98A2B3)
                      : const Color(0xffD9D9D9),
                ),
              )),
    );
  }
}
