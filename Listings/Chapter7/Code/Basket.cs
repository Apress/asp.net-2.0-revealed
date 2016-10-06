using System;

[Serializable]
public class Basket : System.Collections.Generic.List<BasketItem> {
    
    public void Remove(int productId) {
        BasketItem item = this.FindItemByProductId(productId);
        if (item != null) {
            base.Remove(item);
        }
    }


    public BasketItem FindItemByProductId(int productId) {
        foreach (BasketItem item in this) {
            if (item.ProductId.Equals(productId)) {
                return item;
            }
        }
        return null;
    }
}
