import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class Futurepage extends StatefulWidget {
  const Futurepage({super.key});

  @override
  State<Futurepage> createState() => _FuturepageState();
}

var imagenumber = 0;

changeimage()
{
  imagenumber = Random().nextInt(4) +1;


}



class _FuturepageState extends State<Futurepage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
 
       
        children: [
           CircleAvatar(backgroundImage: AssetImage('images/image$imagenumber.png', ), radius: 80,),
          
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: (){ 
            setState(() {
              changeimage();
            });
            
          }, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
          child: const Text('Click To Know Your Future Car Now ', style: TextStyle(color: Colors.white),), ),
        ],
        
      
        
      
      ),
    );
  }
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('The Future', style: TextStyle(fontFamily: 'Doto', color: Colors.white),),
        ),
      body: const Futurepage(),
      )
    );
  }
}