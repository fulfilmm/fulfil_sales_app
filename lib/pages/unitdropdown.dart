import 'package:flutter/material.dart';


import '../models/Product.dart';


class UnitDropDown extends StatefulWidget {
  final List<Unit> units;
  final Product product;

  const UnitDropDown({Key? key, required this.units, required this.product})
      : super(key: key);

  @override
  _UnitDropDownState createState() =>
      _UnitDropDownState(this.units, this.product);
}

class _UnitDropDownState extends State<UnitDropDown> {
  List<Unit> unit;
  Product product;
  _UnitDropDownState(this.unit, this.product);
  String _select_unit='';
  _loadCategories(_select_unit, unit) async {
    var price;

    unit.forEach((un) {
      if (un.id == _select_unit) {
        price = int.parse(un.price == null ? '0' : un.price);
      }
    });
    product.price = price;
    
  }
  @override
  void initState(){
    _select_unit=unit[0].id;
    product.unit_id=_select_unit;
    _loadCategories(_select_unit, unit);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Not necessary for Option 1
      value: _select_unit,
      onChanged: (newValue) {
        setState(() {
          _select_unit = newValue!;
          product.unit_id=newValue;
        });
       _loadCategories(_select_unit, unit);
        
        
      },
      items: unit.map((unit) {
        return DropdownMenuItem(
          child: new Text(unit.unit_name),
          value: unit.id,
        );
      }).toList(),
    );
  }
}
