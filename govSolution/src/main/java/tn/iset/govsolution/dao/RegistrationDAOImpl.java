package tn.iset.govsolution.dao;

import java.util.List;

import javax.persistence.EntityManager;

import tn.iset.govsolution.config.EMF;
import tn.iset.govsolution.entity.Inscription;

public class RegistrationDAOImpl implements RegistrationDAO {
	
	public EntityManager entityManager=EMF.createEntityManager();

	@Override
	public Inscription addInscription(Inscription Inscription) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Inscription updateInscription(Inscription Inscription) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteInscription(long InscriptionId) {
		// TODO Auto-generated method stub

	}

	@Override
	public Inscription getInscription(long InscriptionId) {
		return (Inscription) entityManager.createQuery("select ins from Inscription ins where ins.id = "+String.valueOf(InscriptionId)).getSingleResult();
	}

	@Override
	public List<Inscription> getInscriptions() {
		// TODO Auto-generated method stub
		return entityManager.createQuery("select ins from Inscription ins").getResultList();
	}

}
