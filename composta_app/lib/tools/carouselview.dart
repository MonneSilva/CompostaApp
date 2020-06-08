import 'package:flare_flutter/flare_actor.dart';
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
            height: 80.0,
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
            margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 50.0),
            child: FlareActor(index.elementAt(i).file, animation: index.elementAt(i).animation),
            /*Image.asset(
              index.elementAt(i).imge,
            ),*/
          ),
          Container(
            height: 90.0,
            margin: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 0.0),
            child: Text(
              index.elementAt(i).description,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
          margin: const EdgeInsets.fromLTRB(90.0, 10.0, 90.0, 10.0),
          child: Visibility(
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
              visible: state,),),
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

  List<String> files = List();
  List<String> animations = List();

  void initializeData(List<CarouselWidgetContent> items) {
    for (var i = 0; i < items.length; i++) {
      titles.add(items.elementAt(i).title);
      description.add(items.elementAt(i).description);
      files.add(items.elementAt(i).file);
      animations.add(items.elementAt(i).animation);
    }
  }
}