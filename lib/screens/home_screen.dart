import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveller/widgets/Destination_carousel.dart';
import 'package:traveller/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.parachuteBox,
    FontAwesomeIcons.motorcycle
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex =index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index ? Theme.of(context).colorScheme.secondary : Colors.deepOrange,
            borderRadius: BorderRadius.circular(30.0)),
      child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : Colors.grey
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        children:  [
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text("Explore Nigeria!",
              style:  TextStyle(
                fontSize: 30.0,
                fontWeight:  FontWeight.bold
              ),
            ),
          ),
          
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons.asMap().entries.map(
                    (MapEntry map) => _buildIcon(map.key),
            ).toList(),
          ),

          const SizedBox(height: 20,),
          const DestinationCarousel(),
          const SizedBox(height: 20,),
          const HotelCarousel(),
        ],
      ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState(() {
            _currentTab = value;
          });
        },
        items: const  [
          BottomNavigationBarItem(
                icon: Icon(Icons.search,
                size: 30 ,),
              label: "Search",
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank,
                size: 30 ,),
              label: 'Food',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              size: 30 ,),
            label: 'Home',
          ),

        ],
      ),

    );
  }
}
