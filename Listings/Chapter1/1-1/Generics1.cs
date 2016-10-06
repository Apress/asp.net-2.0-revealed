using System;

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
