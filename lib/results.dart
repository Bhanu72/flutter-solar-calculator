import 'dart:math';
import 'package:flutter/material.dart';


class Calkw{
    Calkw({this.unitz , this.amount});

  final int unitz;
  final int amount;
  double a =2;


  double _kw;
  double _uni;

  String kilowatt(){

    double _kw = unitz*a;
    return _kw.toStringAsFixed(0);
  }

  String money(){
    double _uni = amount*a;
        return _uni.toStringAsFixed(1);

  }

  String Interpretation(){

    print('Kilowatt :' );
  }
}

