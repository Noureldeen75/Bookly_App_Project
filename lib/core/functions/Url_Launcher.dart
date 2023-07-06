import 'package:bookly/core/functions/Show_Toast.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launcherUrlFunction({required String? url}) async {
  if (url != null) {
    if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    showToast('Can\'t Launch this url', true);
  }
  } else {
    showToast('Can\'t Launch this url', true);
  }
}
