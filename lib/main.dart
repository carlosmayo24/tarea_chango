import 'package:flutter/material.dart';
import 'package:all_sensors/all_sensors.dart';

void main()
{
  runApp( TareaChango());
}

class TareaChango extends StatefulWidget
{
  @override
  _TareaChangoState createState() => _TareaChangoState();
}

class _TareaChangoState extends State<TareaChango>
{
  //variables
  late double _x, _y;
  late double x;
  late double y;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    accelerometerEvents.listen((event)
    {
      setState(() {
        x = (event.x);
        y = (event.y);
      });

    });

  }

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        home: Scaffold
          (
          appBar: new AppBar(title: Text('Mono Movimiendose'),centerTitle: true, shadowColor: Colors.black87,backgroundColor: Colors.lightGreen,toolbarHeight: 50, titleTextStyle: TextStyle(fontSize: 25),),
          body: Container
                (
                  child:  Stack
                    (
                        children:
                        [
                              Image
                              (
                                  image: NetworkImage('https://img.freepik.com/vector-gratis/composicion-paisaje-dibujos-animados-selva-tropical-lianas-trepadoras-follaje-suculento-fondo-palmeras-que-desvanecen_1284-58612.jpg?size=626&ext=jpg'),
                                   fit:BoxFit.fill ,
                                   height: double.infinity,

                              ),

                                 AnimatedContainer
                                   (
                                   duration: Duration(milliseconds: 100),
                                   height: 200,
                                   width: 200,
                                   child: Positioned(
                                       child: FractionalTranslation
                                         (

                                               translation: Offset(x,.7),
                                               child:
                                               Image
                                                 (
                                                  image: AssetImage('lib/images/mono.png'),
                                                  ),
                                         )

                                       ),
                                 ),



                        ],
                    ),
                ),

          ),
      );
  }
}
