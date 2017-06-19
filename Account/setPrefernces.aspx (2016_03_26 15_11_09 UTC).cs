using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_setPrefernces : System.Web.UI.Page
{
    string[] answers;
    ArrayList questionsLbl = new ArrayList();
    RadioButton[] yesAnswers = new RadioButton[20];
    RadioButton[] noAnswers = new RadioButton[20];
    LinkList primary = new LinkList(), setup = new LinkList();
    string quest = "Are you intrested in ", end = "?";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {



            yesAnswers[0] = new RadioButton();
            yesAnswers[0].Text = "yes";
            yesAnswers[1] = new RadioButton();
            yesAnswers[1].Text = "yes";
            questionsLbl.Add("1.#Book#");
            questionsLbl.Add(yesAnswers[0]);
            questionsLbl.Add("2.Oi");
            questionsLbl.Add(yesAnswers[1]);
            questionsLbl.Add("3.MAKE");
            questionsLbl.Add("4.Tmuerta");
            repeat1.DataSource= questionsLbl;
            repeat1.DataBind();


        }
    }
    public void newSetUp()
    {
        // primary.generatePreference(info);
        Node cur;

        // setup = primary.newPreferences(primary);
        //cur = setup.head;
        /*  for (int i =1; i<= setup.size()-1; i++)
          {
              if (i == setup.head.number)
              {
                  questionsLbl.Add(i.ToString()+" " +quest + cur.data + end);
                  cur = cur.next;
              }

              else
              {
                  if (i > cur.number)
                  {
                      cur = cur.next;
                  }
                  else
                  {
                      cur = cur.prev;
                  }
                  i--;
              }

          }*/
        repeat1.DataSource = questionsLbl;
        repeat1.DataBind();

    }
    public void update()
    {

    }
    protected void Save_Click(object sender, EventArgs e)
    {
       // repeat1.Items[x].FindControl("yesRadio");

    }

    protected void Next_Click(object sender, EventArgs e)
    {

    }

    protected void noRadio_CheckedChanged(object sender, EventArgs e)
    {
        
    }

    protected void yesRadio_CheckedChanged(object sender, EventArgs e)
    {

    }
}