import 'package:flutter/material.dart';

import 'home_page.dart';

class DrinksPage extends StatefulWidget {
  const DrinksPage({super.key});

  @override
  State<DrinksPage> createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/coffee5.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: const TopWidgets(
                          icon: Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                      const TopWidgets(
                        icon: Icon(Icons.favorite_rounded),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class TopWidgets extends StatelessWidget {
  final Widget icon;
  const TopWidgets({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(5),
      ),
      child: icon,
    );
  }
}
