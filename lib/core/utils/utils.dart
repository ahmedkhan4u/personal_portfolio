import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static Future<void> openMail() => openUrl("mailto:ahmed.dev098@gmail.com");

  static Future<void> openMyLocation() =>
      openUrl("https://maps.app.goo.gl/nHppNwuKnGouoo1N7");
  static Future<void> openMyPhoneNo() => openUrl("tel:+92-3315429353");
  static Future<void> openWhatsapp() => openUrl("https://wa.me/+923315429353");
}
