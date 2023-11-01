import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5B4225),
      appBar: AppBar(elevation:0, backgroundColor: Color(0xFF5B4225)),
      body: Center(
        child: Column(
          children:[
            //We can use 2 circle Avatar Inside Each other, OR ClipRect Widget
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('Images/Chef.jpg'),
              ),
            ),
            const SizedBox(height: 16,),
            const Text("Ali Khaled",
              style: TextStyle(color: Colors.white,fontSize: 26,
                  fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
              ),),
            const SizedBox(height: 4,),
            const Text("Proffesional Chef",
              style: TextStyle(color: Colors.white,fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'SpaceGrotesk'
              ),),
            const Divider(height:30,thickness: 1.5,color: Colors.white,
              indent: 64,endIndent: 64,),
            //We can use "Card Widget" with "ListTile Widget" Instead of the following
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Icon(Icons.phone, size: 26,),
                      SizedBox(width: 16,),
                      Text("(+20) 123456789",
                        style: TextStyle(color: Colors.black,fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SpaceGrotesk'
                        ),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Icon(Icons.email, size: 26,),
                      SizedBox(width: 16,),
                      Text("alikhaled@gmail.com",
                        style: TextStyle(color: Colors.black,fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SpaceGrotesk'
                        ),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
