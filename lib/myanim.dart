import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

//HOME SCREEN
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      elevation: 15 * animation.value,
      child: GestureDetector(
        onTap: () {
          myanicon.forward(from: 0.5);
          print("clicked ..");
        },
        child: Container(
          width: 200 * animation.value + 50,
          height: 200 * animation.value + 50,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  'https://www.hd-freewallpapers.com/free-flower-wallapers/most-beautiful-hd-wallpapers-of-love.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(12),
            //child: Center(child: Image.asset('assets/images/fg.jpg')),
          ),
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Myfirstscreen()));
                },
                child: Text('FOLLOW ME !!',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                color: Colors.lightGreen,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
      ),
    ));
  }
}

//FIRST SCREEN
class Myfirstscreen extends StatefulWidget {
  @override
  _MyfirstscreenState createState() => _MyfirstscreenState();
}

class _MyfirstscreenState extends State<Myfirstscreen> {
   var _height = 400.0;

  var _width = 400.0;
  animateContainer() {
    setState(() {
      _height = _height == 400 ? 350 : 400;
      _width = _width == 400 ? 100 : 400;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FLOWER',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
          ),
          body: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                     duration: Duration(seconds: 1),
                     curve: Curves.slowMiddle,

                    height: _height,
                    width: _width,
                   // height: 400,
                    //width: 400,
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg'),
                    padding: EdgeInsets.all(10),
                  ),
                  OutlineButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("TAP ME!",style: TextStyle(color: Colors.lightBlue),),
                    onPressed: () {
                      animateContainer();
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 70,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mysecondscreen()));
                      },
                      child: Text('NEXT'),
                      color: Colors.grey,
                    ),
                  )
                ],
              )),
        ),
        debugShowCheckedModeBanner: false,);
  }
}

//SECOND SCREEN
class Mysecondscreen extends StatefulWidget {
  @override
  _MysecondscreenState createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  var _height = 400.0;

  var _width = 400.0;
  animateContainer() {
    setState(() {
      _height = _height == 400 ? 250 : 400;
      _width = _width == 400 ? 200 : 400;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FLOWER',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
          ),
          body: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                     duration: Duration(seconds: 1),
                     curve: Curves.decelerate,

                    height: _height,
                    width: _width,
                    //height: 400,
                    //width: 400,
                    child: Image.network(
                        'https://www.gardendesign.com/pictures/images/675x529Max/site_3/asiatic-lily-cappuccino-lily-creative-commons_11653.jpg'),
                    padding: EdgeInsets.all(10),
                  ),
                   OutlineButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("TAP ME!",style: TextStyle(color: Colors.lightBlue),),
                    onPressed: () {
                      animateContainer();
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 70,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mythirdscreen()));
                      },
                      child: Text('NEXT'),
                      color: Colors.grey,
                    ),
                  )
                ],
              )),
        ),
        debugShowCheckedModeBanner: false,);
  }
}

//third screen
class Mythirdscreen extends StatefulWidget {
  @override
  _MythirdscreenState createState() => _MythirdscreenState();
}

class _MythirdscreenState extends State<Mythirdscreen> {
  var _height = 400.0;

  var _width = 400.0;

  animateContainer() {
    setState(() {
      _height = _height == 400 ? 100 : 400;
      _width = _width == 400 ? 500 : 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FLOWER',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
          ),
          body: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeIn,
                    height: _height,
                    width: _width,
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/7/77/Catharanthus_roseus_aka_rosy_periwinkle_7155.JPG'),
                    padding: EdgeInsets.all(10),
                  ),
                   OutlineButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("TAP ME!",style: TextStyle(color: Colors.lightBlue),),
                    onPressed: () {
                      animateContainer();
                    },
                  ),
                  
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 70,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Myforthscreen()));
                      },
                      child: Text('NEXT'),
                      color: Colors.grey,
                    ),
                  )
                ],
              )),
        ),
        debugShowCheckedModeBanner: false,);
  }
}

//forth screen
class Myforthscreen extends StatefulWidget {
  @override
  _MyforthscreenState createState() => _MyforthscreenState();
}

class _MyforthscreenState extends State<Myforthscreen> {
  var _height = 400.0;

  var _width = 400.0;

  animateContainer() {
    setState(() {
      _height = _height == 400 ? 400 : 400;
      _width = _width == 400 ? 100 : 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FLOWER',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
          ),
          body: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                    duration: Duration(seconds: 1),

                    height: _height,
                    width: _width,
                    //child: Image.asset("assets/images/a.jpg",fit: BoxFit.cover,),

                    child: Image.network(
                        'https://i.pinimg.com/originals/78/51/f3/7851f3b38bf3ac264e466bcdd7bb4cb8.png'),
                    padding: EdgeInsets.all(10),
                  ),
                   OutlineButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("TAP ME!",style: TextStyle(color: Colors.lightBlue),),
                    onPressed: () {
                      animateContainer();
                    },
                  ),
                   
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 70,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Myfifthscreen()));
                      },
                      child: Text('NEXT'),
                      color: Colors.grey,
                    ),
                  )
                ],
              )),
        ),
        debugShowCheckedModeBanner: false,);
  }
}

//fifth screen
class Myfifthscreen extends StatefulWidget {
  @override
  _MyfifthscreenState createState() => _MyfifthscreenState();
}

class _MyfifthscreenState extends State<Myfifthscreen> {
   var _height = 400.0;

  var _width = 400.0;
   animateContainer() {
    setState(() {
      _height = _height == 400 ? 150 : 400;
      _width = _width == 400 ? 500 : 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FLOWER',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
          ),
          body: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                     duration: Duration(seconds: 1),
                     curve: Curves.slowMiddle,
                     height: _height,
                     width: _width,
                    child: Image.network('https://images.unsplash.com/photo-1455582916367-25f75bfc6710?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80'),
                   // child: Image.asset("assets/images/f.jpg"),
                    padding: EdgeInsets.all(10),
                  ),
                   OutlineButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("TAP ME!",style: TextStyle(color: Colors.lightBlue),),
                    onPressed: () {
                      animateContainer();
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 140,
                    height: 40,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Myfirstscreen()));
                        },
                        child: Text(
                          'BACK TO HOME PAGE',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        color: Colors.grey),
                  )
                ],
              )),
        ),
        debugShowCheckedModeBanner: false,);
  }
}
