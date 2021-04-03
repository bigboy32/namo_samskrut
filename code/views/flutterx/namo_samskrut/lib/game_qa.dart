import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

List<String> images = [
  'assets/images/001_veg_potato.png',
  'assets/images/002_veg_tomoto.png',
  'assets/images/003_veg_radish.png',
  'assets/images/004_veg_pumpkin.png'
];

class GameQA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Game QA"),
        ),
        body: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(40.0),
              child: Card(
                child: Container(
                  //color: Colors.black87,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CardImage(
                          index: index,
                        ),
                      ),
                      SizedBox( height: 10.0,),
                      Expanded(
                        flex: 3,
                        child: CardQA(),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          indicatorLayout: PageIndicatorLayout.COLOR,
          autoplay: true,
          itemCount: images.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ));
  }
}


class CardQA extends StatelessWidget {
  const CardQA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GameQuestion(),
          SizedBox( height: 10.0,),
          GameAnswer(),
          GameAnswer(),
          GameAnswer(),
          GameAnswer(),
        ],
      ),
    );
  }
}

// Add the card image
class CardImage extends StatelessWidget {
  const CardImage({Key key, this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
      return Container(
        width: boxConstraints.maxWidth - 20,
        padding: EdgeInsets.all(20.0),
        child: new Image.asset(
          images[index],
          fit: BoxFit.fill,
        ),
        decoration: BoxDecoration(
            color: Colors.black, //Color(0xFFA8582A),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      );
    });
  }
}

// Add the game databse question
class GameQuestion extends StatelessWidget {
  const GameQuestion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
      return Card(
        child: Center(
          child: Container(
            alignment: Alignment(0.0, 0.0),
            //color: Colors.orange,
            width: boxConstraints.maxWidth - 20,
            height: 100,
            child: Text(
              "Ask a question",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 40.0,
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xFFA8582A),
                //border: Border.all(
                //  color: Colors.red[500],
                //),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      );
    });
  }
}

// Add the answer options for the given question
class GameAnswer extends StatelessWidget {
  const GameAnswer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
      return Card(
        child: Container(
          alignment: Alignment(0.0, 0.0),
          height: 80,
          width: boxConstraints.maxWidth - 20,
          child: Text(
            "show the answer options",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30.0),
          ),
          decoration: BoxDecoration(
              color: Color(0xFFFCB727),
              //border: Border.all(
              //  color: Colors.red[500],
              //),
              borderRadius: BorderRadius.all(Radius.circular(40))),
        ),
      );
    });
  }
}
