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

  MyList<MyClass> myList = new MyList<MyClass>();
  MyClass myClass = new MyClass();
  myList.Add(myClass);
  int myValue = myList[0]; // --> Compiler error
  
  Console.Read();
 }
}