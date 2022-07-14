package com.sc.sctable;

import com.sc.sctable.Service.MenueService;
import com.sc.sctable.repository.JpaMenueRepository;
import com.sc.sctable.repository.MenueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.persistence.EntityManager;

@Configuration
public class SpringConfig {
    private final EntityManager em;


    @Autowired
    public SpringConfig(EntityManager em) {
        this.em = em;
    }

    @Bean
    public MenueService menueService() {
        return new MenueService(menueRepository());
    }

    @Bean
    public MenueRepository menueRepository() {
        return new JpaMenueRepository(em);
    }

}
