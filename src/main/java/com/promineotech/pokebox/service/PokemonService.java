package com.promineotech.pokebox.service;

import java.util.List;
import com.promineotech.pokebox.entity.Gender;
import com.promineotech.pokebox.entity.Pokemon;

public interface PokemonService {

  List<Pokemon> fetchAllPokemon();

  List<Pokemon> fetchPokemon(int dex_number);

  List<Pokemon> fetchPokemon(String pokemon_name);

  Pokemon addPokemon(int species_id, String pokemon_name, int level, Gender gender, int shiny);

  Pokemon changePokemon(int pokemon_id, int species_id, String pokemon_name, int level,
      Gender gender, int shiny);

  Pokemon releasePokemon(int pokemon_id);

  List<Pokemon> fetchPokemon(int pokemon_id, String pokemon_name);

}
