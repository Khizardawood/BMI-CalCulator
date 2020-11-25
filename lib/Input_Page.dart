import 'package:flutter/material.dart';
import 'Repeate_contanier.dart';

class InputPage extends StatefulWidget {
  @override
  @@ -56,16 +57,3 @@ class _InputPageState extends State<InputPage> {
  );
  }
}

class Repeate_contanier extends StatelessWidget {
  Repeate_contanier({@required this.colors});
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadiusDirectional.circular(15.0)),
    );
  }
}