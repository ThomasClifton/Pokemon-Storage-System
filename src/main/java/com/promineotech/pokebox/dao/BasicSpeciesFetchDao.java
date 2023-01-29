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
import com.promineotech.pokebox.entity.Species;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class BasicSpeciesFetchDao implements SpeciesFetchDao {
  
  @Autowired
  private NamedParameterJdbcTemplate jdbcTemplate;

  @Override
  public List<Species> fetchSpeciesByDexNumber(int dexNumber) {
    log.info("DAO: dexNumber = {}", dexNumber);
    
    // @formatter:off
    String sql = ""
        + "SELECT * FROM species "
        + "WHERE dex_number = :dex_number";
    // @formatter:on
    
    Map<String, Object> params = new HashMap<>();
    params.put("dex_number", dexNumber);
    
    return jdbcTemplate.query(sql, params, new RowMapper<>() {
      
      @Override
      public Species mapRow(ResultSet rs, int rowNum) throws SQLException {
        // @formatter:off
        return Species.builder()
            .species_name(rs.getString("species_name"))
            .dex_number(rs.getInt("dex_number"))
            .description(rs.getString("description"))
            .build();
        // @formatter:on
      }
    });
  }

  @Override
  public List<Species> fetchPokedex() {
    log.info("DAO: fetch all species");
    
    // @formatter:off
    String sql = ""
        + "SELECT * FROM species ";
    // @formatter:on
    
    return jdbcTemplate.query(sql, new RowMapper<>() {
      
      @Override
      public Species mapRow(ResultSet rs, int rowNum) throws SQLException {
        // @formatter:off
        return Species.builder()
            .species_name(rs.getString("species_name"))
            .dex_number(rs.getInt("dex_number"))
            .description(rs.getString("description"))
            .build();
        // @formatter:on
      }
    });
  }

  @Override
  public List<Species> fetchSpeciesByType(String type) {
    log.info("DAO: fetch all species of a type = {}", type);
    
    // @formatter:off
    String sql = ""
        + "SELECT "
        + "species.species_name, "
        + "species.dex_number, "
        + "species.description "
        + "FROM species_type "
        + "JOIN species ON species_type.species_id=species.species_id "
        + "WHERE species_type.type_id = "
        + "(SELECT type.type_id FROM type WHERE type.type_name = '" + type + "')";
    // @formatter:on
    /**
    Map<String, Object> params = new HashMap<>();
    params.put("type_name", type);
    
    log.info(params.toString());
    **/
    System.out.println(sql);
    return jdbcTemplate.query(sql, new RowMapper<>() {
      
      @Override
      public Species mapRow(ResultSet rs, int rowNum) throws SQLException {
        // @formatter:off
        return Species.builder()
            .species_name(rs.getString("species_name"))
            .dex_number(rs.getInt("dex_number"))
            .description(rs.getString("description"))
            .build();
        // @formatter:on
      }
    });
  }

}
