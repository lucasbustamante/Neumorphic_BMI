import 'package:bmi/home_page.dart';

import 'constants/colors.dart';

var PesoColor = kFontColor;
var AltColor = kFontColor;
String Peso = '0';
String Alt = '0';
int validador = 0;
double receptor =  0;
double soma = 0;

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
  else if (touch == 'GO'){
    soma = double.parse(Peso) /(double.parse(Alt)* double.parse(Alt));
    result = (soma.toString());
    Peso2 = Peso;
    Alt2 = Alt;
  }
  else if (touch == '←'){
  if(validador == 1){
    Peso = Peso.substring(0, Peso.length - 1);
    if (0 == Peso.length) {
      Peso = '0';
    }
  }else if(validador == 2){
    Alt = Alt.substring(0, Alt.length - 1);
    if (0 == Alt.length) {
      Alt = '0';
    }
  }
  }
  else if(touch == 'AC'){
    PesoColor = kFontColor;
    AltColor = kFontColor;
    Peso = '0';
    Alt = '0';
    validador = 0;
  }
  else if (validador == 1){
    if (Peso == '0'){
      Peso = '';
    }
    Peso += touch;
  }
  else if (validador == 2){
    if (Alt == '0'){
      Alt = '';
    }
    Alt += touch;
  }

}

