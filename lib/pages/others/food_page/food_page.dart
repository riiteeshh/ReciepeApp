import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class FoodPage extends StatelessWidget {
  dynamic data;
  FoodPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //   shape:
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
      //   backgroundColor: Colors.lightGreen,
      //   onPressed: () {},
      //   label: TextButton.icon(
      //     onPressed: () {},
      //     label: const Text(
      //       'Watch Video',
      //       style: TextStyle(color: Colors.white),
      //     ),
      //     icon: const Icon(
      //       CupertinoIcons.play_circle,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            Text(
              data['name'],
              style: TextStyle(fontSize: 22.spMax, fontWeight: FontWeight.bold),
            ),
            Text(
              data['category'],
              style: TextStyle(fontSize: 14.spMax, fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nutritions',
                      style: TextStyle(
                          fontSize: 20.spMax, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r)),
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 5,
                              margin: EdgeInsets.zero,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(
                                  data['nutrition']['calories'].toString(),
                                  style: TextStyle(fontSize: 10.spMax),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Calories',
                                    style: TextStyle(
                                        fontSize: 14.spMax,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'kcal',
                                    style: TextStyle(
                                        fontSize: 9.spMax,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r)),
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 5,
                              margin: EdgeInsets.zero,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(
                                  data['nutrition']['carbs'].toString(),
                                  style: TextStyle(fontSize: 10.spMax),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Carbo',
                                    style: TextStyle(
                                        fontSize: 14.spMax,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'g',
                                    style: TextStyle(
                                        fontSize: 9.spMax,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r)),
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 5,
                              margin: EdgeInsets.zero,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(
                                  data['nutrition']['protein'].toString(),
                                  style: TextStyle(fontSize: 10.spMax),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Protein',
                                    style: TextStyle(
                                        fontSize: 14.spMax,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'g',
                                    style: TextStyle(
                                        fontSize: 9.spMax,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r)),
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 5,
                              margin: EdgeInsets.zero,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(
                                  data['nutrition']['fat'].toString(),
                                  style: TextStyle(fontSize: 10.spMax),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fat',
                                    style: TextStyle(
                                        fontSize: 14.spMax,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'g',
                                    style: TextStyle(
                                        fontSize: 9.spMax,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 110.r,
                  child: ClipOval(
                    child: Image.asset(
                      'lib/assets/images/burger.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 20.spMax, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                constraints: BoxConstraints(maxHeight: 130.h, minHeight: 10.h),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: data['main_ingredients'].length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          data['main_ingredients'][index],
                          style: TextStyle(
                              fontSize: 14.spMax, fontWeight: FontWeight.w200),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Reciepe Preparation',
              style: TextStyle(fontSize: 20.spMax, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200.h,
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 10),
                  itemCount: data['steps'].length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Steps ${index + 1}',
                          style: TextStyle(
                              fontSize: 14.spMax, fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            data['steps'][index],
                            style: TextStyle(
                                fontSize: 14.spMax,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
