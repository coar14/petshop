import 'package:flutter/material.dart';

const Color defaultColor = Color.fromARGB(0, 232, 190, 18);

class PetShopImg {
  static const String petShopImg = "assets/cats/";
  static const String imgAsset = "assets/";

  static const String cart = "${imgAsset}cart.png";
  static const String catalog = "${imgAsset}catalog.png";
  static const String home = "${imgAsset}home.png";
  static const String profile = "${imgAsset}profile.png";
  static const String mglass = "${imgAsset}mglass.png";

  static const String cat1 = "${petShopImg}persianCat.png";
  static const String cat2 = "${petShopImg}sphinxCat.png";
  static const String cat3 = "${petShopImg}bengalCat.png";
  static const String cat4 = "${petShopImg}abynissianCat.png";
  static const String cat5 = "${petShopImg}burrmeseCat.png";
  static const String cat6 = "${petShopImg}russianBlueCat.png";
}

class Pet {
  int id;
  double price;
  String name;
  String weight;
  String height;
  String color;
  String desc;
  String location;
  String time;
  String imagePath;

  Pet(
      {required this.id,
      required this.name,
      required this.weight,
      required this.height,
      required this.color,
      required this.desc,
      required this.location,
      required this.time,
      required this.price,
      required this.imagePath});

  get quantity => null;
}

final List<Pet> PETS = [
  Pet(
      id: 0,
      name: 'Persian Cat',
      weight: '4.5 kg',
      height: '26 cm',
      color: 'White',
      desc:
          'Known for their long, flowing fur, sweet faces, and gentle personalities. Persians are lap cats who enjoy a luxurious lifestyle. They require regular grooming to maintain their coat and can be prone to breathing difficulties due to their flat faces.',
      location: 'USA',
      time: '1hr',
      price: 85.00,
      imagePath: PetShopImg.cat1),
  Pet(
      id: 1,
      name: 'Sphinx Cat',
      weight: '3.5 kg',
      height: '22 cm',
      color: 'Dark pink',
      desc:
          'The Sphinx cat, hairless and charming, boasts a velvety skin in various colors and patterns. Playful and affectionate, they capture hearts with their unique appearance and lively personalities.',
      location: 'Canada',
      time: '8m',
      price: 37.00,
      imagePath: PetShopImg.cat2),
  Pet(
      id: 2,
      name: 'Bengal Cat',
      weight: '5 kg',
      height: '36 cm',
      color: 'Brown spotted',
      desc:
          'Famous for their stunning leopard-like markings. Bengals are athletic, intelligent, and adventurous explorers. Often quite vocal, they can be demanding of attention and may get into mischief if not sufficiently stimulated.',
      location: 'Canada',
      time: '10m',
      price: 74.00,
      imagePath: PetShopImg.cat3),
  Pet(
      id: 3,
      name: 'Abyssinian Cat',
      weight: '3.6 kg',
      height: '32 cm',
      color: 'Ruddy',
      desc:
          'Ticked fur gives them an exotic appearance, as if each hair is dipped in multiple colors. Abyssinians are known for their intelligence, agility, and playful antics.  They are curious and outgoing, needing plenty of interactive play and space to explore.',
      location: 'Canada',
      time: '8m',
      price: 65.00,
      imagePath: PetShopImg.cat4),
  Pet(
      id: 4,
      name: 'Burmese Cat',
      weight: '4 kg',
      height: '32 cm',
      color: 'Sable',
      desc:
          'Glossy fur and beautiful golden eyes make Burmese cats appear quite regal. They are friendly, vocal, and crave affection. Some Burmese cats can be quite talkative and may even try to "help" with whatever task youre doing.',
      location: 'Canada',
      time: '12m',
      price: 45.00,
      imagePath: PetShopImg.cat5),
  Pet(
      id: 5,
      name: 'Russian Blue Cat',
      weight: '4.2 kg',
      height: '28 cm',
      color: 'Bluish-gray',
      desc:
          'Their plush, bluish-gray coat and emerald green eyes create a striking look. Russian Blues are reserved yet affectionate and enjoy a predictable routine. They tend to be shy with strangers but form strong bonds with their chosen humans.',
      location: 'Canada',
      time: '8m',
      price: 80.00,
      imagePath: PetShopImg.cat6),
];
