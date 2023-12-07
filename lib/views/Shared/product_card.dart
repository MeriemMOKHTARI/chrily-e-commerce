import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test/views/Shared/appstyle.dart';

class ProductCard extends StatefulWidget {
  ProductCard(
      {super.key,
      required this.name,
      required this.category,
      required this.id,
      required this.image,
      required this.price});
  final String name;
  final String category;
  final String id;
  final String image;
  final String price;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    bool selected = true;
    bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
          _isFavorited = !_isFavorited;

    });
  }
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(1, 1),
                blurRadius: 0.6,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                       fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child:
                     GestureDetector(
                      onTap: _toggleFavorite,
                      child: Icon(
            _isFavorited ? Icons.favorite : Icons.favorite_border,
            color: _isFavorited ? Colors.red : Colors.red,
            size: 22.0,
          ),
                      //  Icon(MdiIcons.heartOutline,
                      // size:22 ,color: Colors.red,),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style:
                      // TextStyle(fontSize: 18,color: Colors.black),
                       appstyle(16, Colors.black,
                          FontWeight.bold), //hna mchi app style
                    ),
                    //  Text(widget.category,style: appstyle(10, Colors.grey, FontWeight.bold),//hna mchi app style
                    //  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.price,
                          style: appstyle(15, Colors.black, FontWeight.w600),
                        ),
                         Icon(Icons.shopping_cart_outlined),
                        
                      ],
                    ),
                  ],
                ),
              ),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(widget.price,style: appstyle(17, Colors.black, FontWeight.w600),),
              //       Row(
              //         children: [
              //           Text('Colors',style: appstyle(15, Colors.grey, FontWeight.w500),),
              //           SizedBox(
              //             width: 3,
              //           ),
              //           ChoiceChip(label: Text(" "),
              //           selected: selected,
              //           visualDensity: VisualDensity.compact,
              //           selectedColor: Colors.black,
              //           )
              //         ],
              //       ),
              //       ],
              //     ),
              //  // ),
              // ],
            ],
          ),
        ),
      ),
    );
  }
}
