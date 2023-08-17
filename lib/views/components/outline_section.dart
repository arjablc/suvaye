import 'package:flutter/material.dart';

import '../../controller/outline_controller.dart';

class OutlinesGrid extends StatelessWidget {
  OutlinesGrid({
    super.key,
  });
  final OutlinesController _controller = OutlinesController();

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24),
      children: List.generate(
        _controller.outlineList.length,
        (index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _controller.outlineList[index].color),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  _controller.outlineList[index].iconUrl,
                  height: 40,
                  width: 40,
                ),
                Text(
                  _controller.outlineList[index].title,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
