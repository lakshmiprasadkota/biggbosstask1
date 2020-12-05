import 'dart:developer';

import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> itemNameList = ["Wash" , "Iron" , "Dry Clean" , "Leather" ,"T-shirt"];
  List <String> itemImgList = [ "assests/images/washing1.png" ,"assests/images/ironbox.png" ,
    "assests/images/dryclean.png" , "assests/images/leather.png" ,"assests/images/tshirt.png"];
  List <Color> itemclr = [ Color(0xffe1dff4), Color(0xfff3e3a5),Color(0xffed7f72),
    Color(0xffbbe5d1), Color(0xff6fbdf7),];



  List <String>  title = ["Klean Laudry" , "Very Klean "   , "ultra klean"];
  List <String> subTitle = ["MT Road 1582" , "Ks Road 161" , "po Road"];
  List <String>  price = ["Rs 5666" , "Rs 6555" , "Rs 7555"];
  List <String>  img = [  "assests/images/machine1.jpg"  ,  "assests/images/machine2.jpg"  , "assests/images/machine3.jpg" ];
  List <String>  rating = [ "5.0" , "3.2"  ,"5.0",];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
         backgroundColor: Colors.blueGrey[50],
      body:SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child:   Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    RichText(text: TextSpan(
                      text: "  Driving & Deliver\n" ,
                   style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,
                          fontSize: 15),
                      children: [

                        WidgetSpan(child: Icon( Icons.location_on)),
                        TextSpan(text: "las vegas , us" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,
                            fontSize: 18),)
                      ]
                    ),

                    ),


                    Container(
                             height: 50,
                              width: 50,

                      decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                        child:  Stack(
                          overflow: Overflow.visible,
                          
                          children: [
                            Positioned(

                                bottom:0 ,

                                child: Image.asset("assests/images/men.jpg" , height: 40, width: 50,)),
                            Positioned(
                              right: -2,
                                top: -3,


                                child: Image.asset("assests/images/reddot.png" , height: 20, width: 18,))
                          ],
                        ) 
                    ),




                  ],
                ),
               SizedBox(height: 30,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Expanded(
                     child: Container(

                       child: TextField(
                         decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search A service or laundry",
                              hintStyle: TextStyle(color: Colors.grey,
                                  fontSize: 13),

                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(

                                  color: Colors.transparent
                                )
                              ),
                            ),
                          ),
                     ),
                   ),

                   Container(
                     margin: EdgeInsets.only(left: 10),
                       height: 50,
                       width: 50,

                       decoration: BoxDecoration(
                           color: Colors.blueAccent,
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child: Icon(Icons.add_road)
                   ),
                 ],
               ),
                SizedBox(height: 30,),

                Container(
                  height: 150,
                 width: 450,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1a3045),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Boxing Day", style: TextStyle(color: Colors.white,
                                fontSize: 21, fontWeight: FontWeight.w700), ),
                            SizedBox(height: 10,),
                            Text("Get 35% Discount from", style: TextStyle(color:  Colors.grey,
                                fontSize: 13, fontWeight: FontWeight.w700), ),
                            Text("Every Laundry *****" , style: TextStyle(color:  Colors.grey,
                                fontSize: 13, fontWeight: FontWeight.w700),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 12,
                        top: 15,
                        child: Container(
                          child: Image.asset("assests/images/washing.png")
                          ),
                      )
                      
                    ],
                  ),
                ),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Services" , style: TextStyle(color:  Colors.black,
                        fontSize: 15, fontWeight: FontWeight.w600),),
                    Text("see All" ,style: TextStyle(color:  Colors.grey,
                        fontSize: 12, fontWeight: FontWeight.w600),)
                  ],
                ),
                SizedBox(height: 15,),

                Container(
                height: 120,

                  child: ListView.builder(

                    itemCount: itemImgList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index){
                      return ServicesItemListClass(
                        itemImg: itemImgList[index],
                        itemName: itemNameList[index],
                        clr: itemclr[index],
                      );
                    }
                  ),
                ),

                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Near by you" , style: TextStyle(color:  Colors.black,
                        fontSize: 15, fontWeight: FontWeight.w600),),
                    Text("see All" ,style: TextStyle(color:  Colors.grey,
                        fontSize: 12, fontWeight: FontWeight.w600),)
                  ],
                ),
                SizedBox(height: 15,),


                Container(
                  height: 260,


                  child: ListView.builder(

                      itemCount: title.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context , index){
                        return PopularItemListClass(popularImg: img[index],
                        popularPrice: price[index],
                        popularRating: rating[index],
                        popularSubTitle: subTitle[index],
                        popularTitle: title[index],);
                      }
                  ),
                ),







              ],
            )
          ),
        )


      )
    );
  }
}


class ServicesItemListClass extends StatefulWidget {
  ServicesItemListClass( {this.itemImg, this.itemName, this.clr });
  final Color clr ;
  final String itemImg ;
  final String itemName;
  @override
  _ServicesItemListClassState createState() => _ServicesItemListClassState();
}

class _ServicesItemListClassState extends State<ServicesItemListClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(

          width: MediaQuery.of(context).size.width * 0.3,

          decoration: BoxDecoration(
            color: widget.clr,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(

               offset: Offset(0,0),
                color: widget.clr,
                blurRadius: 10
              )
            ]
          ),
          child: Container(
               margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(widget.itemImg , height: 50, width: 60,),
                Text(widget.itemName)
              ],
            ),
          ),

        ),
        SizedBox(width: 10,),
      ],
    );
  }
}




class PopularItemListClass extends StatefulWidget {
  PopularItemListClass({ this.popularImg , this.popularPrice , this.popularRating , this.popularSubTitle , this.popularTitle});
  final String popularImg ;
  final String popularTitle;
  final String popularSubTitle;
  final String popularRating;
  final String popularPrice ;

  @override
  _PopularItemListClassState createState() => _PopularItemListClassState();
}

class _PopularItemListClassState extends State<PopularItemListClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 300,

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),

          ),
          child:

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width ,
                  child: Image.asset(widget.popularImg ,fit: BoxFit.cover,)),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.popularTitle , style: TextStyle(fontWeight: FontWeight.w600,),),SizedBox(height: 4,),
                        Text(widget.popularSubTitle ,style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11,
                        color: Colors.blueGrey)),SizedBox(height: 4,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star,color: Colors.yellowAccent, size: 20, ),
                          Text(widget.popularRating , style: TextStyle(color: Colors.black,fontSize: 13,
                              fontWeight: FontWeight.w500),),
                          Text("(4.7K Ratings)" , style: TextStyle( fontSize: 11,color: Colors.blueGrey),)
                        ],
                      ),

                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(widget.popularPrice ,style: TextStyle( fontSize: 15,fontWeight: FontWeight.w700 ,color: Colors.redAccent)),
                        Text("Stating at" ,style: TextStyle( fontSize: 10,fontWeight: FontWeight.w400 ,color: Colors.grey)),

                        SizedBox(height: 10,),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                           child: Center( child:Text("Details" , style: TextStyle(color: Colors.white),) ,)
                        )
                      ],
                    )
                  ],
                ),
              )

            ],
          ),),
        SizedBox(width: 10,)
      ],
    );
  }
}



