package com.promineotech.pokebox.controller;

import static org.assertj.core.api.Assertions.assertThat;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.jdbc.SqlConfig;
import com.promineotech.pokebox.controller.support.TestSupport;
import com.promineotech.pokebox.entity.Pokemon;


@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
@Sql(scripts = {
    "classpath:flyway/migrations/Pokebox_Schema.sql",
    "classpath:flyway/migrations/Species_Data.sql",
    "classpath:flyway/migrations/Pokemon_Data.sql"}, 
    config = @SqlConfig(encoding = "utf-8")
)

public class FetchPokemonTest extends TestSupport {
  
  @Autowired
  private PokemonController pokemonController;

  @Test
  void testThatContextLoads() throws Exception {
    assertThat(pokemonController).isNotNull();
  }
  
  @Test
  void testThatAllPokemonAreReturned() {
    //GIVEN:
    String uri = String.format("%s/pokemon/all", getBaseUriForPokemon());
    
    //WHEN: a connection is made to the url
    ResponseEntity<List<Pokemon>> response = getTestRestTemplate().exchange(uri, HttpMethod.GET, null, new ParameterizedTypeReference<>() {});
    
    //THEN: a success (OK - 200) code is returned
    assertThat(response).isNotNull();
    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    
    //AND: has 14 entries
    assertThat(response.getBody().size() == 7);
  }
  
  @Test
  void testThatPokemonIsAddedCorrectly() {
  //GIVEN:
    Pokemon expected = createPokemon();
    String uri = String.format("%s/pokemon/add_pokemon?species_id=%s&pokemon_name=%s&level=%s&gender=%s&shiny=%s", 
        getBaseUriForPokemon(), expected.getSpecies_id(), expected.getPokemon_name(), expected.getLevel(), expected.getGender().toString().toLowerCase(), expected.getShiny());
    /**
    HttpHeaders headers = new HttpHeaders();
    headers.setContentType(MediaType.APPLICATION_JSON);
    String body = createPokemon();
    HttpEntity<String> bodyEntity = new HttpEntity<>(body, headers);
    System.out.println(bodyEntity.toString());
    **/
    //WHEN: a connection is made to the url
    ResponseEntity<Pokemon> response = getTestRestTemplate().exchange(uri, HttpMethod.POST, null, new ParameterizedTypeReference<>() {});
    
    //THEN: a success (CREATED - 201) code is returned
    assertThat(response).isNotNull();
    System.out.println(response.toString());
    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.CREATED);
    
    //AND: pokemon is returned
    Pokemon actual = response.getBody();
    
    assertThat(actual).isNotNull();
    assertThat(actual).isEqualTo(expected);
  }
  
}
