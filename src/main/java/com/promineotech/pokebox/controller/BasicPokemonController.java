package com.promineotech.pokebox.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import com.promineotech.pokebox.entity.Gender;
import com.promineotech.pokebox.entity.Pokemon;
import com.promineotech.pokebox.service.PokemonService;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class BasicPokemonController implements PokemonController {
  
  @Autowired
  private PokemonService pokemonService;

  @Override
  public List<Pokemon> fetchPokemon() {
    log.info("Controller: fetch all pokemon");
    return pokemonService.fetchAllPokemon();
  }

  @Override
  public List<Pokemon> fetchPokemon(int dex_number) {
    log.info("Controller: fetch all pokemon by dex number");
    return pokemonService.fetchPokemon(dex_number);
  }

  @Override
  public List<Pokemon> fetchPokemon(String pokemon_name) {
    log.info("Controller: fetch all pokemon by pokemon name");
    return pokemonService.fetchPokemon(pokemon_name);
  }

  @Override
  public List<Pokemon> fetchPokemon(int pokemon_id, String pokemon_name) {
    log.info("Controller: fetch pokemon by pokemon id");
    return pokemonService.fetchPokemon(pokemon_id, pokemon_name);
  }

  @Override
  public Pokemon addPokemon(int species_id, String pokemon_name, int level, Gender gender,
      int shiny) {
    log.info("Controller: add pokemon to the box");
    return pokemonService.addPokemon(species_id, pokemon_name, level, gender, shiny);
  }

  @Override
  public Pokemon changePokemon(int pokemon_id, int species_id, String pokemon_name, int level,
      Gender gender, int shiny) {
    log.info("Controller: change a pokemon");
    return pokemonService.changePokemon(pokemon_id, species_id, pokemon_name, level, gender, shiny);
  }

  @Override
  public Pokemon releasePokemon(int pokemon_id) {
    log.info("Controller: release a pokemon");
    return pokemonService.releasePokemon(pokemon_id);
  }
  
}
