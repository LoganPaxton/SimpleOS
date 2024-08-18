fun main() {
  val vers = "0.0.1"

  println("  SIMPLE OS")
  println("-------------")

  // While-Loop of Death //
  while (true) {
    print("user@simpleos:-$ ")
    val cmd = readLine()!!

    // Check if command exists in the list
    if (cmd.startsWith("pout")) {
      val parts = cmd.split(" ", limit = 2)
      if (parts.size > 1) {
        println(parts[1]) // Print the string after 'pout'
      } else {
        println("Error: No string provided to print")
      }
    } else if (cmd == "help") {
      println(
          "help - Shows this list of commands\npout <string> - Prints to the console\nclear - Clears the console\nversion - Shows the current version of SimpleOS"
      )
    } else if (cmd == "clear") {
      print("\u001b[H\u001b[2J")
    } else if (cmd == "version") {
      println("v$vers")
    } else {
      println("Unknown command: $cmd")
    }
  }
}
