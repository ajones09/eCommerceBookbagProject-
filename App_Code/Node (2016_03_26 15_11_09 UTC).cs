using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Node
/// </summary>
public class Node
{
    public Node prev { set; get; }
    public Node next { set; get; }
    public object data { set; get; }
    public int number { set; get; }
    public int pID { set; get; }
    public int fID { set; get; }
    public string answer { set; get; }
    public Node()
    {

        next = prev = null;
        data = null;
        number = 0;
    }
}