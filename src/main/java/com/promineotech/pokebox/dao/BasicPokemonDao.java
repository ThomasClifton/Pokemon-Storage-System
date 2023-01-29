package com.promineotech.pokebox.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;
import com.promineotech.pokebox.entity.Gender;
import com.promineotech.pokebox.entity.Pokemon;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class BasicPokemonDao implements PokemonDao {

  @Autowired
  private NamedParameterJdbcTemplate jdbcTemplate;

  @Override
  public List<Pokemon> fetchAllPokemon() {
    log.info("DAO: fetch all pokemon");

    // @formatter:off
    String sql = ""
        + "SELECT * FROM pokemon ";
    // @formatter:on

    return jdbcTemplate.query(sql, new RowMapper<>() {

      @Override
      public Pokemon mapRow(ResultSet rs, int rowNum) throws SQLException {
        // @formatter:off
        return Pokemon.builder()
            .pokemon_id(rs.getInt("pokemon_id"))
            .species_id(rs.getInt("species_id"))
            .pokemon_name(rs.getString("pokemon_name"))
            .level(rs.getInt("level"))
            .gender(Gender.valueOf(rs.getString("gender").toUpperCase()))
            .shiny(rs.getInt("shiny"))
            .build();
        // @formatter:on
      }
    });
  }

  @Override
  public List<Pokemon> fetchPokemon(int dex_number) {
    log.info("DAO: fetch pokemon with dex_number={}", dex_number);

    // @formatter:off
    String sql = ""
        + "SELECT * FROM pokemon "
        + "WHERE pokemon.species_id = "
        + "(SELECT species.species_id FROM species WHERE species.dex_number = :dex_number)";
    // @formatter:on

    Map<String, Object> params = new HashMap<>();
    params.put("dex_number", dex_number);

    return jdbcTemplate.query(sql, params, new RowMapper<>() {

      @Override
      public Pokemon mapRow(ResultSet rs, int rowNum) throws SQLException {
        // @formatter:off
        return Pokemon.builder()
            .pokemon_id(rs.getInt("pokemon_id"))
            .species_id(rs.getInt("species_id"))
            .pokemon_name(rs.getString("pokemon_name"))
            .level(rs.getInt("level"))
            .gender(Gender.valueOf(rs.getString("gender").toUpperCase()))
            .shiny(rs.getInt("shiny"))
            .build();
        // @formatter:on
      }
    });
  }

  @Override
  public List<Pokemon> fetchPokemon(String pokemon_name) {
    log.info("DAO: fetch pokemon with pokemon_name={}", pokemon_name);

    // @formatter:off
    String sql = ""
        + "SELECT * FROM pokemon "
        + "WHERE pokemon_name = :pokemon_name";
    // @formatter:on

    Map<String, Object> params = new HashMap<>();
    params.put("pokemon_name", pokemon_name);

    return jdbcTemplate.query(sql, params, new RowMapper<>() {

      @Override
      public Pokemon mapRow(ResultSet rs, int rowNum) throws SQLException {
        // @formatter:off
        return Pokemon.builder()
            .pokemon_id(rs.getInt("pokemon_id"))
            .species_id(rs.getInt("species_id"))
            .pokemon_name(rs.getString("pokemon_name"))
            .level(rs.getInt("level"))
            .gender(Gender.valueOf(rs.getString("gender").toUpperCase()))
            .shiny(rs.getInt("shiny"))
            .build();
        // @formatter:on
      }
    });
  }

  @Override
  public List<Pokemon> fetchPokemon(int pokemon_id, String pokemon_name) {
    log.info("DAO: fetch pokemon with pokemon_id={}", pokemon_id);

    // @formatter:off
    String sql = ""
        + "SELECT * FROM pokemon "
        + "WHERE pokemon_id = :pokemon_id";
    // @formatter:on

    Map<String, Object> params = new HashMap<>();
    params.put("pokemon_id", pokemon_id);

    return jdbcTemplate.query(sql, params, new RowMapper<>() {

      @Override
      public Pokemon mapRow(ResultSet rs, int rowNum) throws SQLException {
        // @formatter:off
        return Pokemon.builder()
            .pokemon_id(rs.getInt("pokemon_id"))
            .species_id(rs.getInt("species_id"))
            .pokemon_name(rs.getString("pokemon_name"))
            .level(rs.getInt("level"))
            .gender(Gender.valueOf(rs.getString("gender").toUpperCase()))
            .shiny(rs.getInt("shiny"))
            .build();
        // @formatter:on
      }
    });
  }

  @Override
  public Pokemon addPokemon(int species_id, String pokemon_name, int level, Gender gender,
      int shiny) {
    log.info("DAO: add pokemon");

    // @formatter:off
    String sql = ""
        + "INSERT INTO pokemon ("
        + "species_id, pokemon_name, level, gender, shiny"
        + ") VALUES ("
        + ":species_id, :pokemon_name, :level, :gender, :shiny"
        + ")";
    // @formatter:on

    Map<String, Object> params = new HashMap<>();
    params.put("species_id", species_id);
    params.put("pokemon_name", pokemon_name);
    params.put("level", level);
    params.put("gender", gender.toString().toUpperCase());
    params.put("shiny", shiny);

    jdbcTemplate.update(sql, params);

    // @formatter:off
    return Pokemon.builder()
        .species_id(species_id)
        .pokemon_name(pokemon_name)
        .level(level)
        .gender(gender)
        .shiny(shiny)
        .build();
    // @formatter:on
  }

  @Override
  public Pokemon changePokemon(int pokemon_id, int species_id, String pokemon_name, int level,
      Gender gender, int shiny) {
    log.info("DAO: change pokemon");

    // @formatter:off
    String sql = ""
        + "UPDATE pokemon SET "
        + "species_id = :species_id, "
        + "pokemon_name = :pokemon_name, "
        + "level = :level, "
        + "gender = :gender, "
        + "shiny = :shiny "
        + "WHERE pokemon_id = :pokemon_id";
    // @formatter:on

    Map<String, Object> params = new HashMap<>();
    params.put("species_id", species_id);
    params.put("pokemon_name", pokemon_name);
    params.put("level", level);
    params.put("gender", gender.toString().toUpperCase());
    params.put("shiny", shiny);
    params.put("pokemon_id", pokemon_id);

    jdbcTemplate.update(sql, params);

    // @formatter:off
    return Pokemon.builder()
        .species_id(species_id)
        .pokemon_name(pokemon_name)
        .level(level)
        .gender(gender)
        .shiny(shiny)
        .build();
    // @formatter:on
  }

  @Override
  public Pokemon releasePokemon(int pokemon_id) {
    log.info("DAO: release pokemon with pokemon_id={}", pokemon_id);

    // @formatter:off
    String sql = ""
        + "DELETE FROM pokemon "
        + "WHERE pokemon_id = :pokemon_id";
    // @formatter:on

    Map<String, Object> params = new HashMap<>();
    params.put("pokemon_id", pokemon_id);

    jdbcTemplate.update(sql, params);

    // @formatter:off
    return Pokemon.builder()
        .pokemon_id(pokemon_id)
        .build();
    // @formatter:on
  }

}
