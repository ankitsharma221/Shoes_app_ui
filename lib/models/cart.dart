import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'The foreard-thinking design of his latest signature shoe.',
      imagePath: 'lib/images/image2.png',
    ),
    Shoe(
      name: 'Air Jordans',
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance your game.',
      price: '220',
      imagePath: 'lib/images/image1.png',
    ),
    Shoe(
      name: 'KD Treys',
      description:
          'The KD Trey 5 VIII features soft, responsive foam cushioning paired with multidirectional traction for control.',
      price: '240',
      imagePath: 'lib/images/image3.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      description:
          'The Kyrie 6 is made with lightweight fabric and has a wide strap across the top to lock you in.',
      price: '190',
      imagePath: 'lib/images/image4.png',
    ),
  ];

  //list of items in cart

  List<Shoe> usercart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return usercart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    usercart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    usercart.remove(shoe);
    notifyListeners();
  }
}
