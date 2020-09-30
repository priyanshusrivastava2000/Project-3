import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Apppage();
  }

}

class Apppage extends State<home> {
  final TextEditingController _weightController = new TextEditingController();
  int radiovalue ;
  String _text = "";
  double _result = 0.0;
  String _image = 'images/earth.png';
  void handleRadioValueChanged(int value){
    setState(() {
      radiovalue=value;
      switch(radiovalue){
        case 0:
          _result=calculateWeight(_weightController.text,0.06);
          _text= "Your Weight On Pluto is ${_result.toStringAsFixed(2)}";
          _image=  'images/pluto.png';
          break;
        case 1:
          _result=calculateWeight(_weightController.text,0.38);
          _text= "Your Weight On Mars is ${_result.toStringAsFixed(2)}";
          _image= 'images/mars.png';
          break;
        case 2:
          _result=calculateWeight(_weightController.text,0.91);
          _text= "Your Weight On Venus is ${_result.toStringAsFixed(2)}";
          _image= 'images/venus.png';
          break;
        case 3:
          _result=calculateWeight(_weightController.text,1.06);
          _text= "Your Weight On Saturn is ${_result.toStringAsFixed(2)}";
          _image= 'images/saturn.png';
          break;
        case 4:
          _result=calculateWeight(_weightController.text,2.34);
          _text= "Your Weight On Jupiter is ${_result.toStringAsFixed(2)}";
          _image= 'images/jupiter.png';
          break;
        case 5:
          _result=calculateWeight(_weightController.text,0.38);
          _text= "Your Weight On Mercury is ${_result.toStringAsFixed(2)}";
          _image= 'images/mercury.png';
          break;
        case 6:
          _result=calculateWeight(_weightController.text,0.92);
          _text= "Your Weight On Uranus is ${_result.toStringAsFixed(2)}";
          _image= 'images/uranus.png';
          break;
        case 7:
          _result=calculateWeight(_weightController.text,1.19);
          _text= "Your Weight On Neptune is ${_result.toStringAsFixed(2)}";
          _image= 'images/neptune.png';
          break;
        default:
          _text="Your Weight On Earth is ${_weightController.text}";
          _image='images/earth.png';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        title: new Text("Weight On A Planet", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: 20
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm), label: Text("Good Morning")),
          Container(

            margin: const EdgeInsets.all(15.0),

            child: ListView(

              children: <Widget>[

                new Container(
                  child:  new Image.asset('$_image'),
                  height: 150,
                  width: 200,
                ),
                new Container(

                  margin: const EdgeInsets.all(15.0),
                  alignment: Alignment.center,
                  child: new Column(
                    children: <Widget>[
                      new TextField(
                        controller: _weightController,
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                          labelText: 'Your Weight On Earth',
                          hintText: 'IN POUNDS',
                          icon: new Icon(Icons.person_outline)
                        ),
                      ),
                      new Padding(padding: new EdgeInsets.all(13.8)),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[

                          new Radio<int>(

                            activeColor: Colors.orangeAccent,
                              value: 0, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Pluto      ", style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                          ),),

                          new Radio<int>(
                            activeColor: Colors.orangeAccent,
                              value: 1, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Mars       ", style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),

                          new Radio<int>(

                            activeColor: Colors.orangeAccent,
                              value: 2, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Venus", style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),

                        ],
                      ),
                      new Padding(padding: new EdgeInsets.all(15.8)),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[

                          new Radio<int>(

                              activeColor: Colors.orangeAccent,
                              value: 3, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Saturn      ", style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),

                          new Radio<int>(
                              activeColor: Colors.orangeAccent,
                              value: 4, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Jupiter    ", style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),

                          new Radio<int>(

                              activeColor: Colors.orangeAccent,
                              value: 5, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Mercury", style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),

                        ],
                      ),
                      new Padding(padding: new EdgeInsets.all(15.8)),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[

                          new Radio<int>(

                              activeColor: Colors.orangeAccent,
                              value: 6, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Uranus", style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),

                          new Radio<int>(
                              activeColor: Colors.orangeAccent,
                              value: 7, groupValue: radiovalue, onChanged: handleRadioValueChanged),
                          new Text("Neptune", style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                      new Padding(padding: new EdgeInsets.all(10.8)),
                       new Container(
                         decoration: const BoxDecoration(
                           shape: BoxShape.rectangle,
                           border: Border(
                             top: BorderSide(width: 5.0, color: Colors.orangeAccent),
                             left: BorderSide(width: 2.0, color: Colors.orangeAccent),
                             right: BorderSide(width: 2.0, color: Colors.orangeAccent),
                             bottom: BorderSide(width: 5.0, color: Colors.orangeAccent),

                           )

                         ),
                         child: new Text(
                           _weightController.text.isEmpty ? " Please Enter Your Weight ": _text + "lbs ",
                           style: new TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                               fontSize: 20
                           ),)
                       )
                    ],
                  ),
                )
              ],

            ),
          ),
        ],
      ),
    );
  }

}

double calculateWeight(String weight, double multiplier) {
  if (int.parse(weight).toString().isNotEmpty && int.parse(weight)>0){
    return int.parse(weight)*multiplier;
  }
  else{
    print("WRONG");
    return int.parse("180")*0.38;
  }
}