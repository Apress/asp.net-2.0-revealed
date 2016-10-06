using System;

// MyList
public class MyList<ItemType> {

 public void Add(ItemType obj) {
  // ...
 }

 public ItemType this[int index] {
  get { 
   return ItemType.default; 
  }
 }
}

// MyClass
public class MyClass {
}

// Main
public class MainClass {

 public static void Main() {

  MyList<int> myList = new MyList<int>();
  myList.Add(3);
  int myValue = myList[0];
  
  Console.Read();
 }
}