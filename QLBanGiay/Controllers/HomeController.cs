using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using QLBanGiay.Models;

namespace QLBanGiay.Controllers
{
    public class HomeController : Controller
    {
        qlbanhangEntities db = new qlbanhangEntities();
        public ActionResult Index(int maloaisp =0)
        {
            if (maloaisp == 0)
            {
                var sanPhams = db.SanPhams.Include(s => s.LoaiSP);
                return View(sanPhams.ToList());
            }
            else
            {
                var sanPhams = db.SanPhams.Include(s => s.LoaiSP).Where(x=>x.MaLoaiSP==maloaisp);
                return View(sanPhams.ToList());
            }    
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}