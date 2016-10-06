using System;

[Serializable]
public class BasketItem {

    private int productId;
    private string name;
    private int count;
    private decimal unitPrice;

    public BasketItem() {}

    public BasketItem(int productId, string name, int count, decimal unitPrice) {
        this.productId = productId;
        this.name = name;
        this.count = count;
        this.unitPrice = unitPrice;
    }

    public int ProductId {
        get { return this.productId; }
        set { this.productId = value; }
    }

    public string Name {
        get { return this.name; }
        set { this.name = value; }
    }

    public int Count {
        get { return this.count; }
        set { this.count = value; }
    }

    public decimal UnitPrice {
        get { return this.unitPrice; }
        set { this.unitPrice = value; }
    }
}
