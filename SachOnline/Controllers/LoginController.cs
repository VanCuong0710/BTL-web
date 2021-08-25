using SachOnline.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SachOnline.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult NewRegister()
        {
            return View();
        }
        public ActionResult NewSignIn()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Authen(KhachHang kh)
        {
            DataBase mydb = new DataBase();
            var check = mydb.KhachHangs.Where(p => p.SDT.Equals(kh.SDT) && p.MatKhau.Equals(kh.MatKhau)).FirstOrDefault();
            if(check == null)
            {
                
                ViewBag.Error = "Đăng nhập không thành công";
                return View("Index", kh);
            }    
            else
            {
                Session["SDT"] = kh.SDT;
                return RedirectToAction("Home","SanPhams");
            }    
        }
   
   
        // METHOD dùng để xử lý model 
        [HttpPost]
        public ActionResult Register(KhachHang kh)
        {
            DataBase mydb = new DataBase();
            if (ModelState.IsValid)
            {
                var check = mydb.KhachHangs.FirstOrDefault(s => s.SDT == kh.SDT);
                if(check ==null)
                {
                    mydb.Configuration.ValidateOnSaveEnabled = false;
                    mydb.KhachHangs.Add(kh);
                    mydb.SaveChanges();
                    Session["Kiemtra"] = 1;
                    return RedirectToAction("Index");
                }    
                else
                {
                    ViewBag.Error = "Số điện thoại này đã đăng ký";
                    return View();
                }    
            }
            return View();
        }
        public ActionResult Logout()
        {
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }    
    }
}