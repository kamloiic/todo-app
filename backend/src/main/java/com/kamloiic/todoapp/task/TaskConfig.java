package com.kamloiic.todoapp.task;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.List;


    @Configuration
    public class TaskConfig {
        @Bean
        CommandLineRunner commandLineRunner (TaskRepository taskRepository){
            return args -> {
                Task task1 = new Task ("create a task", true);
                Task task2 = new Task ("call benoit");
                Task task3 = new Task ("dockerize spring boot app", true);
                Task task4 = new Task ("sleep");

                taskRepository.saveAll(List.of(task1, task2, task3, task4));
            };
        }
    }

