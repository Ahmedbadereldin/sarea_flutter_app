import 'package:sarea_flutter_app/models/category.dart';

class Item {

  Category _category;
  String _name;
  String _source;
  String _location;
  bool _favorite;
  double _rating;
  bool _isRating;
  int _rateCount;

  Item();

  Item.withPar(this._category, this._name, this._source, this._location,
      this._favorite, this._rating, this._isRating, this._rateCount);

  set rateCount(int value) {
    _rateCount = value;
  }

  set isRating(bool value) {
    _isRating = value;
  }

  set rating(double value) {
    _rating = value;
  }

  set favorite(bool value) {
    _favorite = value;
  }

  set location(String value) {
    _location = value;
  }

  set source(String value) {
    _source = value;
  }

  set name(String value) {
    _name = value;
  }

  set category(Category value) {
    _category = value;
  }

  int get rateCount => _rateCount;

  bool get isRating => _isRating;

  double get rating => _rating;

  bool get favorite => _favorite;

  String get location => _location;

  String get source => _source;

  String get name => _name;

  Category get category => _category;


  Map<String , dynamic> toMap(){

    var map = Map<String , dynamic>();


    map["_name"]= this._name;
    map["_rateCount"]= this._rateCount;
    map["_isRating"]= this._isRating;
    map["_rating"]= this._rating;
    map["_favorite"]= this._favorite;
    map["_location"]= this._location;
    map["_source"]= this._source;
    map["_category"]= this._category;

    return map;

  }

  Item.fromMap( Map<String , dynamic> map){


    this._name = map["_name"];
    this._rateCount= map["_rateCount"];
    this._isRating = map["_isRating"];
     this._rating= map["_rating"];
     this._favorite= map["_favorite"];
    this._location= map["_location"];
     this._source= map["_source"];
     this._category=map["_category"];

  }

}