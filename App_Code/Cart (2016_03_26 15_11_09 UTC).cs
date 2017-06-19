using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{
    Item [] newItem;
    public Cart()
    {
        
    }
    public override string ToString()
    {
        string items="";
        
        foreach (var item in newItem)
        {
            items += item.ToString();
        }
       
        return items;
    }

}