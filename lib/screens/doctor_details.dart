import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';


class DoctorDetails extends StatelessWidget {
  Doctor doctor;
  BuildContext context;
  DoctorDetails(this.doctor);
  int _selectedItem = 0;




  @override
  Widget build(BuildContext context) {
    this.context = context;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(context),
      bottomNavigationBar: bottomNavBar(),
      body: ListView(
        children: [
          mainInfo(this.doctor),
          Divider(
            thickness: 0.1,
            indent: 20,
            endIndent: 20,
            color: Colors.black,),
          description(this.doctor),
          location(this.doctor),
          map(),
          request_button(),
        ],
      ),
    );
  }
  Widget bottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedItem,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important_sharp),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    );
  }
  Widget appBar(context) {
    return AppBar(
      title: Text('Doctor List'),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
          color: Colors.white,
        )
      ],
    );
  }

  Widget mainInfo(e) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(doctor.urlPhoto),
                  radius: 55,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            doctor.name,
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          doctor.speciality,
                          style: TextStyle(
                              color: Color(0xff07da5f),
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              doctor.rating.toString(),
                              style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

          ),

        ],
      ),
    );
  }
  Widget description(e) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Text(
                  "Short Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
              ),
                ),
            ],
            ),
            Row(
              children:[
                Container(
                  width: size.width*0.8,
                  child: Text(
                    doctor.shortDescription,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }


  Widget location(e) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Text(
                    "Location",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children:[
                Container(
                  width: size.width*0.8,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.location_on),
                      ),
                      Text(
                        doctor.address,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black54,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget map() {
    Size size = MediaQuery.of(context).size;
    return Container(
      transformAlignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Expanded(
          child: Image(
            width: size.width,
            image: AssetImage('assets/images/snazzy-image.png'),
          ),
        ),
      ),
    );
  }

  Widget request_button(){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: SizedBox(
        width: double.infinity,
        height: 55.0,
        child:
          ElevatedButton(
            onPressed: ()=>{},
            child: Text(
                "Request",
                style: TextStyle(
                  fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                )
            ),
        ),
      ),
    );
  }
}
