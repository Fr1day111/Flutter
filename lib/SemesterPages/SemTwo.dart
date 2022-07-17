import 'package:flutter/material.dart';
class SemTwoPage extends StatefulWidget {
  const SemTwoPage({Key? key}) : super(key: key);

  @override
  State<SemTwoPage> createState() => _SemTwoPageState();
}
var name='Unknown';
var fontFam='Splash';
var _isVis=false;
var slidervalue=0.0;
class _SemTwoPageState extends State<SemTwoPage> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Text('Hello'+' '+name,style: TextStyle(fontFamily: fontFam,fontSize: 40),),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){
                  setState((){
                    name='World';
                    fontFam='Finlandica';
                  });
                },
                child: Text('Change State'),
              ),
              SizedBox(width: 30,),
              TextButton(
                onPressed: (){
                  setState((){
                    name='Unknown';
                    fontFam='Splash';
                  });
                },
                child: Text('Change State'),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState((){
                _isVis=true;

              });
            }, child: Text('Visible')),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              setState((){
                _isVis=false;

              });
            }, child: Text('Not Visible')),
          ],
        ),
        Visibility(
          visible: _isVis,
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.all(15),
            child: Text('Now visible',style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
        ),
        Slider(value: slidervalue,
            min: 0,
            max: 100,
            label: slidervalue.toString(),
            onChanged: (value){
          setState((){
            slidervalue=value;
          });

        }),
        Text('Font Size='+slidervalue.round().toString(),style: TextStyle(fontSize: slidervalue,fontFamily: 'Splash'),),
      ],
    );
  }
}
