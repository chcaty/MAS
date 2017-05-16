using MAS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MAS.WebApp.Controllers
{
    public class CategoryInfoController : Controller
    {
        // GET: CategoryInfo
        IBLL.ICategoryInfoService CategoryInfoService { get; set; }
        public ActionResult Index()
        {
            return View();
        }

        #region 获取分类列表数据
        public ActionResult GetCategoryInfoList(int pageIndex, int pageSize)
        {
            //int pageIndex = Request["page"] != null ? int.Parse(Request["page"]) : 1;

            //int pageSize = Request["rows"] != null ? int.Parse(Request["rows"]) : 15;

            int totalCount;

            var categoryInfoList = CategoryInfoService.LoadPageEntities<int>(pageIndex, pageSize, out totalCount, C => true, C => C.category_id, true);


            var temp = from c in categoryInfoList
                       select new
                       {
                           ID = c.category_id,
                           PID = c.parent_id,
                           Sort = c.sort_order,
                           Time = c.supply_time,
                           Name = from cl in c.Category_Language.Where(d => d.language_id == 1) select cl.name,
                           PName = from ci in categoryInfoList.Where(a => a.category_id == c.parent_id) from pl in ci.Category_Language.Where(p => p.language_id == 1) select pl.name
                       };

            return Json(new { rows = temp, total = totalCount });
        }
        #endregion

        #region 删除分类数据
        public ActionResult DeleteCategoryInfo(string strId)
        {
            string[] strIds = strId.Split(',');
            List<int> list = new List<int>();
            foreach (string id in strIds)
            {
                list.Add(Convert.ToInt32(id));
            }
            //将list]集合存储到的要删除的ID传递到业务层
            if (CategoryInfoService.DeleteEntities(list))
            {
                return Content("ok");
            }
            else
            {
                return Content("no");
            }
        }
        #endregion

        #region 添加用户数据
        public ActionResult AddCategoryInfo(CategoryInfo categoryInfo)
        {
            CategoryInfoService.AddEntity(categoryInfo);
            return Content("ok");
        }
        #endregion

        #region 展示要修改的数据
        public ActionResult ShowEditInfo(int id)
        {
            var categoryInfo = CategoryInfoService.LoadEnetities(c => c.category_id == id).FirstOrDefault();
            var json = new
            {
                ID = categoryInfo.category_id,
                Name = from n in categoryInfo.Category_Language.Where(b => b.language_id == 1) select n.name,
                PID = categoryInfo.parent_id,
                Sort_Order = categoryInfo.sort_order,
                Time = categoryInfo.supply_time,
                Top = categoryInfo.main,
                Status = categoryInfo.status
            };
            return Json(json, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region 完成分类数据的更新
        public ActionResult EditCategoryInfo (CategoryInfo categoryInfo)
        {
            if (CategoryInfoService.EditEntity(categoryInfo))
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