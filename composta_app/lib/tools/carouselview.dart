import 'package:flutter/material.dart';
import 'package:carousel_widget/carousel_widget.dart';
import 'package:composta_app/tools/btncontent.dart';
import 'package:composta_app/tools/carouselcontent.dart';


class CarouselView extends StatefulWidget {
  final List<CarouselWidgetContent> contentL;
  final BtnContent btn;
  const CarouselView( this.contentL,this.btn);
  @override
  _CarouselViewState createState() => _CarouselViewState(this.contentL,this.btn);
}

class _CarouselViewState extends State<CarouselView> {
  final List<CarouselWidgetContent> contentL;
final BtnContent btn;
  _CarouselViewState(this.contentL, this.btn);
  @override
  Widget build(BuildContext context) {
    return Carousel(
      listViews: _getScreen(contentL,btn),
    );
  }

  List<Fragment> _getScreen(List<CarouselWidgetContent> index,BtnContent btn) {
    bool state = false;
    List listings = new List<Fragment>();
    for (int i = 0; i < index.length; i++) {
      if (i == index.length- 1) {
        state = true;
      }
      var fragment = Fragment(
          child: ListView(
        children: <Widget>[
          Container(
            height: 45.0,
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Text(
              index.elementAt(i).title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 250.0,
            margin: const EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 0.0),
            child: Image.asset(
              index.elementAt(i).imge,
            ),
          ),
          Container(
            height: 80.0,
            margin: const EdgeInsets.fromLTRB(50.0, 12.0, 50.0, 0.0),
            child: Text(
              index.elementAt(i).description,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Visibility(
              child: SizedBox(
                width: 20.0,
                height: 30.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  child: Text(btn.text,
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, btn.actionRoute);
                  },
                ),
              ),
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              visible: state,),
        ],
      ));
      listings.add(
        fragment,
      );
    }
    return listings;
  }

  List<String> titles = List();

  List<String> description = List();

  List<String> imagenames = List();

  void initializeData(List<CarouselWidgetContent> items) {
    for (var i = 0; i < items.length; i++) {
      titles.add(items.elementAt(i).title);
      description.add(items.elementAt(i).description);
      imagenames.add(items.elementAt(i).imge);
    }
  }
}