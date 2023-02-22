import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FlowerWidget extends StatelessWidget {
  const FlowerWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.text,
      required this.count,
      required this.price})
      : super(key: key);
  final String image;
  final String title;
  final String text;
  final int count;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         String  message = "Здравствуйте, хочу заказать у вас " + title;
         launch("whatsapp://send?text=$message&phone=+79056658777"); // "whatsapp://send?text=Hello World!&phone=+79101300100"   "https://api.whatsapp.com/send?phone=79101300100"

      },
      child: Card(
          child: Column(
            children: [
              Expanded(flex: 2,child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 28),
                    child: Image.asset(image, fit: BoxFit.fitWidth,),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            // stops: [0.9,0.4,0.4],
                            colors: [
                              Colors.white,
                              Colors.pinkAccent.withOpacity(0.7),
                            ]),
                        // color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child:
                        const Text(" Заказать ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white,
                            shadows: [
                              Shadow( // bottomLeft
                                  offset: Offset(-1, -1),
                                  color: Colors.black
                              ),
                              Shadow( // bottomRight
                                  offset: Offset(1, -1),
                                  color: Colors.black
                              ),
                              Shadow( // topRight
                                  offset: Offset(1, 1),
                                  color: Colors.black
                              ),
                              Shadow( // topLeft
                                  offset: Offset(-1, 1),
                                  color: Colors.black
                              ),
                            ]
                        ),),
                    // SizedBox(width: 20,height: 20,child: Image.asset("assets/whatsup_icon.png"))
                  )
                ],
              ), ),
              Expanded(child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text(text,style: const TextStyle(fontSize: 20, ), textAlign: TextAlign.center,),
                Text(price.toString() +"",style: const TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.w700),)
              ],)),

            ],
          )),
    );
  }
}
