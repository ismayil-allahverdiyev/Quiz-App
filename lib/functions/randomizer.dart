import 'dart:math';

class Randomizer{

  List randomizedList = [];

  var random = Random();

  randomize(int max){

    List<int> order = [];

    for(int i = 0; i<=max-1; i++){
      int number = random.nextInt(max);

      while(order.contains(number+1)){
        number = random.nextInt(max);
      }

      order.add(number+1);
    }

    return order;
  }
}