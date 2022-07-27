import 'constants/colors.dart';

var PesoColor = kFontColor;
var AltColor = kFontColor;
String Peso = '0';
double Alt = 0;
int validador = 0;
double receptor = 0;

onoff (String touch) {
  if (touch == 'peso') {
    PesoColor = kPrimaryColor;
    AltColor = kFontColor;
    validador = 1;
  }
  else if (touch == 'altura') {
    AltColor = kPrimaryColor;
    PesoColor = kFontColor;
    validador = 2;
  }
  else if(touch == 'AC'){

    Peso = '0';
    Alt = 0;
  }
  else if (validador == 1){
    Peso += touch;
    print('lucas');
  }
  else if (validador == 2){
    if(Alt == 0.0 ){
      Alt = double.parse(Alt.toString() + touch);
    }
    Alt = double.parse(touch);
    print('lucas');
  }
}