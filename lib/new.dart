import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:new_project/colors.dart';
import 'package:new_project/drawerscreen.dart';



class MainMenuBody extends StatefulWidget {

  @override
  State<MainMenuBody> createState() => _MainMenuBodyState();
}

class _MainMenuBodyState extends State<MainMenuBody> {
  double translateX = 0.0;
  double translateY = 0.0;
  double scale = 1;
  bool toogle = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      DrawerMenu(),
      AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        transform: Matrix4.translationValues(translateX, translateY, 0)
          ..scale(scale),
        child: ClipRRect(
          borderRadius:
              (toogle) ? BorderRadius.circular(20) : BorderRadius.circular(0),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: purpleColor,
              leading: IconButton(
                  onPressed: () {
                    toogle = !toogle;
                    if (toogle) {
                      translateX = 200;
                      translateY = 80;
                      scale = 0.8;
                    } else {
                      translateX = 0.0;
                      translateY = 0.0;
                      scale = 1;
                    }
                    setState(() {});
                    print(toogle);
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              title: const Text(
                'All Pets',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
             body: Container(
      child: Scrollbar(
        thickness: 3,
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         SizedBox(
          height: 50,
           child: TextField(
            
             decoration: InputDecoration(
               hintText: 'Search',
               hintStyle: const TextStyle(color: Colors.grey,fontSize: 15),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10.0),
                 borderSide: BorderSide.none,
               ),
               filled: true,
               fillColor: Colors.white70,
               prefixIcon: const Icon(
                 Icons.search,
                 color: Colors.grey,size: 25,
               ),
             ),
             style: const TextStyle(color: Colors.white),
           ),
         ),
         SizedBox(height: 15),
            ImageSlideshow(
    
        /// Width of the [ImageSlideshow].
        width: double.infinity,
    
        /// Height of the [ImageSlideshow].
        height: 200,
    
        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,
    
        /// The color to paint the indicator.
        indicatorColor: Colors.blue,
    
        /// The color to paint behind th indicator.
        indicatorBackgroundColor: Colors.grey,
    
        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        children: [
          ClipRRect(
            child: Image.asset('assets/picture1.png'),
            borderRadius: BorderRadius.circular(20),
          ),
          ClipRRect(
            child: Image.asset('assets/picture2.webp'),
            borderRadius: BorderRadius.circular(20),
          ),
           ClipRRect(
            child: Image.asset('assets/picture3.png'),
            borderRadius: BorderRadius.circular(20),
          ),
        ],
    
        /// Called whenever the page in the center of the viewport changes.
        onPageChanged: (value) {
          print('Page changed: $value');
        },
    
        /// Auto scroll interval.
        /// Do not auto scroll with null or 0.
        autoPlayInterval: 3000,
    
        /// Loops back to first slide.
        isLoop: true,
      ),
      SizedBox(height: 10),
            GridView.builder(     
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 0.2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: InkWell(
                    child: Column(
                 
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Image.asset('assets/dog.webp'),
                     SizedBox(height:4),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Puppy',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                                Text(
                                '₹ 100.00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,fontWeight: FontWeight.w400),
                              ),
                              
                              
                            ],
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                     
                                                      children: [
                                                       Icon(LineIcons.mapMarker,size: 18,color: Colors.red,),
                                                       Text('North Street(2km)',style: TextStyle(fontSize: 13),)
                                                      ],
                                                    ),
                          ),
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              
                                                                                  children: [
                                                                                 
                                                                                   Text('Female : ',style: TextStyle(fontSize: 13),),
                                                                                   Text('1.5 Years',style: TextStyle(fontSize: 13),)
                                                                                  ],
                                                                                ),
                                                    )
                      
                      ],
                    ),
                  ),
                );
              },
            ),
           
          ],
        ),
      ),
        ),
      )),
            
          ),
        ),
      ),
    ]);

  


  }}