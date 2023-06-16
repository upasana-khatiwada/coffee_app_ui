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
                  child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 36, 17, 10).withOpacity(0.9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Cappuccino",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "images/coffee-beans.png",
                                    color: Colors.orange.shade600,
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "images/drop.png",
                                    color: Colors.orange.shade600,
                                  ),
                                ),
                              ],
                            ),
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child:  Text(
                                "With oat milk",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star,color: Colors.orange,),
                                RichText(text: const TextSpan(
                                  text: '4.5',
                                  style: TextStyle(color: Colors.white,fontSize: 18,),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '  (6.9)',
                                      style: TextStyle(color: Colors.white54,fontSize: 14)
                                    )
                                  ]
                                )),
                                const SizedBox(width: 130,),
                                Container(
                                  height:35,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Center(
                                    child: Text("Medium Roasted",style: TextStyle(fontSize: 15,color: Colors.white54,
                                    decoration: TextDecoration.none),),
                                  )
                                ),
                               
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
