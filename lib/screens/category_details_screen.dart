import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/models/item.dart';
import 'package:sarea_flutter_app/screens/bag_screen.dart';
import 'package:sarea_flutter_app/screens/item_details_screen.dart';

class CategoryDetailsScreen extends StatefulWidget {

  String categoryName;
  CategoryDetailsScreen.withName(this.categoryName);

  CategoryDetailsScreen({ Key key }) : super(key: key);
  @override
  _CategoryDetailsScreen createState() =>  _CategoryDetailsScreen(categoryName);



}

class _CategoryDetailsScreen extends State<CategoryDetailsScreen> {
  
  Item item;
  String categoryName;
  bool isPress = false;

  Widget appBarTitle = Text("",
      textDirection: TextDirection.rtl,
      style: (TextStyle(fontFamily: "Cairo",
          color: Color(0xFFA02448),
          fontSize: 20
      )
      )
  );

  Icon backIcon = Icon(Icons.arrow_back_ios, color: Color(0xFFA02448));
  Icon actionIcon = Icon(Icons.search, color: Color(0xFFA02448));



  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  List<String> _list;
  bool _IsSearching;
  String _searchText = "";

  _CategoryDetailsScreen(this.categoryName) {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      }
      else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
     isPress = false;
    _IsSearching = false;
    init();
    appBarTitle = Text(categoryName,
        textDirection: TextDirection.rtl,
        style: (TextStyle(fontFamily: "Cairo",
            color: Color(0xFFA02448),
            fontSize: 20
        )
        )
    );
  }

  void init() {
    _list = List();
    _list.add("مطاعم");
    _list.add("متاجر");
    _list.add("ملابس");
    _list.add("هدايا");
    _list.add("مجوهرات");
    _list.add("أحذية");
    _list.add("أجهزة كهربائية");
    _list.add("خضروات و فواكه");
    _list.add("كوزماتكس");
    _list.add("هواتف ذكية");
    _list.add("أجهزة كمبيوتر");
  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(

      key: key,
      appBar: buildBar(context),
      backgroundColor: Color(0xFFF4EFF0),
      body:ListView(
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(right: 20,top: 10),
            child: Text("33 مطعم",textDirection: TextDirection.rtl,
                textAlign: TextAlign.start,
                style: (TextStyle(
                  fontFamily: "Cairo",
                  color: Color(0xFFA02448),
                  fontSize: 12
                  ,
                )
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/6,
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Card(

                color: Color(0xffF7F7F7),
                elevation: 0,
                child: ListTile(

                    leading:

                    Hero(
                        tag: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.height/10,
                          height: MediaQuery.of(context).size.height/5,
                          margin: EdgeInsets.only(left: 10,top: 10),
                          color: Colors.white,


                        ) ),

                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Text("Pizza Altaboon - بيتزا الطابون",textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: (TextStyle (fontFamily:"Cairo"
                                , color: Color(0xFFA02448) ,
                                fontSize: 14)
                            )),

                        Text("مطعم بيتزا · مطعم وجبات سريعة",textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: (TextStyle (fontFamily:"Cairo"
                                , color: Colors.black ,
                                fontSize: 12)
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:<Widget>[
                            Text("كابيتال مول",
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                                style: (TextStyle (fontFamily:"Cairo"
                                    , color: Colors.black ,
                                    fontSize: 12)
                                )),
                            Icon(Icons.location_on,color: Color(0xff5BCC47),)
                          ],
                        ),
                      ],),


                    onLongPress:() {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        //  return ItemDetailsScreen(item.name);
                        return ItemDetailsScreen("بيتزا الطابون");
                      })
                      );
                    }
                    ,

                    trailing:GestureDetector(
                        child: isPress?
                        Icon(Icons.favorite, color: Color(0xFFE5293E)):
                        Icon(Icons.favorite_border, color: Color(0xFFE5293E)),

                        onTap: (){
                          setState(() {
                            isPress = !isPress;

                          });
                        }
                    )
                )

            ),
          ),
        ]
      )

    );
  }

    List<ChildItem> _buildList() {
     return _list.map((contact) => ChildItem(contact)).toList();
    }

    List<ChildItem> _buildSearchList() {
      if (_searchText.isEmpty) {
        return _list.map((contact) => new ChildItem(contact))
            .toList();
      }
      else {
        List<String> _searchList = List();
        for (int i = 0; i < _list.length; i++) {
          String name = _list.elementAt(i);
          if (name.toLowerCase().contains(_searchText.toLowerCase())) {
            _searchList.add(name);
          }
        }
        return _searchList.map((contact) => new ChildItem(contact))
            .toList();
      }
    }
    Widget buildBar(BuildContext context) {
      return new AppBar(
          elevation: 0,
          centerTitle: true,
          title: appBarTitle,
          backgroundColor: Color(0xffF7F7F7).withOpacity(0.95),
          leading: IconButton(icon: backIcon, onPressed: () {
            Navigator.pop(context);
          }),

          actions: <Widget>[
            new IconButton(icon: actionIcon, onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon =
                  new Icon(Icons.close, color: Color(0xFFA02448));
                  this.appBarTitle = new TextField(

                    controller: _searchQuery,
                    style: new TextStyle(
                      color: Color(0xFFA02448),

                    ),
                    decoration: InputDecoration(

                      prefix: Icon(Icons.search, color: Color(0xFFA02448)),
                      filled: true,
                      fillColor: Color(0xFFF4EFF0),


                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFF1E3E3), width: 2.0),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15),
                          )
                      ),
                      border: InputBorder.none,


                    ),

                  );
                  _handleSearchStart();
                }
                else {
                  _handleSearchEnd();
                }
              });
            },),

            IconButton(icon:Image.asset("assets/images/bag.png"), onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) {
                //  return ItemDetailsScreen(item.name);
                return BagScreen();
              })
              );
            },)


          ]
      );
    }

    void _handleSearchStart() {
      setState(() {
        _IsSearching = true;
      });
    }

    void _handleSearchEnd() {
      setState(() {
        this.actionIcon = new Icon(Icons.search, color: Color(0xFFA02448));
        this.appBarTitle = Text("سريع",
            textDirection: TextDirection.rtl,
            style: (TextStyle(fontFamily: "Cairo",
                color: Color(0xFFA02448),
                fontSize: 20
            )
            )
        );
        _IsSearching = false;
        _searchQuery.clear();
      });
    }
}

class ChildItem extends StatelessWidget {
  String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CategoryDetailsScreen.withName(name);
        }));
        //Color(0xffA22447);
      },
      child: Container(
        width: MediaQuery.of(context).size.width/5,
        color: Color(0xffF7F7F7),
        child: Column(
          children: <Widget>[
            //  Image.asset("assets/images/placeholder.png"),
            Text(name,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: (TextStyle (fontFamily:"Cairo",
                    fontWeight: FontWeight.bold
                    , color: Color(0xFFA02448) ,
                    fontSize: 11
                )
                )
            )
          ],
        ),
      ),
    );

    // new ListTile(title: new Text(this.name));
  }

}

