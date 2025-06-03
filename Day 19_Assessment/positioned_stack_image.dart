import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Profile Demo",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),)),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            // Cover Photo
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey[300],
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShNXLIy-urvNY1kf4u9KmSHwRUCSyqy0MMtg&s",
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 50), // Space between cover and profiles

            // Two profiles in a Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Profile 1
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 36,
                          backgroundImage:
                          AssetImage('assets/images/archana.jpg'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Archana V",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Flutter Dev",
                        style:
                        TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 6),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "View Profile",
                          style: TextStyle(color: Colors.purpleAccent),
                        ),
                      ),
                    ],
                  ),

                  // Profile 2
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 36,
                          backgroundImage: AssetImage('assets/images/dharshini.jpg')
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Dharshini V",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Flutter Developer",
                        style:
                        TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 6),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "View Profile",
                          style: TextStyle(color: Colors.purpleAccent),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile Demo"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Cover photo
                Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.teal[300],
                  child: Center(
                    child: Text(
                      "Cover Photo",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),

                // Profile picture
                Positioned(
                  bottom: -40,
                  left: 20,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 36,
                      backgroundImage: NetworkImage(
                        'https://www.shutterstock.com/image-vector/vector-flat-illustration-grayscale-avatar-600nw-2264922221.jpg',
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50), // For space below avatar

            // Name and role
            Text(
              "Archana V",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),

            SizedBox(height: 20),

            // Simple Follow button
            ElevatedButton(
              onPressed: () {
                print("Follow button clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
              ),
              child: Text("Follow"),
            ),
          ],
        ),
      ),
    );
  }
}
*/