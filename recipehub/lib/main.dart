import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int cardsLength = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/bg3.jpg',
              fit: BoxFit.cover,
            ),
          ),
          //searchbar
          Align(
            alignment: Alignment(0, 0),
            child: Wrap(
              children: [Text('Explore Recepies ~'),

              ]),
          ),
          //ListView
          Container(
            alignment: Alignment(0, 0),
            padding: EdgeInsets.only(top: 100),
            child: ListView(
              padding: EdgeInsets.only(left: 330),
              children: getRecipeCards(),
              scrollDirection: Axis.horizontal,
            ),
          ),
          //MenuBar
          Align(
            alignment: Alignment(0, 0.9),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.72,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.amber,
                elevation: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      highlightColor: Colors.amber[700],
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      iconSize: 30,
                    ),
                    IconButton(
                      highlightColor: Colors.amber[700],
                      onPressed: () {},
                      icon: Icon(Icons.explore),
                      iconSize: 30,
                    ),
                    IconButton(
                      highlightColor: Colors.amber[700],
                      onPressed: () {},
                      icon: Icon(Icons.person),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getRecipeCards() {
    List<Widget> recipeCards = [];
    for (int i = 0; i < cardsLength; i++) {
      recipeCards.add(recipeCard());
    }
    return recipeCards;
  }

  Widget recipeCard() {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 1.4,
      child: Row(
        children: <Widget>[
          Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.4,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image.network(
                    'https://juliasalbum.com/wp-content/uploads/2018/01/15226244759_61b39176aa_c.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.1, 0.47),
              child: Container(
                margin: EdgeInsets.only(left: 4),
                padding: EdgeInsets.only(left: 5, right: 5),
                width: MediaQuery.of(context).size.width / 1.2 - 4,
                height: 200,
                alignment: Alignment(-0.5, -0.7),
                decoration: BoxDecoration(
                    color: const Color(0x00000000).withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' Sun-Dried Tomato Pasta', //name
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontFamily: 'MerriweatherSans-Regular',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(//rating
                        children: [
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.yellowAccent,
                        size: 20,
                      ),
                    ]),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.timer, color: Colors.white, size: 17),
                        SizedBox(width: 20),
                        Text(
                          '40 min', //timing
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'Poppins-Light'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        Flexible(
                          child: Text(
                            'Tomato, Pasta, Healthy, Quick...', //tags
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins-Light'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                          height: 10,
                        ),
                    RaisedButton(
                      onPressed: () {},
                      child: Wrap(
                        children: <Widget>[
                          Text('GO TO RECIPE',
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward_ios, size: 18,)
                        ],
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
