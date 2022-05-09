package pack;

import java.util.Collection;
import java.util.HashMap;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

@Singleton
public class Facade {
	
	//HashMap<Integer, Personne> personnes = new HashMap<Integer, Personne>();
	//HashMap<Integer, Adresse> adresses = new HashMap<Integer, Adresse>();
	//int idP = 0;
	//int idA = 0;
	
	@PersistenceContext
	private EntityManager em;
	
	public boolean ajoutPersonne(String n, String p, String e, String mdp) {
		TypedQuery<Personne> req = em.createQuery("select p from Personne p where p.email like :em1", Personne.class)
				.setParameter("em1", e);
		Collection<Personne> lp = req.getResultList();
		boolean test = true; 
		if (lp.isEmpty()) {
			Personne pers = new Personne();
			pers.setNom(n);
			pers.setPrenom(p);
			pers.setEmail(e);
			//pers.setTel(t);
			pers.setMot_de_passe(mdp);
			em.persist(pers); 
		} else {
			test = false;
		} 
		return test;
	}
	
	public void ajoutArticle(String titre, float prix, String description, String mail, String tel, String ville) {
		Article article = new Article();
		article.setNom(titre);
		article.setPrix(prix);
		article.setDescription(description);
		article.setEmail(mail);
		article.setVille(ville);
		article.setTel(tel);
		em.persist(article);
	}
	
	/*public void ajoutAdresse(String r, String v) {
		Adresse ad = new Adresse(r, v);
		em.persist(ad); 
		//adresses.put(idA, ad);
		//idA++;
	}
	
	public Collection<Personne> listePersonnes(){
		TypedQuery<Personne> req = em.createQuery("select p from Personne p", Personne.class);
		Collection<Personne> lp = req.getResultList();
		return lp;
		//return personnes.values();
	}
	
	public Collection<Adresse> listeAdresses(){
		TypedQuery<Adresse> req = em.createQuery("select a from Adresse a", Adresse.class);
		Collection<Adresse> la = req.getResultList();
		return la;
		//return adresses.values();
	}
	
	public void associer(int idP, int idA) {
		Adresse ad = em.find(Adresse.class, idA);
		Personne per = em.find(Personne.class, idP);
		ad.setPersonne(per);
		em.persist(ad);
		//ad.setId_personne(idP);

	}
	*/


}