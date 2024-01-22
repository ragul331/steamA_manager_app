import 'package:flutter/material.dart';

class IrisAppBar extends StatelessWidget {
  const IrisAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 0, 11, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Image.asset('assets/images/iris_network.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: SizedBox(
              width: 170,
              height: 23.478,
              child: Image.asset('assets/images/steamA.png'),
            ),
          ),
        ],
      ),
    );
  }
}
