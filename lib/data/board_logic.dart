const rows = 12;
const columns = 10;
List<List<int>> board = List.generate(rows, (_) => List.filled(columns, 0));

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
