import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/note.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key, required this.tovar,});

  final Tovar tovar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('АМНЯМ', style: TextStyle(fontSize: 24, color: Colors.white),),), backgroundColor: Colors.black,
      ),
      body: 
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255,255, 113, 205), borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.black, width: 3), 
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Image.asset(tovar.url, height: 300, width: 300,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(tovar.price, style: const TextStyle(fontSize: 36, color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(tovar.discription, style: const TextStyle(fontSize: 36, color: Colors.white),),
                ),
              ],
            ),
          ),
        ), backgroundColor: const Color.fromARGB(255, 139, 147, 255),
    );
  }
}