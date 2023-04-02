import 'package:coffeeui/pages/coffee_tiles.dart';
import 'package:coffeeui/pages/coffee_type.dart';
import 'package:coffeeui/pages/specials_tiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffee
  final List coffeeType = [
    //[coffeeType] [selected]
    [
      'Cappuccino',
      true,
    ],
    [
      'Expresso',
      false,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Americano',
      false,
    ],
    [
      'Black Coffee',
      false,
    ],
  ];

  //selected coffee type method
  void coffeeTypeSelected(int index) {
    setState(() {
      for(int i = 0; i<coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.grid_view_rounded),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Find the best coffee for you",
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Find your coffee...',
                  focusedBorder: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeType: coffeeType[index][0], 
                    isSelected: coffeeType[index][1], 
                    onTap: (){
                      coffeeTypeSelected(index);
                    },
                  );
                },
              ),
            ),
            Container(
              height: 235,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/coffee10.jpeg',
                    coffeeType: 'Cappuccino',
                    milkType: 'With Almond Milk',
                    coffeePrice: '\$ 4.45',
                    coffeeRating: '4.0',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/coffee9.jpg',
                    coffeeType: 'Black Coffee',
                    milkType: '',
                    coffeePrice: '\$ 3.00',
                    coffeeRating: '4.3',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/coffee6.jpg',
                    coffeeType: 'Black Coffee',
                    milkType: '',
                    coffeePrice: '\$ 3.00',
                    coffeeRating: '4.0',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/coffee5.jpg',
                    coffeeType: 'Cappuccino',
                    milkType: 'With Dairy Milk',
                    coffeePrice: '\$ 4.95',
                    coffeeRating: '4.1',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/coffee14.jpeg',
                    coffeeType: 'Expresso',
                    milkType: '',
                    coffeePrice: '\$ 3.95',
                    coffeeRating: '4.0',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/coffee12.jpeg',
                    coffeeType: 'Americano',
                    milkType: '',
                    coffeePrice: '\$ 4.50',
                    coffeeRating: '4.5',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/images/coffee4.jpg',
                    coffeeType: 'Latte',
                    milkType: 'With Almond Milk',
                    coffeePrice: '\$ 4.00',
                    coffeeRating: '4.0',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Specials for you',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 330,
                color: Colors.transparent,
                child: ListView(
                  children: [
                    SpecialsTile(
                      imgPath: 'lib/images/coffee7.jpg',
                      specialsText: '5 Coffee Beans You should Try',
                    ),
                    SpecialsTile(
                      imgPath: 'lib/images/coffee1.jpg',
                      specialsText: '5 Facts About Coffee You Did\'nt Know',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
