import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/pages/cart.dart';
import 'package:fulfilsalesapp/pages/home.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Shop", "assets/icons/shop_icon.svg", 0, home()),
  // NavigatorItem("Explore", "assets/icons/explore_icon.svg", 1, ExploreScreen()),
  NavigatorItem("Cart", "assets/icons/cart_icon.svg", 2, CartPage()),
  // NavigatorItem(
      // "Favourite", "assets/icons/favourite_icon.svg", 3, FavouriteScreen()),
  // NavigatorItem("Account", "assets/icons/account_icon.svg", 4, AccountScreen()
  // ),
];
