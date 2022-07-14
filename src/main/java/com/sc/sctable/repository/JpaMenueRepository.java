package com.sc.sctable.repository;

import com.sc.sctable.domain.Menue;

import javax.persistence.EntityManager;
import java.util.List;

public class JpaMenueRepository implements MenueRepository{
    private final EntityManager em;

    public JpaMenueRepository(EntityManager em) {
        this.em = em;
    }

    @Override
    public List<Menue> findAll() {
        return em.createQuery("select m from Menue m", Menue.class)
                .getResultList();
    }
}
