using System;

// MyList
public class MyDictionary<KeyType, ValueType> {

 public void Add(KeyType key, ValueType value) {
  
  switch(((IComparable) key).CompareTo(123))
  {
   case 0:
    // ...
    break;
  }
 }
}
