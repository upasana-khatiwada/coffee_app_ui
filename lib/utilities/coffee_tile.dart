import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final List<String> images = [
    "images/cappachino.jpg",
    "images/latte.jpg",
    "images/milk.jpg",
    "images/cappachino.jpg",
  ];
  final List<String> ingredients = [
    "With Oat Milk",
    "With Cinnamon Powder",
    "With Chocolate Powder",
    "With Caramel Drizzle"
  ];
   final List<double> price = [4.29, 3.21, 6.46, 2.90];

   CoffeeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: ((context, index) {
          return Row(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 250,
                width: 160,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 135,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(children: [
                        const Text(
                          "Cappuccino",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                                height: 3,
                              ),
                              Text(
                                ingredients[index],
                                style: const TextStyle(
                                    color: Color(0xff919293), fontSize: 11),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                     r'$ ',
                                        style: TextStyle(
                                            color: Color(0xffd17842),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                  ),
                                   Text(
                                        "${price[index]}",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )


                                ],
                              )
                      ]),
                    )
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.only(left: 25.0, bottom: 25),
    //   child: Container(
    //     width: 180,
    //     height: 180,
    //     padding: const EdgeInsets.all(8),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(12),
    //       color: Colors.black54,
    //     ),
    //     child: Column(
    //       children: [
    //         ClipRRect(
    //           borderRadius: BorderRadius.circular(12),
    //           child: Image.asset('images/latte.jpg'),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               const Text(
    //                 'Latte',
    //                 style: TextStyle(
    //                   fontSize: 20,
    //                 ),
    //               ),
    //               Text(
    //                 'With almond milk',
    //                 style: TextStyle(
    //                   fontSize: 12,
    //                   color: Colors.grey.shade700,
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         Row(
    //           children: const [
    //             Icon(Icons.attach_money),
    //             Text('4.20',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
    //           ],
    //         )

    //         // Image.asset('images/cappachino.jpg'),
    //         // Image.asset('images/milk.jpg')
    //       ],
    //     ),
    //   ),
    // );
  }
}
