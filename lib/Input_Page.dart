import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
          children: [
      Expanded(
      child: Row(
      children: [
          Expanded(
          child: Container(
          margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadiusDirectional.circular(15.0)),
      child: Repeate_contanier(
        colors: Color(0xFF1D1E33),
      ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
    color: Color(0xFF1D1E33),
    borderRadius: BorderRadiusDirectional.circular(15.0)),
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
    ),
    ),
    ],
    ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
    color: Color(0xFF1D1E33),
    borderRadius: BorderRadiusDirectional.circular(15.0)),
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
    ),
    ),
    Expanded(
    child: Row(
    children: [
    Expanded(
    child: Container(
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
    color: Color(0xFF1D1E33),
    borderRadius: BorderRadiusDirectional.circular(15.0)),
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
    ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
    color: Color(0xFF1D1E33),
    borderRadius: BorderRadiusDirectional.circular(15.0)),
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
    ),
    ),
    ],
    @@ -71,3 +56,16 @@ class _InputPageState extends State<InputPage> {
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