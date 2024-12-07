import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reciepe_app/pages/others/food_page/food_page.dart';
import 'package:reciepe_app/utils/domain/response.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> category = ['All', 'Main Course', 'Appetizer', 'Dessert'];

  Future<dynamic> foodData() async {
    final foodData = await getReciepeData();
    return foodData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 20.h,
              ))
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.line_horizontal_3_decrease,
            size: 20.h,
          ),
        ),
      ),
      body: FutureBuilder(
          future: foodData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 30.h,
                    width: MediaQuery.sizeOf(context).width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Chip(
                                backgroundColor:
                                    (index == 0) ? Colors.green : Colors.white,
                                labelPadding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r)),
                                label: Text(
                                  category[index],
                                  style: TextStyle(
                                      color: (index == 0)
                                          ? Colors.white
                                          : Colors.black),
                                )),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 250.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 100.h,
                            width: 160.w,
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FoodPage(
                                          data: snapshot.data.data[index]))),
                              child: Card(
                                elevation: 1,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                            alignment: Alignment.topCenter,
                                            child: CircleAvatar(
                                              radius: 54.r,
                                              backgroundColor:
                                                  const Color(0xffBDBAA2),
                                              child: CircleAvatar(
                                                radius: 50.r,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    'lib/assets/images/burger.jpg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        snapshot.data.data[index]['name'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.spMax),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        snapshot.data.data[index]['category'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                            fontSize: 12.spMax),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${snapshot.data.data[index]['nutrition']['calories']} kcal',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.spMax),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                          fontSize: 20.spMax, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data.data.length,
                          itemBuilder: (context, ind) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 140.h,
                              width: 160.w,
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FoodPage(
                                            data: snapshot.data.data[ind]))),
                                child: Card(
                                  elevation: 4,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                              alignment: Alignment.topCenter,
                                              child: CircleAvatar(
                                                radius: 54.r,
                                                backgroundColor:
                                                    const Color(0xffBDBAA2),
                                                child: CircleAvatar(
                                                  radius: 50.r,
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      'lib/assets/images/burger.jpg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              snapshot.data.data[ind]['name'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.spMax),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              snapshot.data.data[ind]
                                                  ['category'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.grey,
                                                  fontSize: 12.spMax),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  '${snapshot.data.data[ind]['nutrition']['calories']} kcal',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.spMax),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(Icons
                                                        .favorite_border_outlined))
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
