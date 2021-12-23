import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
        this.address,
        this.description,
        this.thumbNail,
        this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'Gloria Jeans',
      address: ' لاہور, Lahore, پنجاب 54000',
      description:
      'Coffee bar chain offering house-roasted direct-trade coffee, along with brewing gear & whole beans',
      locationCoords: LatLng(31.519982258672936, 74.29367644562831),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMC3KK3p36JI7SKekDAMqzHU8JmFTkkRgXgkvs0=w408-h708-k-no'
  ),
  Coffee(
      shopName: 'Howdy',
      address: 'Rooftop, 9c Building, 54000',
      description:
      'All-day Pakistani comfort eats in a basic diner-style setting',
      locationCoords: LatLng(31.510831263788464, 74.35036482516615),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipN9fQhqN2tGYb4clKj-ZvRfehAopHEKeh-uMdAJ=w408-h271-k-no'
  ),
  Coffee(
      shopName: 'Cafe Aylanto',
      address: '12 C1 ایم ایم عالم روڈ، ',
      description:
      'Small spot draws serious caffeine lovers with wide selection of brews & baked goods.',
      locationCoords: LatLng(31.517430242522806, 74.35190285585362),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipO1353oR0w4ajOOMA7WvLXGj-wFzrJMocAPDQm3=w408-h306-k-no'
  ),
  Coffee(
      shopName: 'The Coffee Bean & Tea Leaf',
      address: 'The Packages Mall 2nd Floor،',
      description:
      'Snazzy, compact Japanese cafe showcasing high-end coffee & sandwiches, plus sake & beer at night.',
      locationCoords: LatLng(31.477991222021263, 74.35308818766232),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNXqcW0rsJBXg447MAZiZ-09b6gg5TnGqdNh7Lf=w507-h240-k-no'
  ),
  Coffee(
      shopName: 'Arcadian Cafe',
      address: 'Sir Syed Rd, Block K Gulberg 2,',
      description:
      'Compact coffee & espresso bar turning out drinks made from direct-trade beans in a low-key setting.',
      locationCoords: LatLng(31.527643725481973, 74.34786754592162),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipM1Jl-iD_tAJt_vQT5-abzaVE5V60zZn0MBJ-So=w408-h271-k-no'
  )
];