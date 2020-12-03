import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'results.dart';

class Screen1 extends StatefulWidget {





  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var units = 400;


TextEditingController pri = new TextEditingController(text:"200");

  String kilow = "";
  String uni = "" ;
  String mon= "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SolarHouse')),
      ),
      body: Column(

        children: <Widget>[
          Expanded(child: Reusablecard(
            margin: EdgeInsets.all(5.0),
            card: SingleChildScrollView(

              child: Column(

              children: <Widget>[
              Text('\nSelect Your Amont : ', style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(


                  onChanged: (String text){

                    setState(() {
                     var mval = 2*num.parse(text);
                     units = mval;

                     // var x = units/2;
                     // text = x.toString();



                    });
                  },
                  controller: pri,
                  keyboardType: TextInputType.number,

                  style: TextStyle(
                    fontSize: 25,
                  ),
                  decoration: InputDecoration(
                    hoverColor: Colors.teal,
                    labelText: 'Rs :' , labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                    enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.transparent,),
                    borderRadius: BorderRadius.all(Radius.circular(30),),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent,),
                      borderRadius: BorderRadius.all(Radius.circular(30),),
                    ),
                    hintText: "Enter Your Bill Amount",
                    filled: true,
                    fillColor: Color(0x291d1e33),
                ),
                ),
              ),
        ],
      ),
            ),
            color: Colors.transparent,),),
          Expanded(
            flex: 2,
            child: Reusablecard(
              card: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text('How Many Units :' , style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(units.toString() , style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                        Text('Units'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                         thumbColor: Colors.yellowAccent,
                          activeTrackColor: Colors.deepOrangeAccent,
                          overlayColor: Colors.deepOrange,

                          thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
    ),
                      child: Slider(

                          value: units.toDouble(),
                          min: 1.0,
                          max: 1000.0,
                        activeColor: Colors.yellowAccent,
                        inactiveColor: Colors.black,
                        onChanged: (double newValue){
                            setState(() {

                              var x = newValue/2;
                              pri.text = x.toStringAsFixed(0);
                              units = newValue.round();
                              
                              var y = newValue*2;
                              kilow = y.toStringAsFixed(0);



                            });

                        },
                      ),
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.all(15.0),
              color: Color(0x291d1e33),
            ),
          ),
          Expanded(child: Reusablecard(
            card: SingleChildScrollView(
              child: Column(
    children: <Widget>[
      Text('Kilowatt', style: TextStyle(
        color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
      ),
      Container(
        child: Text( kilow, style: TextStyle(
          color: Colors.black,
          fontSize: 60.0,
          fontWeight: FontWeight.bold,),
      ),),
    ],
    ),
            ),
             margin: EdgeInsets.all(15.0),
             color: Colors.transparent,
          ),
          ),
        ],
      ),
    );
  }

}




