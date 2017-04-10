package com.github.juls.av.web.endpoints;

import com.github.juls.av.core.db.domain.Achievement;
import com.github.juls.av.web.retrieve.AchievementsRetriever;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
public class AchievementsExportEndpoint {
    private static final Logger LOG = LoggerFactory.getLogger(AchievementsExportEndpoint.class);

    private final AchievementsRetriever achievementsRetriever;

    @Autowired
    public AchievementsExportEndpoint(AchievementsRetriever achievementsRetriever) {
        this.achievementsRetriever = achievementsRetriever;
    }

    @GetMapping("/info")
    public List<Achievement> getAchievementsInfo() {
        try {
            return achievementsRetriever.getAchievements();
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            return Collections.emptyList();
        }
    }

}
