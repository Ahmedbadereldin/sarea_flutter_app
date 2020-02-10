import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/screens/bag_screen.dart';
import 'package:sarea_flutter_app/screens/category_details_screen.dart';
import 'package:sarea_flutter_app/screens/delivary_screen.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({ Key key }) : super(key: key);
@override
_CategoriesScreen createState() => new _CategoriesScreen();
}

class _CategoriesScreen extends State<CategoriesScreen> {

  Widget appBarTitle = Text("سريع",
      textDirection: TextDirection.rtl,
      style: (TextStyle (fontFamily:"Cairo",
          color: Color(0xFFA02448) ,
          fontSize: 20
      )
      )
  );
  Icon menuIcon =  Icon(Icons.menu, color: Color(0xFFA02448));
  Icon actionIcon =  Icon(Icons.search, color: Color(0xFFA02448));

  
  
  
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  List<String> _list;
  bool _IsSearching;
  String _searchText = "";

  _CategoriesScreen() {
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
    _IsSearching = false;
    init();

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

      drawerScrimColor: Color(0xffA8A6A7),
      key: key,
      appBar: buildBar(context),

        backgroundColor: Color(0xFFF4F3F3),
        body: GridView.count(
            crossAxisCount: 3,
          children: _IsSearching ? _buildSearchList() : _buildList(),

    ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/flower.jpg"),
                    radius: 50,


                  ),
                  Text("مستخدم افتراضي",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: (TextStyle(
                        fontFamily: "Cairo",
                        color: Color(0xFFA02448),
                        fontSize: 16
                        ,
                      )
                      )),

                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.only(left: 10,right: 10 ,top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('حسابي',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                leading:Icon(Icons.perm_identity , color: Color(0xffA22447), size: 30,) ,
                trailing: Icon(Icons.keyboard_arrow_left,color: Color(0xff706E7B)),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('طلباتي',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                leading:Icon(Icons.perm_identity , color: Color(0xffA22447), size: 30,) ,
                trailing: Icon(Icons.keyboard_arrow_left,color: Color(0xff706E7B)),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),

            Card(
              margin: EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('السلة',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                leading: Image.asset("assets/images/bag.png"),
                trailing: Icon(Icons.keyboard_arrow_left,color: Color(0xff706E7B)),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),

            Card(
              margin: EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('المفضلة',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                leading: Icon(Icons.favorite_border , color: Color(0xffA22447)),
                trailing: Icon(Icons.keyboard_arrow_left,color: Color(0xff706E7B)),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),

            Card(
              margin: EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('المحفظة',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                leading: Image.asset("assets/images/bag.png"),
                trailing: Icon(Icons.keyboard_arrow_left,color: Color(0xff706E7B)),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),

            Card(
              margin: EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('عن التطبيق',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                leading: Image.asset("assets/images/bag.png"),
                trailing: Icon(Icons.keyboard_arrow_left,color: Color(0xff706E7B)),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),

            Card(
              margin: EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('سياسة الاستخدام',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                leading: Image.asset("assets/images/bag.png"),
                trailing: Icon(Icons.keyboard_arrow_left,color: Color(0xff706E7B)),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),

            SizedBox(height: 25),

            Card(
              margin: EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Color(0xffF4EFF0),
              elevation: 0,
              child: ListTile(

                title: Text('تسجيل الخروج',
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
               // leading: ,
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ),

            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[


                Text(" Share App",
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Roboto"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
              ],
            )
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

               Icon(Icons.share)

              ],
            )
            ,
            SizedBox(height: 30)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) {
            //  return ItemDetailsScreen(item.name);
            return DelivaryScreen();
          })
          );

        },
        elevation: 0,
        child: Image.asset("assets/images/delivary.png"),
        backgroundColor: Color(0xffA22447),



      ),

    );
  }


  List<ChildItem> _buildList() {
    return _list.map((contact) => new ChildItem(contact)).toList();
  }

  List<ChildItem> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => new ChildItem(contact))
          .toList();
    }
    else {
      List<String> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        String  name = _list.elementAt(i);
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
        leading:  IconButton(icon: menuIcon, onPressed: () {
          key.currentState.openDrawer();
        }) ,
        actions: <Widget>[
          new IconButton(icon: actionIcon, onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = new Icon(Icons.close, color: Color(0xFFA02448));
                this.appBarTitle = new TextField(

                  controller: _searchQuery,
                  style: new TextStyle(
                    color: Color(0xFFA02448),

                  ),
                  decoration: InputDecoration(

                    prefix: Icon(Icons.search,color: Color(0xFFA02448)),
                    filled: true,
                    fillColor: Color(0xFFF4EFF0),




                    focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFF1E3E3), width: 2.0),
                        borderRadius:const BorderRadius.all(
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

          IconButton( icon:Image.asset("assets/images/bag.png"), onPressed: () {

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
          style: (TextStyle (fontFamily:"Cairo",
              color: Color(0xFFA02448) ,
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
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return CategoryDetailsScreen.withName(name);
          }));
          //Color(0xffA22447);
          },
        child: Container(
          width: MediaQuery.of(context).size.width/5,
          color: Color(0xffF7F7F7),
          child: Stack(
            children:<Widget>[
              Text(name,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: (TextStyle (fontFamily:"Cairo",
                      fontWeight: FontWeight.bold
                      , color: Color(0xFFA02448) ,
                      fontSize: 11
                  )
                  )
              ),
            ]
          ),
        ),
      );

     // new ListTile(title: new Text(this.name));
  }

}