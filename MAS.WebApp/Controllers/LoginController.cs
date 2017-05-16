using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MAS.WebApp.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        IBLL.IUserInfoService UserInfoService { get; set; }
        public ActionResult Index()
        {
            return View();
        }

        #region 完成用户登录
        public ActionResult AdminLogin(string LoginCode, string LoginPwd)
        {
            var userInfo = UserInfoService.LoadEnetities(u => u.user_name == LoginCode && u.user_pwd== LoginPwd).FirstOrDefault();
            if (userInfo!=null)
            {
                return Content("ok");
            }
            else
            {
                return Content("no");
            }
        }

        #endregion
    }
}