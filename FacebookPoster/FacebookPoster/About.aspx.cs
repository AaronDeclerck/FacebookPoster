using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Facebook;

namespace FacebookPoster
{
    public partial class About : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Post()
        {
            Console.WriteLine("test");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var client = new FacebookClient("AAAD1aVeVJoABALR4ta2DhdDYzHknbeOnWdgiAXFg1KJHfsjqVnYdqVHrMZCEeSk6WiVbLg03jHe85tZAXYO3Uvcv1KRI4XvjabRGRAVgZDZD");
            dynamic result = client.Post("me", new { message = "My first wall post using Facebook C# SDK" });
            var newPostId = result.id;
        }
    }
}
