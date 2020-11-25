import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeateTextIcon.dart';

enum Gender {
  male,
  female,
}

const activationcolor = Color(0xFF111328);
const deactivationcolor = Color(0xFF1D1E33);

@@ -14,12 +19,12 @@ class InputPage extends StatefulWidget {
class _InputPageState extends State<InputPage> {
Color maleColor = deactivationcolor;
Color femaleColor = deactivationcolor;
void updateColor(int gender) {
if (gender == 1) {
void updateColor(Gender genderType) {
if (genderType == Gender.male) {
maleColor = activationcolor;
femaleColor = deactivationcolor;
}
if (gender == 2) {
if (genderType == Gender.female) {
maleColor = deactivationcolor;
femaleColor = activationcolor;
}
@@ -40,7 +45,7 @@ class _InputPageState extends State<InputPage> {
child: GestureDetector(
onTap: () {
setState(() {
updateColor(1);
updateColor(Gender.male);
});
},
child: Repeate_contanier(
@@ -56,7 +61,7 @@ class _InputPageState extends State<InputPage> {
child: GestureDetector(
onTap: () {
setState(() {
updateColor(2);
updateColor(Gender.female);
});
},
child: Repeate_contanier(
colors: femaleColor,
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