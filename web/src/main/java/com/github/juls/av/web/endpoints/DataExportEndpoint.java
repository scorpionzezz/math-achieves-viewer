package com.github.juls.av.web.endpoints;

import com.github.juls.av.core.db.domain.Achievement;
import com.github.juls.av.core.db.domain.Link;
import com.github.juls.av.core.db.domain.Node;
import com.github.juls.av.core.db.repo.LinksRepository;
import com.github.juls.av.core.db.repo.NodesRepository;
import com.github.juls.av.web.retrieve.AchievementsRetriever;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
public class DataExportEndpoint {
    private static final Logger LOG = LoggerFactory.getLogger(DataExportEndpoint.class);

    private final AchievementsRetriever achievementsRetriever;
    private final NodesRepository nodesRepository;
    private final LinksRepository linksRepository;

    @Autowired
    public DataExportEndpoint(AchievementsRetriever achievementsRetriever,
                              NodesRepository nodesRepository, LinksRepository linksRepository) {
        this.achievementsRetriever = achievementsRetriever;
        this.nodesRepository = nodesRepository;
        this.linksRepository = linksRepository;
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

    @GetMapping("/data")
    public List<Node> exportData() {
        try {
            return nodesRepository.findAll();
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            return Collections.emptyList();
        }
    }

    @GetMapping("/edges")
    public List<Link> exportEdges() {
        try {
            return linksRepository.findAll();
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            return Collections.emptyList();
        }
    }
}
