import 'package:flutter/material.dart';

class CoffeeDetails extends StatefulWidget {
  const CoffeeDetails({super.key});

  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: const [
          //     Icon(Icons.arrow_back_ios_new_outlined),
          //     Icon(Icons.favorite)
          //   ],
          // )
          // Image.asset("images/cappachino.jpg")
          Stack(
            children: [
              
              Image.asset("images/cappachino.jpg"),
              Positioned(
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(Icons.arrow_back_ios_new_outlined),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(Icons.favorite),
                            ),
                          ],
                        ),
                      ),
                      Container()
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
