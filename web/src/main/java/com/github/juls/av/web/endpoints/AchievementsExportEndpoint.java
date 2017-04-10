package com.github.juls.av.web.endpoints;

import com.github.juls.av.core.db.domain.Achievement;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
public class AchievementsExportEndpoint {

    @GetMapping("/info")
    public List<Achievement> getAchievementsInfo() {
        Achievement a = new Achievement();
        a.setId(123L);
        a.setInfo("info");
        a.setParentId(321L);
        a.setShortInfo("short info");
        return Collections.singletonList(a);
    }

}
