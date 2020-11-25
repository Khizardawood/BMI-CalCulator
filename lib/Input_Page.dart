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

  Gender selectGender;
  int slider_height = 180;
  int slider_weight = 20;

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

    child: Repeate_contanier(
    onpressed: () {
    setState(
    () {
    selectGender = Gender.female;
    },
    );
    },
    colors: selectGender == Gender.female
    ? activationcolor
        : deactivationcolor,
    cardWidge: RepeateTextIcon(
    iconData: FontAwesomeIcons.female,
    Label: "FEMALE",
    ),
    ),
    //),
    ),
    ],
    ),
    ),

    Expanded(
    child: Row(
    children: [
    Expanded(
    child: Repeate_contanier(
    cardWidge: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'WEGHT',
    style: ConstentTextLabel,
    ),
    Text(slider_weight.toString(),
    style: ConstentTextLabe2),



    int sliderage = 10;

    ],
    ),
    colors: Color(0xFF1D1E33),
    ),
    ),
    Expanded(
    child: Repeate_contanier(

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    RoundIcon(
    icondata: FontAwesomeIcons.minus,
    onPress: () {
    setState(() {
    slider_weight--;
    });
    },
    ),
    SizedBox(width: 5),
    RoundIcon(
    icondata: FontAwesomeIcons.plus,
    onPress: () {
    setState(() {
    slider_weight++;
    });
    },
    ),
    ],
    )
    ],
    ),
    colors: Color(0xFF1D1E33),
    ),
    ),
    Expanded(
    child: Repeate_contanier(
    cardWidge: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('AGE', style: ConstentTextLabel),
    Text(sliderage.toString(), style: ConstentTextLabe2),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    RoundIcon(
    icondata: FontAwesomeIcons.minus,
    onPress: () {
    setState(() {
    sliderage--;
    });
    },
    ),
    SizedBox(width: 5),
    RoundIcon(
    icondata: FontAwesomeIcons.plus,
    onPress: () {
    setState(() {
    sliderage++;
    });
    },
    ),
    ],
    )
    ],
    ),


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

Container(
color: Colors.red,
margin: EdgeInsets.only(top: 10),
height: 80.0,
)

Expanded(
child: Repeate_contanier(
cardWidge: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('AGE', style: ConstentTextLabel),
Text('$sliderage', style: ConstentTextLabe2),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
RoundIcon(
icondata: FontAwesomeIcons.minus,
onPress: () {
setState(() {
sliderage--;
});
},
),
SizedBox(width: 5),
RoundIcon(
icondata: FontAwesomeIcons.plus,
onPress: () {
setState(() {
sliderage++;
});
},
),
],
)
],
),
colors: Color(0xFF1D1E33)),
),

],
),
);
}
}

class RoundIcon extends StatelessWidget {
  RoundIcon({@required this.icondata, this.onPress});
  final IconData icondata;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icondata,
        color: Colors.black,
      ),
      onPressed: onPress,
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 45.0, width: 45.0),
      shape: CircleBorder(),
      fillColor: Colors.white,
    );
  }
}