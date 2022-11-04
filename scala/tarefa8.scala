val tarefa8 = (texto: String) => {
  var ans : List[(Int,Int)] = List();
  
  for ( i <- 0 until 10){
    ans = ans:+((i,texto.count(_ == i.toString.charAt(0))));
  }
  
  ans
};
