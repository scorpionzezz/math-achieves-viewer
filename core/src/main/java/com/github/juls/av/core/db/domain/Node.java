package com.github.juls.av.core.db.domain;

import javax.persistence.*;

@Entity
@Table(name = "NODES")
public class Node {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private byte value;

    private byte level;

    private String label;

    private String title;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public byte getValue() {
        return value;
    }

    public void setValue(byte value) {
        this.value = value;
    }

    public byte getLevel() {
        return level;
    }

    public void setLevel(byte level) {
        this.level = level;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
