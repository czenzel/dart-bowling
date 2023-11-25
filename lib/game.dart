import 'scorer.dart';

class Game {
  var _currentFrame = 0;
  var _isFirstThrow = true;
  var _isFirstInFrame = true;
  var scorer = Scorer();

  int get score => scoreForFrame(_currentFrame);
  int _lastPins = 0;

  void add(int pins) {
    _lastPins = pins;
    scorer.addThrow(pins);
    _adjustCurrentFrame(pins);
  }

  void calculatedAdd(String pins) {
    if (pins == "X") {
      add(10);
    } else if (_lastPins >= 0 && pins == "/") {
      add(10 - _lastPins);
    }
  }

  void _adjustCurrentFrame(int pins) {
    if (_lastBallInFrame(pins)) {
      _isFirstInFrame = true;
      _advanceFrame();
    } else if (!_isFirstInFrame) {
      _isFirstInFrame = true;
      _advanceFrame();
    } else {
      _isFirstInFrame = false;
      _isFirstThrow = false;
    }
  }

  bool _lastBallInFrame(int pins) => _strike(pins) || (!_isFirstThrow);

  bool _strike(int pins) => _isFirstThrow && pins == 10;

  void _advanceFrame() {
    _currentFrame++;
    if (_currentFrame > 10) {
      _currentFrame = 10;
    }
  }

  int scoreForFrame(int theFrame) {
    return scorer.scoreForFrame(theFrame);
  }
}
