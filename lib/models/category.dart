

class Category{

  String _name;
  String _image;
  int _count;

  Category();
  Category.withPar(this._name, this._image,this._count);


  String get name => _name;



  int get count => _count;

  set count(int value) {
    _count = value;
  }

  set name(String value) {
    _name = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  Map<String , dynamic> toMap(){

    var map = Map<String , dynamic>();

    map["_name"]= this._name;
    map["_image"]= this._image;
    map["_count"] =this._count;

    return map;

  }

  Category.fromMap( Map<String , dynamic> map){

    this._name = map["_name"];
    this._image =map["_image"];
    this._count = map["_count"];
  }

}