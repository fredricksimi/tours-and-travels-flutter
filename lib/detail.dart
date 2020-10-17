import 'package:flutter/material.dart';
import 'package:tours_and_travel/items.dart';

import 'payment.dart';

class DetailScreen extends StatefulWidget {
  // DetailScreen(Event event);
  final Event selectedEvent;
  DetailScreen(this.selectedEvent);
  @override
  DetailScreenState createState() => DetailScreenState(selectedEvent);
}

class DetailScreenState extends State<DetailScreen> {
  Event selectedEvent;
  DetailScreenState(this.selectedEvent);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.white]),
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  // repeat: ImageRepeat.repeatY,
                  image: AssetImage(selectedEvent.imageSrc),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 25, 18, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedEvent.title,
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Material(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.grey[100],
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'KES ${selectedEvent.price}',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo,
                                      fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.blueGrey,
                              size: 16,
                            ),
                            Text(selectedEvent.place,
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow[800],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[800],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[800],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[800],
                              ),
                              Icon(
                                Icons.star_outline,
                              ),
                              Text(
                                '(${selectedEvent.rating})',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 20, 14, 4),
                        child: Row(
                          children: [
                            Text('People',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Nunito'))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                        child: Row(
                          children: [
                            Text(
                              'Number of people in your group',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                                width: 50, height: 50,
                                // color: Colors.grey,
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                                width: 50, height: 50,
                                // color: Colors.grey,
                                child: Center(
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                                width: 50, height: 50,
                                // color: Colors.grey,
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                                width: 50, height: 50,
                                // color: Colors.grey,
                                child: Center(
                                  child: Text(
                                    '4',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                                width: 50, height: 50,
                                // color: Colors.grey,
                                child: Center(
                                  child: Text(
                                    '5',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 8, 14, 4),
                        child: Row(
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 20),
                        child: Row(
                          children: [
                            Text(
                              selectedEvent.description,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 8, 30, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300],
                              ),
                              child: Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Payment(selectedEvent)));
                              },
                              child: Container(
                                width: 270,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.indigo),
                                child: Center(
                                    child: Text(
                                  'Book Trip Now',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
