class Compost {
  String name;
  int type;
  String image;
//rest of atributes of database
  Compost(String name, int type) {
    this.name = name;
    this.type = type;
    if(type==1)
    {
      image="lib/assets/img/plant.png";
    }else{
       image="lib/assets/img/plant.png";
    }
  }
}