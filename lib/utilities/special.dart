import 'package:flutter/material.dart';


class Special extends StatelessWidget {
  const Special({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
     
     child: Column(
            children: [
               SizedBox(
                height: 140,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
               const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                      image: const DecorationImage(image: AssetImage("images/latte.jpg"),
                      fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)
                  )
                )
            ],)

               )
            ],
          ),
    );
  }
}