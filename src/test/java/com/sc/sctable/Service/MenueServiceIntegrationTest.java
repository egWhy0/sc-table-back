package com.sc.sctable.Service;

import com.sc.sctable.domain.Menue;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class MenueServiceIntegrationTest {
    private final MenueService menueService;

    @Autowired
    public MenueServiceIntegrationTest(MenueService menueService) {
        this.menueService = menueService;
    }

    @Test
    void DB테스트() {
        List<Menue> menues = menueService.findMenues();
        System.out.println(menues);

    }
}
