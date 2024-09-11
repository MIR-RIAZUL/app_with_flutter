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

ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)

)
);
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
        // Change the AppBar color here
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
        onTap: (int index)
        {
          if(index==0)
            {
              MySnackbar("home ai aco vai tmi ..akn o make kori nai kisu", context);
            }
          else if(index==1)
            {
              MySnackbar("profilr make hoila dakba ...aga make kori ..kmm", context);
            }
          else if(index==2)
            {
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

                currentAccountPicture:Image.network(""),
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

      body:const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text("Allah created us we should worship of allah"),
        ),
      ),
    );
}
}
