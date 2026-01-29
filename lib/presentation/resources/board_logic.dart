import 'package:tetrix/presentation/resources/tetrominoes.dart';

TetrominoTypes testingShape = TetrominoTypes.L;

class Game {
  final int rows = 18;
  final int cols = 10;
  late List<List<int>> board;

  late TetrominoTypes currentShape;
  late List<List<int>> position;
  int currentRow = -4;
  int currentCol = 4;

  Game() {
    board = List.generate(rows, (_) => List.filled(cols, 0));
    spawnTetromino();
  }

  void spawnTetromino() {
    currentShape = testingShape;
    position = shapes[currentShape]!;
    currentRow = -4;
    currentCol = 4;
  }

  bool collisionDetectedBottom() {
    for (var box in position) {
      int nextRow = currentRow + box[0] + 1;
      int column = currentCol + box[1];
      if (nextRow >= rows || (nextRow >= 0 && board[nextRow][column] != 0)) return true;
    }
    return false;
  }

  void lockInPlace() {
    for (var box in position) {
      int r = currentRow + box[0];
      int c = currentCol + box[1];

      if (r >= 0) {
        board[r][c] = shapeColors[testingShape]!;
      }
    }
  }

  void moveDown() {
    if (!collisionDetectedBottom()) {
      currentRow += 1;
    } else {
      lockInPlace();
      spawnTetromino();
    }
  }

  void moveRight() {
    currentCol += 1;
  }

  void moveLeft() {
    currentCol -= 1;
  }
}

/* Visual shape of the 2-D matrix
{
  0 0 0 0 0 0 0 0 0 0 -> r0
  0 0 0 0 0 0 0 0 0 0 -> r1
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 A 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 B 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 -> r11
} A-> board[3][2], B -> board[9][6]
 */
