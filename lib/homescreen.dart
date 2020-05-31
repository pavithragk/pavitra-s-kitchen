import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/category.dart';
import 'package:pavitras_kitchen/constants.dart';
import 'package:pavitras_kitchen/details.dart';
import 'package:pavitras_kitchen/profile.dart';
import 'package:pavitras_kitchen/search.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class HomeScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    
    return HomeScreenState();
  }
  
}

class HomeScreenState extends State<HomeScreen>
{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text('Home', style: TextStyle(color: ColorConstants.secondaryColor),),
      ),
      body: Container(
          child: ListView(
            children: <Widget>[
              GestureDetector(child:
              Container(
                child: Image.asset('assets/images/image2.jpg'),
              ),
              onTap: (){
                Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
               );
              },
              ),
              GestureDetector(child:
              Container(
                child: Image.asset('assets/images/image6.jpg',
                fit: BoxFit.cover,
                ),
              ),
              onTap: (){
                Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
               );
              },
              ),
              GestureDetector(child:
              Container(
                child: Image.asset('assets/images/image2.jpg'),
              ),
              onTap: (){
                Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
               );
              },
              ),
              GestureDetector(child:
              Container(
                child: Image.asset('assets/images/image5.jpg'),
              ),
              onTap: (){
                Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
               );
              },
              ),
              GestureDetector(child:
              Container(
                child: Image.asset('assets/images/image6.jpg'),
              ),
              onTap: (){
                Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
               );
              },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home, color:ColorConstants.secondaryColor), 
            title: Text('Home')),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.search, color: ColorConstants.secondaryColor,), 
              onPressed: (){
                Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
               );
              }),
            title: Text('search')),
            BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.category, color: ColorConstants.secondaryColor,), 
              onPressed: (){
               Navigator.push (
              context,
               MaterialPageRoute(builder: (context) => CategoryScreen()),
                );
              }),
            title: Text('category')),
            BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.account_box, color: ColorConstants.secondaryColor,), 
              onPressed: (){
                 Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              }),
            title: Text('Profile')),
          ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){},
          child: Icon(Icons.add,
          color: ColorConstants.secondaryColor,),
          backgroundColor: ColorConstants.primaryColor,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       
    );
  }
 

}