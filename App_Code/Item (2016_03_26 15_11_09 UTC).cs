using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*This represents a product in the cart
*/

public class Item
{
    public string productId;
    public string productName;
    public decimal price;
    public string imageURL;
    public string shortDescrip;
    public string longDescrip;
    public Item()
    {
        
    }
    public override string  ToString()
    {
        return productId + " " + productName + " " + price.ToString();
    }
}