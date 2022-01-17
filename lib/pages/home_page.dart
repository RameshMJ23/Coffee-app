import 'package:flutter/material.dart';
import 'package:ui4/widgets/monthly_widget.dart';
import 'package:ui4/widgets/packet_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color(0xffF5F0E6),
                child: Column(
                  children: [
                    Container(
                      height: height*0.23,
                      width: double.infinity,
                      color: Colors.orangeAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Ngo",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Pi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 100.0,
                                width: double.infinity,
                                child: Stack(
                                  children: [
                                    const Center(
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Text(
                                          "Top Pick",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17.0
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 30.0,
                                        width: 6.0,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffF5C168),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                bottomLeft: Radius.circular(10.0)
                                            )
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 100,
                                child:const RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    "Trending",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 100,
                                child: const RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    "Latest",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.grey
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          /// Order of rendering
                          ///
                          /// Why spaceBetween is not working?
                          ///
                          /// How to move the store icon to the end?
                          ///
                          /// May be loosening  the fit of Expanded widget could make it possible?
                          ///
                          /// Made possible by adding Expanded
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Container(
                              padding: const EdgeInsets.all(5.0),
                              height: 40.0,
                              width: 40.0,
                              child: const Image(
                                image: AssetImage(
                                    "assets/store.png"
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment,
                    children: [
                      Row(
                        children: const [

                          /// Why Coffee(app bar) align itself to the center even after specifiying
                          /// main axis alignment as start
                          /// 
                          Text(
                            "Coffee",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0
                            ),
                          ),
                          Spacer(),
                          Image(
                            image: AssetImage(
                              "assets/search.png"
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/filter.png"
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      MonthlyWidget(),
                      PacketWidget(
                        asset: "assets/pocket 1.png",
                        country: "Lemberk",
                        name: "Pine Blend",
                        price: "5.2",
                        shape: "assets/shapes1.png",
                        heroTag: "kapal1",
                      ),
                      PacketWidget(
                        asset: "assets/pocket 2.png",
                        country: "Indonesia",
                        name: "Kapal Air",
                        price: "6.8",
                        shape: "assets/shapes2.png",
                        heroTag: "Kapal Air",
                      ),
                      PacketWidget(
                        asset: "assets/pocket 3.png",
                        country: "Japan",
                        name: "JCO Original",
                        price: "5.7",
                        shape: "assets/shapes3.png",
                        heroTag: "kapal2",
                      ),
                      PacketWidget(
                        asset: "assets/pocket 1.png",
                        country: "India",
                        name: "Authentic Roast",
                        price: "5.8",
                        shape: "assets/shapes1.png",
                        heroTag: "kapal3",
                      )
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
