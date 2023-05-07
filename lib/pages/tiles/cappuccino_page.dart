import 'package:coffeeui/pages/favorites.dart';
import 'package:coffeeui/pages/home_page.dart';
import "package:flutter/material.dart";

class CappuccinoPage extends StatefulWidget {
  const CappuccinoPage({super.key});

  @override
  State<CappuccinoPage> createState() => _CappuccinoPageState();
}

class _CappuccinoPageState extends State<CappuccinoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/images/coffee10.jpeg',
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeadingIcon(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey[500],
                        size: 18,
                      ),
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      }),
                    ),
                    LeadingIcon(
                      icon: Icon(
                        Icons.favorite_sharp,
                        color: Colors.grey[500],
                      ),
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FavoritesPage(),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Cappuccino",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "With Oat Milk",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 18, left: 10),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "(6.896)",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: const [
                                IconsContainer(
                                  icon: Icon(
                                    Icons.coffee,
                                    color: Colors.amber,
                                  ),
                                  iconLabel: "Coffee",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: IconsContainer(
                                    icon: Icon(
                                      Icons.water_drop,
                                      color: Colors.amber,
                                    ),
                                    iconLabel: "Milk",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: Container(
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child:
                                  const Center(child: Text("Medium Roasted")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconsContainer extends StatelessWidget {
  final Icon icon;
  final String iconLabel;

  const IconsContainer({
    required this.icon,
    required this.iconLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[900],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            icon,
            Text(
              iconLabel,
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeadingIcon extends StatelessWidget {
  final Icon icon;
  void Function()? onTap;

  LeadingIcon({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[900],
          ),
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
