package com.github.juls.av.core.db.repo;

import com.github.juls.av.core.db.domain.Link;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LinksRepository extends JpaRepository<Link, Long> {
}
