## A simple command-line bowling application.

```
final game = Game();
// STRIKE
game.add(10);

// SPARE
game.add(7);
game.add(3);

// another example of frame
game.add(2);
game.add(5);

// example of a calculated add - added by @czenzel
game.calculatedAdd("X");
game.calculatedAdd("/");
```

Check `test/game_test.dart` for more examples.

This implementation is based on the book `Agile Principles, Patterns, and Practices in C#` by `Martin C. Robert, Martin Micah` 

## Credits

Credit goes to [https://github.com/castrors/bowling](https://github.com/castrors/bowling) for creating the original bowling command line script and library with Dart.