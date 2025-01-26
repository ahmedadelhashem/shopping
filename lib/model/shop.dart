import 'package:flutter/material.dart';
import 'package:market/model/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: "shoes",
        price: '499.9',
        decription: 'Item description....',
        image: 'image/shoes.jpeg',),
    Product(
        name: "watch",
        price: '2999.9',
        decription: 'Item description..',
        image:'image/w.jpeg'),
    Product(
        name: "glases",
        price: '449.9',
        decription: 'Item description..',
        image: 'image/glasses.jpg'),
    Product(
        name: "T_shirt ",
        price: '399.9',
        decription: 'Item description..',
        image: 'image/images.jpeg'),
          Product(
        name: "T_shirt",
        price: '499.9',
        decription: 'Item description....',
        image: 'image/tshirh.jpeg',),
    Product(
        name: "watch",
        price: '2999.9',
        decription: 'Item description..',
        image:'image/wa.jpg'),
    Product(
        name: "shoes",
        price: '449.9',
        decription: 'Item description..',
        image: 'image/hoo.jpeg'),
    Product(
        name: "Tshirt",
        price: '399.9',
        decription: 'Item description..',
        image: 'image/aaa.jpeg'),
  ];
  final List _price=[
    ['499.9'], ['2999.9'], ['499.9'], ['399.9']  ];

  List<Product>_cart=[];
  List<Product>get shop=>_shop;
  List<Product>get cart=>_cart;
  List get price=>_price;
  void addtocart(Product item){
    _cart.add(item);
    notifyListeners();
  }
  void removefromcart(Product item){
    _cart.remove(item);
    notifyListeners();
  }

  String calculateTotal(){
    double Totalprice=0;
    for(int i=0;i<_cart.length;i++){
      Totalprice+=double.parse(_price[i][0]);
    }
    return Totalprice.toStringAsFixed(2);
  }
 final List<Product>_favourite=[];
 List<Product>get favourites=>_favourite;
  void toggleFavourite( Product item){
    if(_favourite.contains(item)){
      _favourite.remove(item);
    }
    else{
      _favourite.add(item);
    }
    notifyListeners();
  }
  bool isExist(Product product){
    final isExist=_favourite.contains(product);
    return isExist;
  }
  // static FavouriteProvider of(BuildContext context,)

}
