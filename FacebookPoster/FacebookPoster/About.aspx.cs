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
            var client = new FacebookClient("AAAD1aVeVJoABAOtoDqFU9d4wZCCJ8ZCSFuOed0N6cYIcbfi32FYs6QURIRKDh92PvIIwGOSFbCcy6DgYrH2GZBwXGngu0LnwxD88wG9FwZDZD");
            dynamic result = client.Post("me/feed", new { message = "My first wall post using Facebook C# SDK" });
            var newPostId = result.id;
        }
    }
}
