import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveller/models/destination_model.dart';
import 'package:traveller/screens/destination_screen.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              const Text('Top Destinations',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:  FontWeight.bold,
                  letterSpacing: 1.5,
                ) ,),

              GestureDetector(
                onTap: (){},
                child: Text('See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight:  FontWeight.w600,
                    letterSpacing:  1,
                  ),),
              )
            ],
          ),
        ),

        Container(
          height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: destination.length,
          itemBuilder: (BuildContext context, int index){
            Destination destinations = destination[index];
            return GestureDetector(
              onTap:() => Navigator.push(context,
                  MaterialPageRoute(
                      builder: (_) => DestinationScreen(
                      destination: destinations,
                  ))) ,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 15,
                        child: Container(
                          height: 120.0,
                            width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Padding(
                            padding:  const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                              Text('${destinations.activities.length} activities',
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2
                              ),),
                              Text(destinations.description,
                              style: const TextStyle(
                                color: Colors.grey
                              ),)
                            ],),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0
                          ),
                          ]
                        ),

                        child: Stack(
                          children: [
                            Hero(
                              tag: destinations.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    height: 180,
                                    width: 180,
                                    image: AssetImage(destinations.imageUrl) ),
                              ),
                            ),

                            Positioned(
                                left: 10,
                                bottom: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(destinations.city,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                    letterSpacing: 1.2,
                                    color: Colors.white
                                  ),),
                                  Row(
                                    children: [
                                      const Icon(
                                        FontAwesomeIcons.locationArrow,
                                      size: 12,
                                      color: Colors.white,),
                                      SizedBox(width: 5,),
                                      Text(destinations.country,
                                      style: const TextStyle(
                                        color: Colors.white
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
              ),
            );
          },
        ),)
      ],
    );
  }
}
