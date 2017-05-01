package com.github.juls.av.core.db.repo;

import com.github.juls.av.core.db.domain.Node;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NodesRepository extends JpaRepository<Node, Long>{
}
