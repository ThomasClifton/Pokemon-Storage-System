package com.promineotech.pokebox.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.promineotech.pokebox.dao.PokemonDao;
import com.promineotech.pokebox.entity.Gender;
import com.promineotech.pokebox.entity.Pokemon;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BasicPokemonService implements PokemonService {
  
  @Autowired
  private PokemonDao pokemonDao;

  @Override
  public List<Pokemon> fetchAllPokemon() {
    log.info("Service: fetch all pokemon");
    return pokemonDao.fetchAllPokemon();
  }

  @Override
  public List<Pokemon> fetchPokemon(int dex_number) {
    log.info("Service: fetch all pokemon by dex number");
    return pokemonDao.fetchPokemon(dex_number);
  }

  @Override
  public List<Pokemon> fetchPokemon(String pokemon_name) {
    log.info("Service: fetch all pokemon by pokemon name");
    return pokemonDao.fetchPokemon(pokemon_name);
  }

  @Override
  public List<Pokemon> fetchPokemon(int pokemon_id, String pokemon_name) {
    log.info("Controller: fetch pokemon by pokemon id");
    return pokemonDao.fetchPokemon(pokemon_id, pokemon_name);
  }

  @Override
  public Pokemon addPokemon(int species_id, String pokemon_name, int level, Gender gender,
      int shiny) {
    log.info("Service: add pokemon to the box");
    return pokemonDao.addPokemon(species_id, pokemon_name, level, gender, shiny);
  }

  @Override
  public Pokemon changePokemon(int pokemon_id, int species_id, String pokemon_name, int level,
      Gender gender, int shiny) {
    log.info("Service: change a pokemon");
    return pokemonDao.changePokemon(pokemon_id, species_id, pokemon_name, level, gender, shiny);
  }

  @Override
  public Pokemon releasePokemon(int pokemon_id) {
    log.info("Service: release a pokemon");
    return pokemonDao.releasePokemon(pokemon_id);
  }

}
