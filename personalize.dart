import 'package:e_learning_app/screens/level_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Personalize extends StatefulWidget {
  const Personalize({super.key});

  static const routeName = '/userinfo';

  @override
  State<Personalize> createState() => _PersonalizeState();
}

class _PersonalizeState extends State<Personalize> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: SizedBox(
              child: Stack(
                children: [
                  Positioned(
                    top: 60,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                        //  color: Colors.green,
                        height: 300,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/backtop.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/images/userinfobackground.png"))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, left: 20),
                            child: Text(
                              "Select Screen Name",
                              style: GoogleFonts.poppins(fontSize: 17),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: SizedBox(
                              width: 300,
                              height: 30,
                              child: TextField(
                                expands: true,
                                maxLines: null,
                                maxLength: null,
                                decoration: InputDecoration(
                                    hintText: "Select Screen Name",
                                    hintStyle: TextStyle(fontSize: 12),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(22))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 20.0, left: 20, top: 5),
                            child: Text(
                              "Select Avatar",
                              style: GoogleFonts.poppins(fontSize: 17),
                            ),
                          ),
                          Container(
                            height: 280,
                            padding: const EdgeInsets.all(15),
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemCount: 6,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: index == _selectedIndex
                                          ? Colors.grey
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: IconHolder(
                                      isSelected: index == _selectedIndex,
                                      imgUrl: "assets/images/${index + 1}.png",
                                      bckgroundColor: Color(0xffcfffe3),
                                      backColor: Color(0xffb3ffc7),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Select Primary Level",
                              style: GoogleFonts.poppins(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xffffffff),
                                  child: Text("Primary 1",
                                      style: GoogleFonts.poppins(fontSize: 11)),
                                  radius: 30,
                                ),
                                CircleAvatar(
                                  backgroundColor: Color(0xffffffff),
                                  child: Text("Primary 2",
                                      style: GoogleFonts.poppins(fontSize: 11)),
                                  radius: 30,
                                ),
                                CircleAvatar(
                                  backgroundColor: Color(0xffffffff),
                                  child: Text("Primary 3",
                                      style: GoogleFonts.poppins(fontSize: 11)),
                                  radius: 30,
                                ),
                                CircleAvatar(
                                  backgroundColor: Color(0xffffffff),
                                  child: Text("Primary 4",
                                      style: GoogleFonts.poppins(fontSize: 11)),
                                  radius: 30,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffffffff),
                                child: Text("Primary 5",
                                    style: GoogleFonts.poppins(fontSize: 11)),
                                radius: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xffffffff),
                                child: Text("Primary 6",
                                    style: GoogleFonts.poppins(fontSize: 11)),
                                radius: 30,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffffffff),
                                child: Text("Primary 5",
                                    style: GoogleFonts.poppins(fontSize: 11)),
                                radius: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xffffffff),
                                child: Text("Primary 6",
                                    style: GoogleFonts.poppins(fontSize: 11)),
                                radius: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xffffffff),
                                child: Text("Primary 6",
                                    style: GoogleFonts.poppins(fontSize: 11)),
                                radius: 30,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, HomeScreen.routeName);
                                },
                                child:
                                    Image.asset("assets/images/addButton.png"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconHolder extends StatefulWidget {
  final String imgUrl;
  final Color bckgroundColor;
  final Color backColor;
      bool isSelected;
   IconHolder(
      {super.key,
      required this.isSelected,
      required this.imgUrl,
      required this.bckgroundColor,
      required this.backColor});

  @override
  State<IconHolder> createState() => _IconHolderState();
}

class _IconHolderState extends State<IconHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      // height: 700,
      child: Stack(
        children: [
          Positioned(
            top: 15,
            child: Container(
              height: 100,
              width: 110,
              //      height: 300,
              decoration: BoxDecoration(
                  color:  widget.isSelected
                                          ? Colors.grey
                                          : Colors.transparent,
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(22))),
              child: Center(
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: widget.bckgroundColor,
                ),
              ),
            ),
          ),
          Positioned(
              child: SizedBox(
                  //  margin: EdgeInsets.all(20),
                  child: Image.asset(
            widget.imgUrl,
            filterQuality: FilterQuality.high,
            height: 100,
            width: 100,
          )))
        ],
      ),
    );
  }
}
