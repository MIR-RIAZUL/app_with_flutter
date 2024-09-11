//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.grey
      ),
      darkTheme: ThemeData.dark(),
      color: Colors.white38,
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        titleSpacing:10,
        centerTitle: false,
        toolbarHeight: 65,
        toolbarOpacity: 1,
        elevation: 70,
        actions: [
          IconButton(onPressed:(){MySnackbar("you know what ? Allah made us..so,we should worship of Allah .", context);}, icon:Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackbar("mirriazul119140@gmail.com", context);}, icon:Icon(Icons.email)),
          IconButton(onPressed: (){MySnackbar("what are you looking for ...go for your salat first..than do other work", context);}, icon:Icon(Icons.search)),
        ],
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 15,
        child:const Icon(Icons.add),
        onPressed: (){MySnackbar("add namaj and allah as your driver of your life my brother", context);},
        backgroundColor: Colors.blueGrey,
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:0,
        items:const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"home"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label:"profile"),
          BottomNavigationBarItem(icon:Icon(Icons.contact_emergency),label:"emergency contact")
        ],
        onTap: (int index) {
          if(index==0) {
            MySnackbar("home ai aco vai tmi ..akn o make kori nai kisu", context);
          } else if(index==1) {
            MySnackbar("profilr make hoila dakba ...aga make kori ..kmm", context);
          } else if(index==2) {
            MySnackbar("name: Riazul..phn:01865698608", context);
          }
        },
      ),
      drawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
                padding:EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration:const BoxDecoration(color:Colors.brown),
                  accountName:const Text("MIR RIAZUL"),
                  accountEmail:const Text("mirriazul859@gmail.com"),
                  arrowColor: Colors.blue,
                  currentAccountPicture:Image.network("https://m.media-amazon.com/images/I/61QFtjVVy5L._AC_SL1024_.jpg"),
                )
            ),
            ListTile(
              leading:const Icon(Icons.person_2),
              title: const Text("SUMAYA"),
              onTap: (){
                MySnackbar("my name is sumiya", context);
              },
            ),
            ListTile(
              leading:const Icon(Icons.person),
              title:const Text("RAZAUL"),
              onTap:(){
                MySnackbar("my father name is RAZAUL", context);
              },
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text("SHAHINUR"),
              onTap:(){
                MySnackbar("my mother name is shahinur ..she is the head of our family", context);
              },
            ),
          ],
        ),
      ),


      endDrawer:Drawer(
        child:ListView(
          children:[

            DrawerHeader(
                padding:EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration:const BoxDecoration(color:Colors.brown),
                  accountName:const Text("MIR RIAZUL"),
                  accountEmail:const Text("mirriazul859@gmail.com"),
                  arrowColor: Colors.blue,
                  currentAccountPicture:Image.network("https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/437937405_2094310117610086_2635121723285435206_n.jpg?stp=dst-jpg_s206x206&_nc_cat=110&ccb=1-7&_nc_sid=7a06f5&_nc_eui2=AeEHPhe9rmZmcoDfdj1bAyjF9SABoRc5kHz1IAGhFzmQfJ05pCoylxZW9TH1XGBveRpahIhBGhMgFwZoE4Q9Gqy9&_nc_ohc=X6_7zTIAU8UQ7kNvgFE4xn1&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCHMbMa6E6N-TaVAvC_6s9nhSsT5TFyApSlSgR2X5onaw&oe=66DF6BC6"),                )
            ),
            ListTile(
              leading:const Icon(Icons.person_2),
              title: const Text("SUMAYA"),
              onTap: (){
                MySnackbar("my name is sumiya", context);
              },
            ),
            ListTile(
              leading:const Icon(Icons.person),
              title:const Text("RAZAUL"),
              onTap:(){
                MySnackbar("my father name is RAZAUL", context);
              },
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text("SHAHINUR"),
              onTap:(){
                MySnackbar("my mother name is shahinur ..she is the head of our family", context);
              },
            ),
          ],
        ),
      ),

      body:
      const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Allah please help us",
                textAlign:TextAlign.center),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Allah created us we should worship of Allah"),
            ),
          ],
        ),
      ),
    );
  }
}