using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


/* The linked list is used to retrieve and store information from the database and 
    
*/
public class LinkList
{
   public Node head;
    public LinkList()
    {
        head = null;
    }

    public void generatePreference(AccessDataSource list)
    {
        Node cur, prev ;
        LinkList likes = new LinkList();
        list.SelectCommand = "Select * From Preferences";
        DataView table = (DataView)list.Select(DataSourceSelectArguments.Empty);
        if (table.Count != 0)
        {
            int pos = 1;
            for (int i = 0; i <= table.Count; i++)
            {
                DataRowView row = (DataRowView)table[i];
                int num = Convert.ToInt32(row["prefID"]);
                string nm = row["prefName"].ToString();
                int fID = Convert.ToInt32(row["foreignID"]);
                cur = head;
                if (i == 0)
                {
                    head.number = pos;
                    head.data = nm;
                    head.fID = fID;
                    head.pID = num;
                    head.next = new Node();
                    cur = head.next;
                    cur.prev = head;
                }
                if (i == table.Count)
                {
                    cur.data = nm;
                    cur.number = pos;
                    cur.pID = num;
                    cur.fID = fID;
                    cur.next = head;
                    head.prev = cur;
                }
                else
                {
                    cur.data = nm;
                    cur.number = pos;
                    cur.pID = num;
                    cur.fID = fID;
                    cur.next = new Node();
                    prev = cur;
                    cur = cur.next;
                    cur.prev = prev;
                }
                pos++;
            }

        }
    }
    public LinkList [] generateUserSpecificPreference(AccessDataSource preferences, int acountID)
    {
        LinkList[] twoLists = new LinkList[2];
        LinkList userLikes = new LinkList();
        LinkList userDislikes = new LinkList();
        userLikes.head = new Node();
        userDislikes.head = new Node();
        preferences.SelectCommand = "SELECT *  FROM [userLikes] WHERE [AccountID] = '" + acountID.ToString() + "'";
        DataView table = (DataView)preferences.Select(DataSourceSelectArguments.Empty);
        Node cur = userLikes.head,prev, prev2;
        Node cur2 = userDislikes.head;
        if (table.Count != 0)
        {
            int num = 1;
            for (int i = 0; i <= table.Count; i++)
            {
                DataRowView row = (DataRowView)table[i];
                string nme = row["preferenceName"].ToString();
                int pID = Convert.ToInt32(row["likesID"]);
                if (i == 0)
                {
                    userLikes.head.data = nme;
                    userLikes.head.number = num;
                    userLikes.head.pID = pID;
                    cur = userLikes.head.next = new Node();
                    cur.prev = userLikes.head;
                }
                if (i == table.Count)
                {
                    cur.data = nme;
                    cur.number = num;
                    cur.pID = pID;
                    cur.next = userLikes.head;
                    userLikes.head.prev = cur;
                    
                }
                else
                {
                    cur.data = nme;
                    cur.number = num;
                    cur.pID = pID;
                    cur.next = new Node();
                    prev = cur;
                    cur = cur.next;
                    cur.prev = prev;
                }
                num++;
            }
        }
        preferences.SelectCommand = "SELECT *  FROM [userDislikes] WHERE [AccountID] = '" + acountID.ToString() + "'";
        DataView table2 = (DataView)preferences.Select(DataSourceSelectArguments.Empty);
        if (table2.Count != 0)
        {
            for (int i = 0; i <= table2.Count; i++)
            {
                DataRowView row = (DataRowView)table2[i];
                int num = 1;
                string nme = row["preferenceName"].ToString();
                int pid = Convert.ToInt32(row["likesID"]);
                if (i == 0)
                {
                    userDislikes.head.data = nme;
                    userDislikes.head.number = num;
                    userDislikes.head.pID = pid;
                    cur2 = userLikes.head.next = new Node();
                    cur2.prev = userDislikes.head;
                }
                if (i == table.Count)
                {
                    cur2.data = nme;
                    cur2.number = num;
                    cur2.pID = pid;
                    cur2.next = userDislikes.head;
                    userDislikes.head.prev = cur2;
                }
                else
                {
                    cur2.data = nme;
                    cur2.number = num;
                    cur2.pID = pid;
                    cur2.next = new Node();
                    prev2 = cur2;
                    cur2 = cur2.next;
                    cur2.prev = prev2;
                }
                num++;
            }

        }
        twoLists[0] = userLikes;
        twoLists[1] = userDislikes;
        return twoLists;

    }
    public LinkList newPreferences(LinkList z)
    {
        LinkList list = new LinkList();
        int[] pos = list.startUpMain(z);
        Node cur=new Node(), nxt= new Node();

        for (int x = 0; x <= pos[249]; x++)
        {
            if (pos[x] == z.head.number)
            {
                nxt = z.head;
                if (list.head.data== null)
                {
                    cur = nxt;
                }
                else
                {
                    nxt = nxt.next;
                }
            }
            else
            {
                x--;
            }
        }
        nxt.next=cur;
        list.head = cur;

        return list;
    }
    public int[] startUpMain(LinkList items)
    {
        Node cur = new Node();
        cur = items.head;
        int[] postions = new int[items.size()];
        int id = 10000;
        for (int i = 0; i <= items.size(); i++)
        {
            int numOfPos = 0;
            if ((cur.fID == id) || (cur.fID == (id * 2))|| (cur.fID == (id * 3)) || (cur.fID == (id * 4)))
                
            {
                postions[i] = cur.number;
                numOfPos++;
            }
            postions[249] = numOfPos;
        }
        return postions;
    }
    public int size()
    {
        if (this.head.number > this.head.prev.number)
        {
            while (this.head.number > this.head.prev.number)
            {
                this.head = this.head.next;
            }
        }
        return this.head.prev.number;
    }
}