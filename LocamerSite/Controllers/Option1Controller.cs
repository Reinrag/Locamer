using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LocamerSite.Models;

namespace LocamerSite.Controllers
{
    public class Option1Controller : Controller
    {
        private LocamerDataGroupe5Entities db = new LocamerDataGroupe5Entities();

        // GET: Option1
        public ActionResult Index()
        {
            return View(db.Options1.ToList());
        }

        // GET: Option1/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Option1 option1 = db.Options1.Find(id);
            if (option1 == null)
            {
                return HttpNotFound();
            }
            return View(option1);
        }

        // GET: Option1/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Option1/Create
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codeOption,libelleOption,qteDispo,prixOption")] Option1 option1)
        {
            if (ModelState.IsValid)
            {
                db.Options1.Add(option1);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(option1);
        }

        // GET: Option1/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Option1 option1 = db.Options1.Find(id);
            if (option1 == null)
            {
                return HttpNotFound();
            }
            return View(option1);
        }

        // POST: Option1/Edit/5
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codeOption,libelleOption,qteDispo,prixOption")] Option1 option1)
        {
            if (ModelState.IsValid)
            {
                db.Entry(option1).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(option1);
        }

        // GET: Option1/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Option1 option1 = db.Options1.Find(id);
            if (option1 == null)
            {
                return HttpNotFound();
            }
            return View(option1);
        }

        // POST: Option1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Option1 option1 = db.Options1.Find(id);
            db.Options1.Remove(option1);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
