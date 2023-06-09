class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  
  Hotel({
   required this.imageUrl,
   required this.name,
   required this.address,
   required this.price 
});
}

final List<Hotel> hotels = [
  Hotel(imageUrl: 'lib/assets/images/hotel1.jpg',
      name: 'Hotel01',
      address: '404 Great St',
      price: 300
  ),
  Hotel(imageUrl: 'lib/assets/images/hotel2.jpg',
      name: 'hotel O2',
      address: 'Near the other Hotel',
      price: 500)
];