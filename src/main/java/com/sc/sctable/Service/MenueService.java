package com.sc.sctable.Service;

import com.sc.sctable.domain.Menue;
import com.sc.sctable.repository.MenueRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class MenueService {
    private final MenueRepository menueRepository;

    public MenueService(MenueRepository menueRepository) {
        this.menueRepository = menueRepository;
    }

    public List<Menue> findMenues() {
        return menueRepository.findAll();
    }
}
