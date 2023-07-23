void main(){
  
bool fridge = true;
bool laziness = false;

  while( true ){
        if(fridge == true ){
      if(laziness == true){
       
        orderDelivery();
      } else {
        getReadyStore();
        getStore();
        makePurchase();
        returnStore();
      }
      eat();
     
    } else {
      continue;
    } 

    break;

  }
}

void orderDelivery(){
  for(int i = 1; i < 10; i++){
    if(i == 5) {
      chooseDish();
      makePurchase();
      break;
    } else {
      continue;
    }
  }
}

void chooseDish() {
  var hungry = 'varyHangry';
  switch (hungry) {
    case 'varyHangry':
      chooseChicken();
      break;
    case 'moderatelyHungry':
      chooseBananas();
      break;
  }

}

void chooseBananas() {
  print('выбрать бананы');
}

void chooseChicken() {
  print("выбрать курочку");
}


void returnStore() {
  print('вернуться из магазина');
}

void getStore() {
  print('добраться до магазина');
}

void getReadyStore() {
  print('собраться в магазин');
}

void eat() {
  print('покушать');
}
void makePurchase() {
  print( "совершить покупку");}