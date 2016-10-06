using System;
using System.Collections.Generic;

public class Names {

 public IEnumerator<string> GetEnumerator() {
  yield "Smith";
  yield "Miller";
  yield "Doe";
 }
}

// Main
public class MainClass {

 public static void Main() {
  Names names = new Names();

  foreach(string name in names) {
   Console.WriteLine(name);
  }

  Console.Read();
 }
}