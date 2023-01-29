package com.promineotech.pokebox.entity;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Species {
  private String species_name;
  private int dex_number;
  private String description;
}
