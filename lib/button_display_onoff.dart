import 'constants/colors.dart';

var PesoColor = kFontColor;
var AltColor = kFontColor;
double Peso = 0;
double Alt = 0;

onoff (String touch) {
  if (touch == 'peso') {
    PesoColor = kPrimaryColor;
    AltColor = kFontColor;
    if(touch == 'button'){

  }
  else if (touch == 'altura') {
    AltColor = kPrimaryColor;
    PesoColor = kFontColor;
  }
  }
}