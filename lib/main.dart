import 'package:flutter/material.dart';
import 'explore.dart';

void main() {
  runApp(MaterialApp(
    title: 'Tourism and Travels App',
    debugShowCheckedModeBanner: false,
    home: HomeScreen()
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(colorFilter: ColorFilter.mode(
                    Colors.black45.withOpacity(0.25), BlendMode.darken),
          image: AssetImage('images/iStock-870378096-e1544710804582-1600x800.jpg'),
          fit: BoxFit.cover, alignment: Alignment.bottomCenter
          )
        ),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:68.0, left: 30),
              child: Text('Daring', style: TextStyle(
                fontSize: 30, fontFamily: 'Nunito', 
                fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Adventures', style: TextStyle(
                fontSize: 30, fontFamily: 'Nunito', color: Colors.white,
                fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top:20, right: 100),
              child: Text('Mountain hikes give you an incredible sense of freedom along with endurance tests', style: TextStyle(
                fontSize: 16, fontFamily: 'Nunito', color: Colors.white,
                fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              width: 98,
              margin: const EdgeInsets.only(left: 30, top:30,),
              child: InkWell(
                onTap:(){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => ExploreScreen()
                      )
                    );
                },
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo,
                  child: Padding(
                    padding: const EdgeInsets.only(left:18.0, top: 12.0, bottom: 12.0, right: 18),
                    child: Row(
                      children: [
                        Text('Explore', style: TextStyle(fontFamily: 'Nunito', color: Colors.white,),),
                        Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
                      ],
                    ),
                  )
                  ),
              )
            )
          ],
        ),
      )
    );
  }
}