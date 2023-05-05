import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_recipe/api_response.dart';
import 'package:food_recipe/model/recipe_model.dart';
import 'package:food_recipe/recipe_view.dart';
import 'package:http/http.dart' as http;

class SearchScreen extends StatefulWidget {
  String query = "";
  
  SearchScreen({super.key, required this.query,});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // List reciptCatList = [
  //   {
  //     "imgUrl":
  //         "https://www.google.com/url?sa=i&url=https%3A%2F%2Fveganbell.com%2Fvegan-dal-chawal-recipe%2F&psig=AOvVaw1XwC4F4V7onnKn4nht94nG&ust=1682581538068000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKDCseqGx_4CFQAAAAAdAAAAABAE",
  //     "heading": "Chilli Food"
  //   },
  //   {
  //     "imgUrl": "https://images.unsplash.com/photo-1593560704563-f176a2eb61db",
  //     "heading": "Chilli Food"
  //   },
  //   {
  //     "imgUrl": "https://images.unsplash.com/photo-1593560704563-f176a2eb61db",
  //     "heading": "Chilli Food"
  //   },
  //   {
  //     "imgUrl": "https://images.unsplash.com/photo-1593560704563-f176a2eb61db",
  //     "heading": "Chilli Food"
  //   }
  // ];

  @override
  TextEditingController searchController = new TextEditingController();
  RecipeFood foodrecipe = RecipeFood();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SearchScreen(query: searchController.text,),
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
                          
                      border: InputBorder.none,
                    ),
                  ))
                ]),
              ),
              Expanded(
                  child: FutureBuilder<RecipeModel>(
                future: foodrecipe.getRecipe(widget.query),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      height: screenHeight * 0.6,
                      child: ListView.builder(
                        shrinkWrap: true,

                        // itemCount: snapshot.data!.hits![index].recipe!.uri!.length,
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
                    SpinKitFadingCircle spinkit;
                    return spinkit = SpinKitFadingCircle(
                      color: Colors.white,
                      size: 50.0,
                    );
                  }
                },
              )),
              // Container(
              //     height: 100,
              //     child: ListView.builder( itemCount: reciptCatList.length, shrinkWrap: true,
              //         scrollDirection: Axis.horizontal,
              //         itemBuilder: (context, index){

              //           return Container(
              //               child: InkWell(
              //                 onTap: () {},
              //                 child: Card(
              //                     margin: EdgeInsets.all(20),
              //                     shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(18),
              //                     ),
              //                     elevation: 0.0,
              //                     child:Stack(
              //                       children: [
              //                         // ClipRRect(
              //                         //     borderRadius: BorderRadius.circular(18.0),
              //                         //     child: Image.network(reciptCatList[index]["imgUrl"], fit: BoxFit.cover,
              //                         //       width: 200,
              //                         //       height: 250,)
              //                         // ),
              //                         Positioned(
              //                             left: 0,
              //                             right: 0,
              //                             bottom: 0,
              //                             top: 0,
              //                             child: Container(
              //                                 padding: EdgeInsets.symmetric(
              //                                     vertical: 5, horizontal: 10),
              //                                 decoration: BoxDecoration(
              //                                     color: Colors.black26),
              //                                 child: Column(
              //                                   mainAxisAlignment: MainAxisAlignment.center,
              //                                   children: [
              //                                     Text(
              //                                       reciptCatList[index]["heading"],
              //                                       style: TextStyle(
              //                                           color: Colors.white,
              //                                           fontSize: 28),
              //                                     ),
              //                                   ],
              //                                 ))),
              //                       ],
              //                     )
              //                 ),
              //               )
              //           );
              //         }),
              //   )
            ],
          ),
        ],
      )),
    );
  }
}
