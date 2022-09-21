void main() {
  //f1比f2先执行
  Future(() => print('f1'));
  Future(() => print('f2'));

// f3 执行后会立刻同步执行then 3
  Future(() => print('f3')).then((_) => print('then 3'));
// then 4 会加入微任务队列，尽快执行
  Future(() => null).then((_) => print('then 4'));
}
