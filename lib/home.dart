import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_recipe/api_response.dart';
import 'package:food_recipe/model/recipe_model.dart';
import 'package:food_recipe/recipe_view.dart';
import 'package:food_recipe/search_screen.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List reciptCatList = [
    {"imgUrl": "assets/images/chili.jpeg", "heading": "Chilli"},
    {"imgUrl": "assets/images/sweets.jpeg", "heading": "Sweet"},
    {"imgUrl": "assets/images/sugar_free.jpeg", "heading": "SugarFree"},
    {"imgUrl": "assets/images/healthy.jpeg", "heading": "Healthy"}
  ];
  late TextEditingController searchController;
  RecipeFood foodrecipe = RecipeFood();
  late Widget spinkit;
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController = TextEditingController();
    
    foodrecipe.getRecipe("chicken");
  }

  

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
          body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff3213A50),
              Color(0xff071938),
            ])),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.03),
                margin: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.04),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: [
                  GestureDetector(
                    onTap: () {
                      if ((searchController.text).replaceAll(" ", "") == "") {
                        print("blank");
                      } else {
                        //foodrecipe.querey1 = searchController.text;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SearchScreen(query: searchController.text),
                            ));
                      }
                    },
                    child: Container(
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenHeight * 0.02,
                  ),
                  Expanded(
                      child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 
                           "Let's Cook Something",
                          
                      //  hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ))
                ]),
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WHAT DO YOU WANT TO COOK TODAY?",
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Let's Cook Something New!",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  )),
              Expanded(
                  child: FutureBuilder<RecipeModel>(
                future: searchController.text.isEmpty
                    ? foodrecipe.getRecipe("chicken")
                    : foodrecipe.getRecipe(searchController.text),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      height: screenHeight * 0.6,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.hits!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RecipeScreen(
                                        url: snapshot
                                            .data!.hits![index].recipe!.url
                                            .toString()),
                                  ));
                            },
                            child: Card(
                              margin: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      snapshot.data!.hits![index].recipe!.image!
                                          .toString(),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.black26),
                                        child: Text(
                                          snapshot
                                              .data!.hits![index].recipe!.label!
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )),
                                  Positioned(
                                    right: 0,
                                    height: 40,
                                    width: 80,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.local_fire_department,
                                                size: 15,
                                              ),
                                              Text(snapshot.data!.hits![index]
                                                  .recipe!.calories!
                                                  .toString()
                                                  .substring(0, 6)),
                                            ],
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return spinkit = SpinKitFadingCircle(
                      color: Colors.white,
                      size: 50.0,
                    );
                  }
                },
              )),
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: reciptCatList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                    query: reciptCatList[index]["heading"]),
                              ));
                        },
                        child: Card(
                            margin: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            elevation: 0.0,
                            child: Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(18.0),
                                    child: Image.asset(
                                      reciptCatList[index]["imgUrl"],
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 250,
                                    )),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    top: 0,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.black26),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              reciptCatList[index]["heading"],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 28),
                                            ),
                                          ],
                                        ))),
                              ],
                            )),
                      ));
                    }),
              )
            ],
          ),
        ],
      )),
    );
  }
}
