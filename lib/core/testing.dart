Future<void> main() async {

  print(" 1");
  await Future.delayed(Duration(seconds: 1) , ()=> print(' 2'));
  Future.delayed(Duration(milliseconds: 50) , ()=> print(' 3'));
  print( ' 4');

}