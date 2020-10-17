import 'package:flutter/material.dart';
import 'package:tours_and_travel/items.dart';

class Payment extends StatefulWidget {
  // Payment(Event event);
  final Event selectedEvent;
  Payment(this.selectedEvent);
  @override
  PaymentState createState() => PaymentState(selectedEvent);
}

class PaymentState extends State<Payment> {
  Event selectedEvent;
  PaymentState(this.selectedEvent);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Text(
          'Payment',
          style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.black12,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 20.0),
            child: Row(
              children: [
                Material(
                  color: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 14.0, top: 7, bottom: 7),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/icons8-mastercard-48.png',
                            height: 37,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Container(
                      width: 257,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 16, 0, 16),
                        child: Text(
                          'Card Number',
                          style: TextStyle(
                              color: Colors.grey[400], fontFamily: 'Nunito'),
                        ),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 20.0),
            child: Material(
              color: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 16, 0, 16),
                    child: Text(
                      'Expiration Date',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 20.0),
            child: Material(
              color: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 16, 0, 16),
                    child: Text(
                      'CVV',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 20.0),
            child: Material(
              color: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 16, 0, 16),
                    child: Text(
                      'Card Holder',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Payment Details',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'Nunito')),
                          ],
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20.0),
                  child: Material(
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 16, 0, 16),
                          child: Text(
                            'First Name',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20.0),
                  child: Material(
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 16, 0, 16),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20.0),
                  child: Material(
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 16, 0, 16),
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 6, 30, 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KES ${selectedEvent.price}',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Total Price',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey[600]),
                            )
                          ],
                        ),
                        Material(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Colors.indigo,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(48.0, 14, 48, 14),
                              child: Text(
                                'Place Order',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
