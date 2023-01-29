package com.promineotech.pokebox;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.promineotech"})
public class Pokebox {

  public static void main(String[] args) {
    SpringApplication.run(Pokebox.class, args);
  }

}
