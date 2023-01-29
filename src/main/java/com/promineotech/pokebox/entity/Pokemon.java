package com.promineotech.pokebox.entity;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Pokemon {
  private int pokemon_id;
  private int species_id;
  private String pokemon_name;
  private int level;
  private Gender gender;
  private int shiny;
}
