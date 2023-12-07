import 'package:flutter/material.dart';

class ItemWidgets extends StatefulWidget {
  @override
  State<ItemWidgets> createState() => _ItemWidgetsState();
}

class _ItemWidgetsState extends State<ItemWidgets> {
  var p = Color.fromRGBO(248, 201, 171, 1.0);
  var love = Icon(
    Icons.favorite_border,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
physics:NeverScrollableScrollPhysics() ,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i=1;i<=8;i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, ),
         margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: p,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  IconButton(
                      onPressed:() => {setState(() {
                        
                      
                          love = love ==
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  )
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                );
                        }),
                      },
                      icon: love),
                ],
              ),

              InkWell(
                onTap: (){},
                child: Container(
                  child: Image.asset('images/h.jpg',
                  height: 150,
                  width: 150,
                  ),
                ),
              ),
              Container(
               // padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text('adidas',style: TextStyle(
                  fontSize: 18,
                  // color: p,
                  // fontWeight: FontWeight.bold,
                ),),
              ),
              // Container(
              //   alignment: Alignment.center,
              //   child: Text('write a description of the product',style: TextStyle(
              //     fontSize: 15,
              //     color: p,),),
              // ),
           // Padding(
            //  padding: EdgeInsets.symmetric(vertical: 20,),
             // child:
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$55",style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
          //  ),

            ],
          ),
        ),
      ],
    );
  }
}
