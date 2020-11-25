import 'package:flutter/material.dart';
import 'Repeate_contanier.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeateTextIcon.dart';
import 'constent_variable.dart';

enum Gender {
  male,
  female,
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  /*Color maleColor = deactivationcolor;
  Color femaleColor = deactivationcolor;
  void updateColor(Gender genderType) {
    if (genderType == Gender.male) {
      maleColor = activationcolor;
      femaleColor = deactivationcolor;
    }
    if (genderType == Gender.female) {
      maleColor = deactivationcolor;
      femaleColor = activationcolor;
    }
  }*/
  Gender selectGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      Expanded(
      child: Row(
      children: [
          Expanded(
          /*child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(Gender.male);
                        selectGender = Gender.male;
                      });
                    },*/
          child: Repeate_contanier(
          onpressed: () {
    setState(
    () {
    selectGender = Gender.male;
    },
    );
    },
      colors: selectGender == Gender.male
          ? activationcolor
          : deactivationcolor,
      cardWidge: RepeateTextIcon(
        iconData: FontAwesomeIcons.male,
        Label: "MALE",
      ),
    ),
    // ),
    ),
    Expanded(
    /*child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(Gender.female);
                        selectGender = Gender.female;
                      });
                    },*/
    child: Repeate_contanier(
    onpressed: () {
    setState(
    () {
    @@ -101,6 +100,12 @@
    Expanded(
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
    cardWidge: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('HEIGHT', style: ConstentTextLabel),
    ],
    ),
    ),
    ),
    Expanded(
    child: Row(
    children: [
    Expanded(
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
    ),
    ),
    Expanded(
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    );
    }
    }
    6  lib/RepeateTextIcon.dart
    @@ -1,4 +1,5 @@
    import 'package:flutter/material.dart';
    import 'constent_variable.dart';

    class RepeateTextIcon extends StatelessWidget {
    RepeateTextIcon({@required this.iconData, this.Label});
    @@ -17,10 +18,7 @@ class RepeateTextIcon extends StatelessWidget {
    SizedBox(height: 10),
    style: ConstentTextLabel,
    )
    ],
    );