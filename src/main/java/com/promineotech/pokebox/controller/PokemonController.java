package com.promineotech.pokebox.controller;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import com.promineotech.pokebox.entity.Gender;
import com.promineotech.pokebox.entity.Pokemon;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.servers.Server;

@Validated
@RequestMapping("/pokemon")
@OpenAPIDefinition(info = @Info(title = "Pokemon Search Service"), servers = {@Server(url = "http://localhost:8080", description = "local server")})
public interface PokemonController {
//@formatter:off
  @Operation(
      summary = "Returns a list of Pokemon",
      description = "Returns a list of Pokemon given an optional dex number or species name",
      responses = {
          @ApiResponse(
              responseCode = "200",
              description = "A list of Pokemon is returned",
              content = @Content(
                  mediaType = "application/json",
                  schema = @Schema(implementation = Pokemon.class))),
          @ApiResponse(
              responseCode = "400",
              description = "The request parameters are invalid"),
          @ApiResponse(
              responseCode = "404",
              description = "No Pokemon were found with input criteria"),
          @ApiResponse(
              responseCode = "500",
              description = "An unplanned error occurred")
      }
  )
  
  
  @GetMapping("/all")
  @ResponseStatus(code = HttpStatus.OK)
  List<Pokemon> fetchPokemon();
  
  @GetMapping("/by_dex")
  @ResponseStatus(code = HttpStatus.OK)
  List<Pokemon> fetchPokemon(
      @RequestParam(required = true) int dex_number
      );
  
  @GetMapping("/by_name")
  @ResponseStatus(code = HttpStatus.OK)
  List<Pokemon> fetchPokemon(
      @RequestParam(required = true) String pokemon_name
      );
  
  @GetMapping("/by_id")
  @ResponseStatus(code = HttpStatus.OK)
  List<Pokemon> fetchPokemon(
      @RequestParam(required = true) int pokemon_id,
      @RequestParam(required = false) String pokemon_name
      );
  
  @PostMapping("/add_pokemon")
  @ResponseStatus(code = HttpStatus.CREATED)
  Pokemon addPokemon(
      @RequestParam(required = true) int species_id,
      @RequestParam(required = true) String pokemon_name,
      @RequestParam(required = true) int level,
      @RequestParam(required = true) Gender gender,
      @RequestParam(required = true) int shiny
      );
  
  @PutMapping("/change_pokemon")
  @ResponseStatus(code = HttpStatus.OK)
  Pokemon changePokemon(
      @RequestParam(required = true) int pokemon_id,
      @RequestParam(required = true) int species_id,
      @RequestParam(required = true) String pokemon_name,
      @RequestParam(required = true) int level,
      @RequestParam(required = true) Gender gender,
      @RequestParam(required = true) int shiny);
  
  @DeleteMapping("/release")
  @ResponseStatus(code = HttpStatus.OK)
  Pokemon releasePokemon(
      @RequestParam(required=true) int pokemon_id);
  // @formatter:off
}
