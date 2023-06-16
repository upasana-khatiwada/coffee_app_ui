import 'package:flutter/material.dart';

class CoffeeDetails extends StatefulWidget {
  const CoffeeDetails({super.key});

  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c0f14),
      body: SingleChildScrollView(
        child: SafeArea(
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
                  Container(
                    height: 440,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage("images/cappachino.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              child:
                                  const Icon(Icons.arrow_back_ios_new_outlined),
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 36, 17, 10)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                                      child: Text(
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
                                        const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        RichText(
                                            text: const TextSpan(
                                                text: '4.5',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                ),
                                                children: <TextSpan>[
                                              TextSpan(
                                                  text: '  (6.9)',
                                                  style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14))
                                            ])),
                                        const SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                            height: 35,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "Medium Roasted",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white54,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(color: Colors.white54, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "A cappuccino is a coffee-based drink made primarily from espresso and milk.",
                    style: TextStyle(color: Color(0xff919296), fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Size",
                    style: TextStyle(
                        color: Color(0xff919296),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: Color(0xffb25e2b),
                          ),
                        ),
                        child: const Text(
                          "S",
                          style: TextStyle(
                            color: Color(0xffb86b3c),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: const Color(0xff141921),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text(
                          "M",
                          style: TextStyle(
                            color: Color(0xffb86b3c),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Container(
                        height: 37,
                        width: 110,
                        decoration: BoxDecoration(
                            color: const Color(0xff101419),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                            child: Text(
                          "L",
                          style: TextStyle(
                            color: Color(0xff919296),
                            fontSize: 18,
                          ),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  const Text(
                    "Price",
                    style: TextStyle(
                        color: Color(0xff919296),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text(
                        r'$',
                        style:
                            TextStyle(color: Color(0xffd17842), fontSize: 21),
                      ),
                      const Text(
                        " 4.20",
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                      const SizedBox(width: 70,),
                      MaterialButton( onPressed: () {},
                      height: 55,
                            minWidth: 200,
                            color: const Color(0xffd17842),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
