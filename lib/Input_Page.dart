import 'package:flutter/material.dart';
import 'Repeate_contanier.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeateTextIcon.dart';
enum Gender {
  male,
  female,
}
const activationcolor = Color(0xFF111328);
const deactivationcolor = Color(0xFF1D1E33);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactivationcolor;
  /*Color maleColor = deactivationcolor;
  Color femaleColor = deactivationcolor;
  void updateColor(Gender genderType) {
    if (genderType == Gender.male) {
@@ -28,7 +28,8 @@ class _InputPageState extends State<InputPage> {
      maleColor = deactivationcolor;
      femaleColor = activationcolor;
    }
  }
  }*/
  Gender selectGender;

  @override
  Widget build(BuildContext context) {
    @@ -45,11 +46,14 @@ class _InputPageState extends State<InputPage> {
    child: GestureDetector(
    onTap: () {
    setState(() {
    updateColor(Gender.male);
    //updateColor(Gender.male);
    selectGender = Gender.male;
    });
    },
    child: Repeate_contanier(
    colors: maleColor,
    colors: selectGender == Gender.male
    ? activationcolor
        : deactivationcolor,
    cardWidge: RepeateTextIcon(
    iconData: FontAwesomeIcons.male,
    Label: "MALE",
    @@ -61,11 +65,14 @@ class _InputPageState extends State<InputPage> {
    child: GestureDetector(
    onTap: () {
    setState(() {
    updateColor(Gender.female);
    //updateColor(Gender.female);
    selectGender = Gender.female;
    });
    },
    child: Repeate_contanier(
    colors: femaleColor,
    colors: selectGender == Gender.female
    ? activationcolor
        : deactivationcolor,
    cardWidge: RepeateTextIcon(
    iconData: FontAwesomeIcons.female,
    Label: "FEMALE",
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    Expanded(
    child: Repeate_contanier(
    colors: Color(0xFF1D1E33),
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