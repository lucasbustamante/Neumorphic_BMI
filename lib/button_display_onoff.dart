import 'package:bmi/home_page.dart';

import 'constants/colors.dart';

var PesoColor = kFontColor;
var AltColor = kFontColor;
String Peso = '0';
String Alt = '0';
int validador = 0;
double receptor =  0;
double soma = 0;
String info = '';
double calc = 0;

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
    if (double.parse((double.parse(Peso) /(double.parse(Alt)* double.parse(Alt)))
        .toStringAsFixed(1)) == 0 ){
      soma = (double.parse(Peso) /(double.parse(Alt)* double.parse(Alt))
          );
      soma *= 10000;
    }else{
     soma =  double.parse((double.parse(Peso) /(double.parse(Alt)* double.parse(Alt)))
          .toStringAsFixed(1));
    }
    result = (soma.toStringAsPrecision(3));
    Peso2 = Peso;
    Alt2 = Alt;
    if(soma <= 18.4 ){
      info = 'Abaixo do peso';
    }else if(soma >= 18.5 && soma <= 24.9){
      info = 'Normal';
    }
    else{
      info = 'Acima do peso';
    }
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
    Peso = '0';
    Alt = '0';
    PesoColor = kPrimaryColor;
    AltColor = kFontColor;
    validador = 1;
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

