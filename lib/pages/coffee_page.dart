import 'package:flutter/material.dart';

class CoffeePage extends StatelessWidget {
  const CoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 400,
              color: Colors.grey,
              child: const Image(
                image: AssetImage('lib/images/coffee10.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ActionWidget(),
                  ActionWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(9),
      ),
    );
  }
}
