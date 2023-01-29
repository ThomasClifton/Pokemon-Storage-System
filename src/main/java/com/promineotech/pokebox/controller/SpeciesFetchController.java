package com.promineotech.pokebox.controller;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import com.promineotech.pokebox.entity.Species;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.servers.Server;

@Validated
@RequestMapping("/species")
@OpenAPIDefinition(info = @Info(title = "Species Search Service"), servers = {@Server(url = "http://localhost:8080", description = "local server")})
public interface SpeciesFetchController {
  //@formatter:off
  
  @Operation(
      summary = "Returns a list of Species",
      description = "Returns a list of species given an optional criteria",
      responses = {
          @ApiResponse(
              responseCode = "200",
              description = "A list of Species is returned",
              content = @Content(
                  mediaType = "application/json",
                  schema = @Schema(implementation = Species.class))),
          @ApiResponse(
              responseCode = "400",
              description = "The request parameters are invalid"),
          @ApiResponse(
              responseCode = "404",
              description = "No Species were found with input criteria"),
          @ApiResponse(
              responseCode = "500",
              description = "An unplanned error occurred")
      },
      parameters = {
          @Parameter(
              name = "dexNumber",
              allowEmptyValue = false,
              required = false,
              description = "The dex number (1 - 151)")
      }
  )
  
  @GetMapping
  @ResponseStatus(code = HttpStatus.OK)
  List<Species> fetchSpeciesByDexNumber(
      @RequestParam(required = false)
          int dexNumber
      );
  
  @GetMapping("/pokedex")
  @ResponseStatus(code = HttpStatus.OK)
  List<Species> fetchPokedex();
  
  @GetMapping("/type")
  @ResponseStatus(code = HttpStatus.OK)
  List<Species> fetchSpeciesByType(
      @RequestParam(required = false)
          String type
      );
  
  //@formatter:on
}
