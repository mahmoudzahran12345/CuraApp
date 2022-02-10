import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/layout/Drawer/drawerscreen.dart';
import 'package:graduationproject/modules/aboutapp/aboutscrren.dart';
import 'package:graduationproject/modules/conactus/conectscreen.dart';
import 'package:graduationproject/modules/dashboard/dashscreen.dart';
import 'package:graduationproject/modules/feedback/feedbackscreen.dart';
import 'package:graduationproject/modules/location/locationscreen.dart';
import 'package:graduationproject/modules/notification/notifictionscreen.dart';
import 'package:graduationproject/modules/profile/profilescreen.dart';
import 'package:graduationproject/modules/search/searchscreen.dart';
import 'package:graduationproject/modules/setting/settingscreen.dart';
import 'package:graduationproject/shared/components/component.dart';
import 'package:graduationproject/shared/styles/colors.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: firstColor,
        elevation: 0,
        title: const Text(
          'Image Slider Page',
          style: TextStyle(
            color: Colors.white,
            fontWeight:FontWeight.bold,
            fontSize: 25.0,
            fontStyle:FontStyle.italic,

          ),
        ),
        actions:  [
          IconButton(onPressed: (){
            navigatto(context,SearchScreen());
          }, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
                items:imageList.map((e) => Image(
                  image:AssetImage(e),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),).toList(),
                options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal
                )),
            const SizedBox(height: 5,),
            Container(
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text
                  (
                  'Reemerging diseases are diseases that reappear after they have been'
                      ' on a significant decline. Reemergence may happen because '
                      'of a breakdown in public health measures for diseases that were once under control. '
                      'They can also happen when new strains of known disease-causing organisms appear. Human behavior '
                      'affects reemergence. For example, overuse of antibiotics has led to disease-causing organisms that are '
                       'It is believed that increased global travel is the reason for the recent renewal of many infectious diseases in the United States. The number of people traveling internationally is increasing every year, and more people are taking trips to remote parts of the world. These often have unfamiliar health problems as well as underdeveloped healthcare services. Many travelers are also unaware of potential hazards in different parts of the world and do not take the necessary precautions. These include getting necessary vaccines or taking preventive medicine.'
                    
                  ,
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),

                ),
              ),
            )

          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurpleAccent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyHeaderDrawer(),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context,const DashboardScreen());
                  },
                  child: ItemDrawer(title: 'DashBoard',iconData: Icons.dashboard_outlined,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context,const ProfileScreen());
                  },
                  child: ItemDrawer(title: 'Profile',iconData: Icons.notification_important_outlined,)),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  navigatto(context,const NotificationScreen());
                },
                  child: ItemDrawer(title: 'notification',iconData: Icons.notification_important_outlined,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context,const SettingScreen());
                  },
                  child: ItemDrawer(title: 'Setting',iconData: Icons.settings,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context, HomeScreen());
                  },
                  child: ItemDrawer(title: 'Home',iconData: Icons.home,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context, const ContactUs());
                  },
                  child: ItemDrawer(title: 'ContactUs',iconData: Icons.phone,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context, AboutApp());
                  },
                  child: ItemDrawer(title: 'AboutApp',iconData: Icons.account_balance_wallet_outlined,)),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    navigatto(context,const LocationScreen());
                  },
                  child: ItemDrawer(title: 'Location',iconData: Icons.location_city,)),





            ],
          ),
        ),
      ),
    );
  }


}

