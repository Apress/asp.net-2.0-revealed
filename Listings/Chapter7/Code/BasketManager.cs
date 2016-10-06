using System;
using System.Web;
using System.Web.Personalization;

public class BasketManager {

    public Basket GetBasket() {
        HttpPersonalizationBaseClass profile = HttpContext.Current.Profile;
        return (profile.GetPropertyValue("Basket") as Basket);
    }

    public void Delete(int ProductId) {
        Basket basket = this.GetBasket();
        basket.Remove(ProductId);
    }

    public void Update(int ProductId, string Name, int Count, decimal UnitPrice) {
        Basket basket = this.GetBasket();
        BasketItem item = basket.FindItemByProductId(ProductId);

        if (item != null) {
            item.Name = Name;
            item.Count = Count;
            item.UnitPrice = UnitPrice;
        }
    }

    public void Insert(int ProductId, string Name, int Count, decimal UnitPrice) {
        Basket basket = this.GetBasket();
        basket.Add(new BasketItem(ProductId, Name, Count, UnitPrice));
    }
}
