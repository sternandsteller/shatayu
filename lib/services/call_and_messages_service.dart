import 'package:url_launcher/url_launcher.dart';

class CallsAndMessagesService {
  // ignore: deprecated_member_use
  void call(String number) => launch("tel:$number");
  // ignore: deprecated_member_use
  void sendSms(String number) => launch("sms:$number");
  // ignore: deprecated_member_use
  void sendEmail(String email) => launch("mailto:$email");

  launchURL() async {
    const url =
        'https://www.google.com/maps/place/Shatayu+Ayurved+Panchakarma+Superspeciality+Clinic/@23.2093469,77.3630955,12z/data=!4m8!1m2!2m1!1sshatayu+ayurved!3m4!1s0x397c4252dedce519:0xc305a6c57fcd4cd9!8m2!3d23.2093469!4d77.4331333';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
