object Problem2 {
  def main(args: Array[String]) {
    // n is the nth term in the fib sequence starting with 1, 2
    var fib_cache = Map(1 -> 1, 2 -> 2) // padded with 0 so index matches fib position

    def fib (n: Int): Int = n match {
      case 1 => fib_cache(1)
      case 2 => fib_cache(2)
      case _ => {
        fib_cache.get(n) match {
          case None => fib_cache += (n -> (fib(n-1) + fib(n-2)))
          case _ =>
        }
        fib_cache(n)
      }
    }

    var sum = 0
    var i = 1

    while (fib(i) < 4000000) {
      if (fib(i) % 2 == 0) sum += fib(i)
      i += 1
    }

    println(sum)
  }
}
