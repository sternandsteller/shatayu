import 'package:flutter/material.dart';
import 'package:shatayu/services/call_and_messages_service.dart';
import 'package:shatayu/services/service_locator.dart';
import 'package:shatayu/widgets/info.dart';

class BottomHome extends StatelessWidget {
  final double height;
  final double width;
  final bool mobile;
  BottomHome(this.mobile, {required this.height, required this.width});
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: height / 6,
            ),
            Container(
              width: width,
              color: Color.fromRGBO(1, 60, 35, 1),
              height: mobile ? height / 3.5 : height / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height / 11,
                  ),
                  Text(
                    'Dr. Doodle',
                    style: TextStyle(
                        fontFamily: 'Baloo', color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    '(B.A.M.S & SPAMS)',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      //left: mobile ? width / 10 : width / 3,
                      top: mobile ? height / 20 : height / 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          tooltip: '5501 BOTTOM HOME DART IL 33422',
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _service.launchURL();
                          },
                        ),
                        SizedBox(
                          width: mobile ? 30 : 50,
                        ),
                        Container(
                          width: 0.5,
                          height: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: mobile ? 30 : 50,
                        ),
                        IconButton(
                          tooltip: '+91BOTTOMHOMDART',
                          icon: Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _service.call(number);
                          },
                        ),
                        SizedBox(
                          width: mobile ? 30 : 50,
                        ),
                        Container(
                          width: 0.5,
                          height: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: mobile ? 30 : 50,
                        ),
                        IconButton(
                          tooltip: 'bottomshomedart@gmail.com',
                          icon: Icon(Icons.mail, color: Colors.white),
                          onPressed: () {
                            _service.sendEmail(email);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Center(
          child: CircleAvatar(
            radius: 85,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/potli.jpg'),
            ),
          ),
          //backgroundImage: ,
        ),
      ],
    );
  }
}
