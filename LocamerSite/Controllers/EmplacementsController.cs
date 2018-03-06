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
    public class EmplacementsController : Controller
    {
        private LocamerDataGroupe5Entities db = new LocamerDataGroupe5Entities();

        // GET: Emplacements
        public ActionResult Index()
        {
            var emplacements = db.Emplacements.Include(e => e.Tarif);
            return View(emplacements.ToList());
        }

        // GET: Emplacements/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emplacement emplacement = db.Emplacements.Find(id);
            if (emplacement == null)
            {
                return HttpNotFound();
            }
            return View(emplacement);
        }

        // GET: Emplacements/Create
        public ActionResult Create()
        {
            ViewBag.codeTarif = new SelectList(db.Tarifs, "codeTarif", "libelleTarif");
            return View();
        }

        // POST: Emplacements/Create
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codeEmplacement,codeTarif,capacite,terrasse")] Emplacement emplacement)
        {
            if (ModelState.IsValid)
            {
                db.Emplacements.Add(emplacement);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.codeTarif = new SelectList(db.Tarifs, "codeTarif", "libelleTarif", emplacement.codeTarif);
            return View(emplacement);
        }

        // GET: Emplacements/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emplacement emplacement = db.Emplacements.Find(id);
            if (emplacement == null)
            {
                return HttpNotFound();
            }
            ViewBag.codeTarif = new SelectList(db.Tarifs, "codeTarif", "libelleTarif", emplacement.codeTarif);
            return View(emplacement);
        }

        // POST: Emplacements/Edit/5
        // Afin de déjouer les attaques par sur-validation, activez les propriétés spécifiques que vous voulez lier. Pour 
        // plus de détails, voir  http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codeEmplacement,codeTarif,capacite,terrasse")] Emplacement emplacement)
        {
            if (ModelState.IsValid)
            {
                db.Entry(emplacement).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.codeTarif = new SelectList(db.Tarifs, "codeTarif", "libelleTarif", emplacement.codeTarif);
            return View(emplacement);
        }

        // GET: Emplacements/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Emplacement emplacement = db.Emplacements.Find(id);
            if (emplacement == null)
            {
                return HttpNotFound();
            }
            return View(emplacement);
        }

        // POST: Emplacements/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Emplacement emplacement = db.Emplacements.Find(id);
            db.Emplacements.Remove(emplacement);
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
