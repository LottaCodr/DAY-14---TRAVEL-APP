import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveller/models/activity_model.dart';
import '../models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({super.key, required this.destination});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow:  const [BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6),]
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(image: AssetImage(widget.destination.imageUrl),
                    fit: BoxFit.cover,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: ()=> Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.black,),
                    Row(
                      children: [
                        IconButton(
                          onPressed: ()=> Navigator.pop(context),
                          icon: const Icon(Icons.search),
                          iconSize: 30,
                          color: Colors.black,),

                        IconButton(
                          onPressed: ()=> Navigator.pop(context),
                          icon: const Icon(FontAwesomeIcons.arrowDownWideShort),
                          iconSize: 25,
                          color: Colors.black,),

                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  left: 20,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.destination.city,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 35,
                            letterSpacing: 1.2,
                            color: Colors.white
                        ),),
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 15.0 ,
                            color: Colors.white70,),
                          const SizedBox(width: 5),
                          Text(widget.destination.country,
                            style: const TextStyle(
                                color: Colors.white70,
                              fontSize: 20
                            ),),
                        ],
                      )
                    ],
                  ),
              ),
              const Positioned(
                  right: 20,
                  bottom: 20,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white70,
                  ))
            ],
          ),
          
          Expanded(
            child: ListView.builder(
                itemCount: widget.destination.activities.length,
                itemBuilder: (BuildContext context, int index){
                  Activity activity = widget.destination.activities[index];
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(activity.name,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600

                                    ),),
                                    Column(
                                      children: [
                                        Text('\$${activity.price}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 22
                                          ),
                                        ),

                                        const Text('per pax',
                                          style:  TextStyle(
                                              color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //_buildRatingStars(activity.rating),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Container(
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).accentColor,
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          alignment: Alignment.center,
                                          child: Text( activity.startTimes[0]),

                                        ),
                                        const SizedBox(width: 10,),

                                        Container(
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Theme.of(context).accentColor,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          alignment: Alignment.center,
                                          child: Text( activity.startTimes[1]),

                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
