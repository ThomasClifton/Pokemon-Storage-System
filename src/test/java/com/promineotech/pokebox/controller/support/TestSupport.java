package com.promineotech.pokebox.controller.support;

import java.util.LinkedList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.test.web.server.LocalServerPort;
import com.promineotech.pokebox.entity.Gender;
import com.promineotech.pokebox.entity.Pokemon;
import com.promineotech.pokebox.entity.Species;
import lombok.Getter;

public class TestSupport {
  @LocalServerPort
  private int serverPort;

  @Autowired
  @Getter
  private TestRestTemplate testRestTemplate;

  protected String getBaseUriForSpecies() {
    return String.format("http://localhost:%d/species", serverPort);
  }

  protected String getBaseUriForPokemon() {
    return String.format("http://localhost:%d/pokemon", serverPort);
  }
  
  protected List<Species> buildExpectedDexNumber() {
    List<Species> list = new LinkedList<>();
    
    // @formatter:off
    list.add(Species.builder()
        .species_name("Bulbasaur")
        .dex_number(1)
        .description("A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokemon")
        .build());
    // @formatter:on
    
    return list;
  }
  
  protected List<Species> buildExpectedType() {
    List<Species> list = new LinkedList<>();
    
    // @formatter:off
    list.add(Species.builder()
        .species_name("Charmander")
        .dex_number(4)
        .description("Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.")
        .build());
    // @formatter:on
    
    return list;
  }
  
  protected Pokemon createPokemon() {
    // @formatter:off
    return Pokemon.builder()
        .pokemon_id(1)
        .species_id(2)
        .pokemon_name("Charmander")
        .level(5)
        .gender(Gender.MALE)
        .shiny(0)
        .build();
    // @formatter:on
  }
}
