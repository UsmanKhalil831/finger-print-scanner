//Now lets build the logic of the App
import 'package:local_auth/local_auth.dart';

class Authenticate{
  static final _auth = LocalAuthentication();
  static Future<bool> canAuthenticate() async => await _auth.canCheckBiometrics || await _auth.isDeviceSupported();
  static Future<bool> authentication() async{
    try{
      if(!await canAuthenticate()) return false;
      return await _auth.authenticate(localizedReason: 'get into the App');
    }catch(e){
      print(('Error = $e'));
      return false;
    }
  }
}