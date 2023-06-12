import 'package:flutter/material.dart';
import 'package:coffee_app_ui/utilities/coffee_tile.dart';
import 'package:coffee_app_ui/utilities/special.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late TabController tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   leading: const Icon(Icons.menu),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.only(right: 8),
      //       child: Icon(Icons.person),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xffd17842),
        unselectedItemColor: const Color(0xff4d4f52),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: DefaultTabController(
        length: 6,
        child: SafeArea(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(20),
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 620,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xff1b2027),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.menu,
                            color: Color(0xff4d4f52),
                          ),
                        ),
                        Image.asset(
                          "images/latte.jpg",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Find the best coffee for you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xff141921),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Find your coffee...",
                            hintStyle:
                                const TextStyle(color: Color(0xff3c4046)),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey[600],
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TabBar(
                        isScrollable: true,
                        controller: tabController,
                        labelColor: const Color(0xffd17842),
                        labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelColor: const Color(0xff3c4046),
                        //indicator:  CircleTabIndicator(color: Color(0xffd17842), radius: 4),

                        tabs: const [
                          Tab(
                            text: "Cappuccino",
                          ),
                          Tab(
                            text: "Americano",
                          ),
                          Tab(
                            text: "Espresso",
                          ),
                          Tab(
                            text: "Mocha",
                          ),
                          Tab(
                            text: "Macchiato",
                          ),
                          Tab(
                            text: "Doppio",
                          ),
                        ]),

                    //wrapping with expanded is needed as it may affect the view with tabcontroller
                    Expanded(
                        child: TabBarView(controller: tabController, children: [
                      CoffeeTile(),
                      CoffeeTile(),
                      CoffeeTile(),
                      CoffeeTile(),
                      CoffeeTile(),
                      CoffeeTile(),
                    ])),
                    const Text(
                      "Special for you",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                  ],
                ),
              ),
              Special(),
            ],
          ),
        ),
      ),
    );
  }
}

// //search Bar
// Padding(
//   padding: const EdgeInsets.all(20),
//   child: TextField(
//     decoration: InputDecoration(
//       prefixIcon: const Icon(Icons.search),
//       hintText: 'Find your coffee',
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey.shade600),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey.shade600),
//       ),
//     ),
//   ),
// ),
// const SizedBox(
//   height: 25,
// ),
//Listview tile

// Expanded(
//   child: ListView(
//             scrollDirection: Axis.horizontal,

//             children:  const [
//   CoffeeTile(),
//   // CoffeeTile(),
//   // CoffeeTile(),
//             ],
//           ),
// )

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
