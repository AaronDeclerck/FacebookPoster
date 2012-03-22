using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FacebookPoster
{
    /// <summary>
    /// Summary description for FacebookLogin
    /// </summary>
    public class FacebookLogin : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var accessToken = context.Request["accessToken"];
            context.Session["AccessToken"] = accessToken;

            context.Response.Redirect("http://jecklestation.com");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}