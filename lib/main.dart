import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tulpans/ui/flowerWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Тюльпаны Нижний Новгород',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        bottom: PreferredSize(child:
        Container(padding: EdgeInsets.symmetric(vertical: 6,horizontal: 0),decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/up_block.jpeg"),fit: BoxFit.fitWidth) ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,4,0,10),
                    child: const SelectableText(
                      'Купи тюльпаны'
                          '\nпо оптовой цене',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black,
                          shadows: [
                            Shadow( // bottomLeft
                                offset: Offset(-2.5, -2.5),
                                color: Colors.white
                            ),
                            Shadow( // bottomRight
                                offset: Offset(2.5, -2.5),
                                color: Colors.white
                            ),
                            Shadow( // topRight
                                offset: Offset(2.5, 2.5),
                                color: Colors.white
                            ),
                            Shadow( // topLeft
                                offset: Offset(-2.5, 2.5),
                                color: Colors.white
                            ),
                          ]

                      ), textAlign: TextAlign.start,

                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child:
                    const Text(" 89056658777  ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                    // SizedBox(width: 20,height: 20,child: Image.asset("assets/whatsup_icon.png"))
                  )
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(alignment: Alignment.topCenter,
                    child: const Text(
                      "69",
                      style: TextStyle(fontSize: 100,color: Colors.white,fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow( // bottomLeft
                                offset: Offset(-2.5, -2.5),
                                color: Colors.black
                            ),
                            Shadow( // bottomRight
                                offset: Offset(2.5, -2.5),
                                color: Colors.black
                            ),
                            Shadow( // topRight
                                offset: Offset(2.5, 2.5),
                                color: Colors.black
                            ),
                            Shadow( // topLeft
                                offset: Offset(-2.5, 2.5),
                                color: Colors.black
                            ),
                          ]
                      ),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  Align(alignment: Alignment.topCenter,
                    child: const Text(
                      "руб",
                      style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow( // bottomLeft
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black
                            ),
                            Shadow( // bottomRight
                                offset: Offset(1.5, -1.5),
                                color: Colors.black
                            ),
                            Shadow( // topRight
                                offset: Offset(1.5, 1.5),
                                color: Colors.black
                            ),
                            Shadow( // topLeft
                                offset: Offset(-1.5, 1.5),
                                color: Colors.black
                            ),
                          ]

                      ),
                      // textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
          preferredSize: const Size(600, 96),
        ),
        // title: SizedBox(
        //     width: MediaQuery.of(context).size.width * 0.7,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: const FittedBox(
        //           fit: BoxFit.scaleDown,
        //           child: Text(
        //             "Monroe Flowers",
        //             style: TextStyle(fontSize: 40),
        //           )),
        //     )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container( constraints: const BoxConstraints(maxWidth: 600),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.fromLTRB(0,0,0,0),
                        child: const SelectableText(
                          'У нас самое выгодное предложение:',
                              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700,backgroundColor: Colors.pinkAccent,),
                        ),
                      ),
                      Container(margin: EdgeInsets.fromLTRB(0,0,0,0),
                        padding: EdgeInsets.fromLTRB(0,0,0,0),
                        child: const SelectableText(
                              '\nКупи 50 тюльпанов,'
                              ' и поздравь всех самыми красивыми тюльпанами.'
                              ' Маму! Жену! Дочку! тёщу! коллегу!'
                              ' Тебе не нужно искать много букетов,'
                              ' доставим к нужному времени',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
                GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.7,
                      crossAxisCount: 2),
                  children: const [
                    FlowerWidget(
                      price: "69₽*50 шт",
                      title: 'Нежно розовые тюльпаны',
                      count: 50,
                      image: 'assets/pink_tulpans.jpeg',
                      text: 'Тюльпаны Нежно розовые',
                    ),
                    FlowerWidget(
                      price: "69₽*50 шт",
                      title: 'Белоснежные тюльпаны',
                      count: 50,
                      image: 'assets/white_tulpans.jpeg',
                      text: 'Тюльпаны Белоснежные',
                    ),
                    FlowerWidget(
                      price: "69₽*50 шт",
                      title: 'Фиолетовые тюльпаны',
                      count: 50,
                      image: 'assets/purple_tulpans.jpeg',
                      text: 'Тюльпаны Фиолетовые',
                    ),
                    FlowerWidget(
                      price: "69₽*50 шт",
                      title: 'Красные тюльпаны',
                      count: 50,
                      image: 'assets/red_tulpans.jpeg',
                      text: 'Тюльпаны Красные',
                    ),
                    FlowerWidget(
                      price: "69₽*50 шт",
                      title: 'Жёлтые тюльпаны',
                      count: 50,
                      image: 'assets/yellow_tulpans.jpeg',
                      text: 'Тюльпаны Жёлтые',
                    ),
                    FlowerWidget(
                      price: "69₽*50 шт",
                      title: 'Красно-жёлтые тюльпаны',
                      count: 50,
                      image: 'assets/red_yellow_tulpans.jpeg',
                      text: 'Тюльпаны Красно-жёлтые',
                    ),

                    FlowerWidget(
                      price: "3300 руб",
                      title: 'Букет из 35 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 20.19.51.jpg',
                      text: 'Букет 35 тюльпанов',
                    ),
                    FlowerWidget(
                      price: "1150 руб",
                      title: 'Букет из 11 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 20.21.56.jpg',
                      text: 'Букет 11 тюльпанов',
                    ),
                    FlowerWidget(
                      price: "1150 руб",
                      title: 'Букет из 11 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 20.23.43.jpg',
                      text: 'Букет 11 тюльпанов',
                    ),
                    FlowerWidget(
                      price: "3300 руб",
                      title: 'Букет из 35 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 20.24.19.jpg',
                      text: 'Букет 35 тюльпанов',
                    ),
                    FlowerWidget(
                      price: "2400 руб",
                      title: 'Букет из 35 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 23.03.11.jpg',
                      text: 'Букет 35 тюльпанов',
                    ),
                    FlowerWidget(
                      price: "8230 руб",
                      title: 'Букет из 101 тюльпана',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 23.05.13.jpg',
                      text: 'Букет 101 тюльпан',
                    ),
                    FlowerWidget(
                      price: "6000 руб",
                      title: 'Букет из 45 пионовидных тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 23.10.12.jpg',
                      text: 'Букет 45 пионовидных тюльпанов',
                    ),
                    FlowerWidget(
                      price: "1500 руб",
                      title: 'Букет из 15 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 23.14.08.jpg',
                      text: 'Букет 15 тюльпанов',
                    ),
                    FlowerWidget(
                      price: "8230 руб",
                      title: 'Букет из 101 тюльпана',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 23.16.38.jpg',
                      text: 'Букет 101 тюльпан',
                    ),
                    FlowerWidget(
                      price: "8230 руб",
                      title: 'Букет из 101 тюльпана',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-20 в 23.21.53.jpg',
                      text: 'Букет 101 тюльпан',
                    ),
                    FlowerWidget(
                      price: "2050 руб",
                      title: '21 тюльпан в оформлении',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-22 в 17.31.46.jpg',
                      text: '21 тюльпан в оформлении',
                    ),
                    FlowerWidget(
                      price: "2450 руб",
                      title: '25 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-22 в 17.37.37.jpg',
                      text: '25 тюльпанов',
                    ),
                    FlowerWidget(
                      price: "2450 руб",
                      title: '25 тюльпанов',
                      count: 50,
                      image: 'assets/Изображение WhatsApp 2023-02-22 в 17.39.55.jpg',
                      text: '25 тюльпанов',
                    )

                  ],
                ),
                SelectableText(
                  'Тюльпаны оптом. Тюльпаны Нижний Новгород. Купить тюльпаны в нижнем новгороде. Купить цветы нижний новгород'
                  ' Тюльпаны в нижнем, доставка тюльпанов, тюльпан, 101 тюльпан, 55 тюльпанов, букет тюльпанов, подарок на 8 марта, Тюльпаны оптом, '
                  ' тюльпаны оптом Нижний Новгород'
                  ' Желтые Тюльпаны, Красные Тюльпаны, Розовые Тюльпаны, фиолетовые Тюльпаны, белые Тюльпаны'
                 'Тюльпаны по оптовой цене, доставка тюльпанов Нижний Новгород , Нижний Новгород, цветы Нижний Новгород',
                  style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w700,),
                )

              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
