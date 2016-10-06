using System;
using System.Collections.Generic;

public class Names {

 private List<string> names = new List<string>();

 public Names() {
  this.names.Add("Smith");
  this.names.Add("Miller");
  this.names.Add("Doe");
 }

 public IEnumerator<string> GetEnumerator() {
  for(int i = 0; i < this.names.Count; i++) {
   yield this.names[i];
  }
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