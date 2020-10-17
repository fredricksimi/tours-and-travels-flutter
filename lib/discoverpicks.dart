import 'package:flutter/material.dart';

import 'detail.dart';
import 'items.dart';

class DiscoverPicks extends StatefulWidget {

  const DiscoverPicks({
    Key key,
    this.index
  }) : super(key: key);
  final int index;
  @override
  DiscoverPicksState createState() => DiscoverPicksState();
}

class DiscoverPicksState extends State<DiscoverPicks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailScreen(events[widget.index])));
        },
        child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black45.withOpacity(0.25), BlendMode.darken),
                image: AssetImage(events[widget.index].imageSrc),
                fit: BoxFit.cover,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  events[widget.index].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    Text(events[widget.index].place,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
