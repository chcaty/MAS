using MAS.WebApp.Models;
using log4net;
using Spring.Web.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Routing;

namespace MAS.WebApp
{
    public class MvcApplication : SpringMvcApplication //System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            // 读取配置文件中关于Log4Net配置信息
            log4net.Config.XmlConfigurator.Configure();

            AreaRegistration.RegisterAllAreas();

            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);

            RouteConfig.RegisterRoutes(RouteTable.Routes);
            // 开启一个线程,扫描异常信息队列
            string filePath = Server.MapPath("/Log/");
            ThreadPool.QueueUserWorkItem((a) =>
            {
                while (true)
                {
                    // 判断一下队列中是否有数据
                    if (MyExceptionAttribute.ExecptionQueue.Count() > 0)
                    {
                        Exception ex = MyExceptionAttribute.ExecptionQueue.Dequeue();
                        if (ex != null)
                        {
                            // 将异常信息写入日志文件中
                            //string fileName = DateTime.Now.ToString("yyyy-mm-dd");
                            //File.AppendAllText(filePath + fileName + ".txt", ex.ToString(), System.Text.Encoding.UTF8);
                            ILog logger = LogManager.GetLogger("errorMsg");
                            logger.Error(ex.ToString());
                        }
                        else
                        {
                            // 如果队列没有数据,休息
                            Thread.Sleep(3000);
                        }
                    }else
                    {
                        // 如果队列没有数据,休息
                        Thread.Sleep(3000);
                    }
                }
            },filePath);
        }
    }
}
