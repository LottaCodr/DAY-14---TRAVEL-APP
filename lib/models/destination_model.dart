import 'activity_model.dart';


class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities
});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/capital.jpg',
    name: 'The Stadium',
    type: 'Tourist Attraction',
    startTimes: ['9:00am', '11:00 am'],
    rating: 5,
    price: 30,
  ),

  Activity(
    imageUrl: 'assets/images/lagos.jpg',
    name: 'The Stadium',
    type: 'Tourist Attraction',
    startTimes: ['9:00am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/capital.jpg',
    name: 'The Stadium',
    type: 'Tourist Attraction',
    startTimes: ['9:00am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/capital.jpg',
    name: 'The Stadium',
    type: 'Tourist Attraction',
    startTimes: ['9:00am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/capital.jpg',
    name: 'The Stadium',
    type: 'Tourist Attraction',
    startTimes: ['9:00am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/capital.jpg',
    name: 'The Stadium',
    type: 'Tourist Attraction',
    startTimes: ['9:00am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
];

List<Destination> destination =[
  Destination(
      imageUrl: 'lib/assets/images/lag1.png',
      city: 'Lagos',
      country: 'Nigeria',
      description: 'Visit the Former Capital of African Giant',
      activities: activities
  ),
  Destination(
      imageUrl: 'lib/assets/images/abuja01.jpg',
      city: 'Abuja',
      country: 'Nigeria',
      description: 'Visit the Current Capital of African Giant',
      activities: activities
  ),

  Destination(
      imageUrl: 'lib/assets/images/abuja01.jpg',
      city: 'Port Harcourt',
      country: 'Nigeria',
      description: 'Explore PH city',
      activities: activities
  ),
  Destination(
      imageUrl: 'lib/assets/images/abuja01.jpg',
      city: 'Jos',
      country: 'Nigeria',
      description: 'Witness winter in the Pleatue',
      activities: activities
  ),
  Destination(
      imageUrl: 'lib/assets/images/abuja01.jpg',
      city: 'Calabar',
      country: 'Nigeria',
      description: 'Have you been to my city called Calabar?',
      activities: activities
  ),
];