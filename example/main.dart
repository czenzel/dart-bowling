import 'package:dartbowling/game.dart';

void main() {
    final Game game = Game();
    
    for (int i = 0; i < 12; i++) {
        game.calculatedAdd("X");
    }

    int totalScore = game.score;
    print('The total perfect score is: $totalScore');

    final Game gameTwo = Game();
    
    for (int i = 0; i < 10; i++) {
        gameTwo.add(5);
        gameTwo.calculatedAdd("/");
    }

    int secondScore = game.score;
    print('The second players score is: $secondScore');
}
