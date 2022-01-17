import 'package:flutter/material.dart';
import 'package:ui4/pages/details_page.dart';

class PacketWidget extends StatelessWidget {

  late String asset;
  late String country;
  late String name;
  late String price;
  late String shape;
  late String heroTag;

  PacketWidget({
    required this.asset,
    required this.country,
    required this.name,
    required this.price,
    required this.heroTag,
    required this.shape}
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Container(
            width: double.infinity,
            height: 120.0,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(16.0)),
                color: Color(0xffF5F0E6)
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(
                        shape,
                      ),
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                            country,
                            style: const TextStyle(
                                fontSize: 12.0
                            ),
                          ),
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "\$$price",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent,
                                fontSize: 15.0
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Positioned(
                  child: Image(
                    image: AssetImage(
                        "assets/Rectangle.png"
                    ),
                  ),
                  right: 0,
                  bottom: 0,
                ),
                const Positioned(
                  child: Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  right: 2,
                  bottom: 2,
                ),
                Positioned(
                  child: Hero(
                    tag: heroTag,
                    child: Image(
                      image: AssetImage(
                          asset
                      ),
                    ),
                  ),
                  left: 0,
                  top: -25,
                ),
              ],
              clipBehavior: Clip.none,
            )

        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsPage()));
      },
    );
  }
}
