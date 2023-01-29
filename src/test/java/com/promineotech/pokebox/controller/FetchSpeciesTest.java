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
import com.promineotech.pokebox.entity.Species;
import com.promineotech.pokebox.entity.Type;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
@Sql(scripts = {
    "classpath:flyway/migrations/Pokebox_Schema.sql",
    "classpath:flyway/migrations/Species_Data.sql"}, 
    config = @SqlConfig(encoding = "utf-8")
)

public class FetchSpeciesTest extends TestSupport {
  
  @Autowired
  private SpeciesFetchController speciesFetchController;
  
  @Test
  void testThatContextLoads() throws Exception {
    assertThat(speciesFetchController).isNotNull();
  }
  
  @Test
  void testThatSpeciesAreReturnedWhenAValidDexNumberIsSupplied() {
    //GIVEN: a valid type
    int dexNumber = 1;
    String uri = String.format("%s?dexNumber=%s", getBaseUriForSpecies(), dexNumber);
    
    //WHEN: a connection is made to the url
    ResponseEntity<List<Species>> response = getTestRestTemplate().exchange(uri, HttpMethod.GET, null, new ParameterizedTypeReference<>() {});
    
    //THEN: a success (OK - 200) code is returned
    assertThat(response).isNotNull();
    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    
    //AND: the list matches the expected list
    List<Species> actual = response.getBody();
    List<Species> expected = buildExpectedDexNumber();
    
    assertThat(actual).isEqualTo(expected);
  }
  
  @Test
  void testThatAllSpeciesAreReturned() {
    //GIVEN:
    String uri = String.format("%s/pokedex", getBaseUriForSpecies());
    
    //WHEN: a connection is made to the url
    ResponseEntity<List<Species>> response = getTestRestTemplate().exchange(uri, HttpMethod.GET, null, new ParameterizedTypeReference<>() {});
    
    //THEN: a success (OK - 200) code is returned
    assertThat(response).isNotNull();
    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    
    //AND: has 14 entries
    assertThat(response.getBody().size() == 14);
  }
  
  @Test
  void testThatAllSpeciesWithTheSameTypeAreReturned() {
  //GIVEN: a valid type
    Type type = Type.builder().type("Fire").build();
    String uri = String.format("%s/type?type=%s", getBaseUriForSpecies(), type.getType());
    
    //WHEN: a connection is made to the url
    ResponseEntity<List<Species>> response = getTestRestTemplate().exchange(uri, HttpMethod.GET, null, new ParameterizedTypeReference<>() {});
    
    //THEN: a success (OK - 200) code is returned
    assertThat(response).isNotNull();
    assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
    
    //AND: the list matches the expected list
    List<Species> actual = response.getBody();
    List<Species> expected = buildExpectedType();
    
    assertThat(actual).isEqualTo(expected);
  }
}
