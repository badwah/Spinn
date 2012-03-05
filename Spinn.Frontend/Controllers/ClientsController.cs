using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Spinn.Model;
using Spinn.Frontend.Models;
using Spinn.Repository;

namespace Spinn.Frontend.Controllers
{ 
    public class ClientsController : Controller
    {

        private readonly IClientRepository clientRepository;
        public ClientsController()
        {
            clientRepository = RepositoryFactory.GetClientRepository();
        }

        //
        // GET: /Clients/

        public ViewResult Index()
        {
            return View(clientRepository.All().ToList());
        }

        //
        // GET: /Clients/Details/5

        public ViewResult Details(int id)
        {
            Client client = clientRepository.Where(c=>c.Id==id).FirstOrDefault();
            return View(client);
        }

        //
        // GET: /Clients/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Clients/Create

        [HttpPost]
        public ActionResult Create(Client client)
        {
            if (ModelState.IsValid)
            {
                clientRepository.Add(client);
                clientRepository.UnitOfWork.Commit();
                return RedirectToAction("Index");  
            }

            return View(client);
        }
        
        //
        // GET: /Clients/Edit/5
 
        public ActionResult Edit(int id)
        {
            Client client = clientRepository.Where(c => c.Id == id).FirstOrDefault();
            return View(client);
        }

        //
        // POST: /Clients/Edit/5

        [HttpPost]
        public ActionResult Edit(Client client)
        {
            if (ModelState.IsValid)
            {
                clientRepository.Update(client);
                return RedirectToAction("Index");
            }
            return View(client);
        }

        //
        // GET: /Clients/Delete/5
 
        public ActionResult Delete(int id)
        {
            Client client = clientRepository.Where(c => c.Id == id).FirstOrDefault();
            return View(client);
        }

        //
        // POST: /Clients/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            var client = new Client {Id = id};
            clientRepository.Delete(client);
            clientRepository.UnitOfWork.Commit();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            clientRepository.Dispose();
            base.Dispose(disposing);
        }
    }
}