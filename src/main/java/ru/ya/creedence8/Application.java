package ru.ya.creedence8;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


import java.util.concurrent.ExecutionException;

@SpringBootApplication
public class Application {

    public static void main(String[] args) throws ExecutionException, InterruptedException {
        SpringApplication.run(Application.class, args);
    }

}