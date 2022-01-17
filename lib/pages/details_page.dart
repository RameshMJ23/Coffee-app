import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui4/widgets/overview_widget.dart';
import 'package:ui4/widgets/title_widget.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 424,
                child: Row(
                  children: [
                    Container(
                      height: 424,
                      width: 325,
                      decoration: const BoxDecoration(
                          color: Color(0xffF5F0E6),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/lines.png"
                            ),
                          )
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 60, 20, 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 40.0,
                                  ),
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Text(
                                  "Indonasia",
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Text(
                                  "Kapal Air",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(5.0)
                                  ),
                                  width: 120,
                                  /// Extends because of the whole padding given to the column
                                  child: const Center(
                                    child: Text(
                                      "Roasted Gold",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Text(
                                  "\$6.5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            bottom: -50,
                            right: -50,
                            child: Hero(
                              tag: "Kapal Air",
                              child: Image(
                                image: AssetImage(
                                    "assets/pocket-kapal.png"
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -30,
                            left: 45.0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Center(
                                child: Row(
                                  children: const [
                                    Text(
                                      "Add",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/add-to-cart.png"
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                        clipBehavior: Clip.none,
                      ),

                    ),

                    /// Why just Column did not work by occupying the space
                    /*Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [

                      ],
                    )*/
                    Container(
                      width: MediaQuery.of(context).size.width - 325,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Column(
                          children: const[
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                  Icons.share
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Icon(
                                Icons.favorite_outline
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              TitleWidget(title: "Overview"),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  OverViewWidget(
                    asset: "assets/subject1.png",
                    detail_name: "Altitude",
                    value: "1110 -1165",
                  ),
                  OverViewWidget(
                    asset: "assets/subject2.png",
                    detail_name: "Processing",
                    value: "Washed",
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  OverViewWidget(
                    asset: "assets/subject3.png",
                    detail_name: "Location",
                    value: "Coimbatore",
                  ),
                  OverViewWidget(
                    asset: "assets/subject5.png",
                    detail_name: "Variety",
                    value: "SLV N9",
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0
              ),
              TitleWidget(
                title: "Description",
              ),
              const SizedBox(
                height: 2.0
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "\tCoffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. From the coffee fruit, the seeds are separated to produce a stable, raw product: unroasted green coffee.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
