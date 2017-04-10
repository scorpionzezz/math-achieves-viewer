package com.github.juls.av.web;

import com.github.juls.av.Core;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

@Import(Core.class)
@SpringBootApplication
public class Bootstrapper {

    public static void main(String[] args) {
        SpringApplication.run(Bootstrapper.class, args);
    }

}
