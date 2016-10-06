using System;

// MyList
public class MyDictionary<KeyType, ValueType> {

 public void Add(KeyType key, ValueType value) {
  // ...
 }

 public ValueType this[KeyType key] {
  get { 
   return ValueType.default; 
  }
 }
}
