class CarouselWidgetContent {
  String title;
  String description;
  String imge;
  CarouselWidgetContent(String title, String description, String image) {
    this.title = title;
    this.description = description;
    this.imge = image;
  }

  
  factory CarouselWidgetContent.fromXML(Map<dynamic, dynamic> xml) {
    if (xml == null) {
      return null;
    } else {
      return CarouselWidgetContent(xml["name"],"","lib/assets/img/logo.png");
    }
  }
}
