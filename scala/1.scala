object Problem1 {
  def main(args: Array[String]) {
    var sum = 0
    val limit = 1000

    // need: modulo, iterate over numbers
    for (i <- 1 to limit - 1) {
      if (i % 3 == 0) sum += i
      else if (i % 5 == 0) sum += i
    }

    println(sum)
  }
}
