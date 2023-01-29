package com.promineotech.pokebox;

import java.util.List;
import java.util.Objects;
import java.util.Scanner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import com.promineotech.pokebox.entity.Gender;
import com.promineotech.pokebox.entity.Pokemon;
import com.promineotech.pokebox.entity.Species;
import com.promineotech.pokebox.entity.Type;
import com.promineotech.pokebox.service.PokemonService;
import com.promineotech.pokebox.service.SpeciesFetchService;

@SpringBootApplication(scanBasePackages = {"com.promineotech"})
public class PokeboxUI {
  
  // @formatter:off
  private List<String> startOperations = List.of(
    "1) Open box app",
    "2) Open pokedex app"
  );
  // @formatter:on
  
  // @formatter:off
  private List<String> pokeboxOperations = List.of(
    "1) View full pokebox",
    "2) Search by dex number",
    "3) Search by pokemon name/nickname",
    "4) Add pokemon to the box",
    "5) Update a pokemon",
    "6) Release a pokemon"
  );
  // @formatter:on
  
  // @formatter:off
  private List<String> pokedexOperations = List.of(
    "1) View full pokedex",
    "2) Search by type",
    "3) Search by dex number"
  );
  // @formatter:on
  
  private Scanner sc = new Scanner(System.in);
  
  private static ApplicationContext applicationContext;
  
  private static PokemonService pokemonService;
  
  private static SpeciesFetchService speciesFetchService;

  public static void main(String[] args) {
    applicationContext = SpringApplication.run(PokeboxUI.class, args);
    pokemonService = applicationContext.getBean(PokemonService.class);
    speciesFetchService = applicationContext.getBean(SpeciesFetchService.class);
    new PokeboxUI().startMenu();
  }
  
  private void startMenu() {
    boolean done = false;
    while(!done) {
      try {
        int selection = getMainMenuSelection();
        switch (selection) {
          case -1:
            done = exitApp();
            break;
          case 1:
            pokeboxMenu();
            break;
          case 2:
            pokedexMenu();
            break;
          default:
            System.out.println("\n" + selection + " is not a valid selection. Try again.");
            break;
        }
      }catch(Exception e) {
        System.out.println("\nError: " + e + " Try again.");
      }
    }
  }
  
  private void pokeboxMenu(){
    boolean done = false;
    while(!done) {
      try {
        int selection = getPokeboxSelection();
        switch (selection) {
          case -1:
            done = exitPokebox();
            break;
          case 1:
            listPokemon();
            break;
          case 2:
            fetchPokemonByDexNumber();
            break;
          case 3:
            fetchPokemonByName();
            break;
          case 4:
            addPokemon();
            break;
          case 5:
            updatePokemon();
            break;
          case 6:
            releasePokemon();
            break;
          default:
            System.out.println("\n" + selection + " is not a valid selection. Try again.");
            break;
        }
      }catch(Exception e) {
        System.out.println("\nError: " + e + " Try again.");
      }
    }
  }
  
  private void listPokemon() {
    System.out.println("Listing all pokemon in box:");
    List<Pokemon> list = pokemonService.fetchAllPokemon();
    for(Pokemon pokemon : list) {
      System.out.println("  " + pokemon.toString());
    }
  }

  private void fetchPokemonByDexNumber() {
    Integer dexNumber = getIntInput("Enter the dex number of the pokemon to search for");
    if(dexNumber > 0) {
      List<Pokemon> list = pokemonService.fetchPokemon(dexNumber);
      if(!Objects.isNull(list) && list.size() > 0) {
        System.out.println("Pokemon with dex number = " + dexNumber + ":");
        for(Pokemon pokemon : list) {
          System.out.println("  " + pokemon.toString());
        }
      }
    }
    else {
      System.out.println("Dex number " + dexNumber + " is invalid.");
    }
  }

  private void fetchPokemonByName() {
    String name = getStringInput("Enter the name or nickname of a pokemon to search for");
    if(!Objects.isNull(name)) {
      List<Pokemon> list = pokemonService.fetchPokemon(name);
      if(!Objects.isNull(list) && list.size() > 0) {
        System.out.println("Pokemon with the name: " + name);
        for(Pokemon pokemon : list) {
          System.out.println("  " + pokemon.toString());
        }
      }
    }
    else {
      System.out.println("No pokemon found with that name");
    }
  }

  private void addPokemon() {
    Integer species_id = getIntInput("Enter the species id of the pokemon");
    String pokemon_name = getStringInput("Enter the name or nickname of the pokemon");
    Integer level = getIntInput("Enter the level of the pokemon");
    Gender gender = Gender.valueOf(getStringInput("Enter the gender of the pokemon (male, female)").toUpperCase());
    Integer shiny = getIntInput("Enter 0 if pokemon is not shiny, enter 1 if it is shiny");
    
    pokemonService.addPokemon(species_id, pokemon_name, level, gender, shiny);
    System.out.println("You have added " + pokemon_name + " to the box.\n");
  }

  private void updatePokemon() {
    Integer pokemon_id = getIntInput("Enter the pokemon id you wish to change");
    
    Pokemon pokemon = pokemonService.fetchPokemon(pokemon_id, "").get(0);
    
    String name = getStringInput("Current name is " + pokemon.getPokemon_name() + ". Enter the new nickname or press enter to keep it the same");
    Integer level = getIntInput("Current level is " + pokemon.getLevel() +". Enter the new level if it has increased, or press enter");
    
    // @formatter:off
    pokemonService.changePokemon(
        pokemon_id,
        pokemon.getSpecies_id(),
        Objects.isNull(name) ? pokemon.getPokemon_name() : name,
        Objects.isNull(level) ? pokemon.getLevel() : level,
        pokemon.getGender(),
        pokemon.getShiny());
    // @formatter:on
    
    System.out.println("Updated pokemon info.\n");
  }

  private void releasePokemon() {
    Integer pokemon_id = getIntInput("Enter the pokemon id you wish to release");
    
    pokemonService.releasePokemon(pokemon_id);
  }

  private void pokedexMenu() {
    boolean done = false;
    while(!done) {
      try {
        int selection = getPokedexSelection();
        switch (selection) {
          case -1:
            done = exitPokedex();
            break;
          case 1:
            listPokedex();
            break;
          case 2:
            fetchSpeciesByType();
            break;
          case 3:
            fetchSpeciesByDexNumber();
            break;
          default:
            System.out.println("\n" + selection + " is not a valid selection. Try again.");
            break;
        }
      }catch(Exception e) {
        System.out.println("\nError: " + e + " Try again.");
      }
    }
  }
  
  private void listPokedex() {
    System.out.println("Listing all species of Pokemon:");
    List<Species> pokedex = speciesFetchService.fetchPokedex();
    for(Species species : pokedex) {
      System.out.println("  " + species.toString());
    }
  }

  private void fetchSpeciesByType() {
    Type type = Type.builder().type(getStringInput("What type of pokemon would you like to see?")).build();
    List<Species> list = speciesFetchService.fetchSpeciesByType(type.getType());
    for(Species species : list) {
      System.out.println("  " + species.toString());
    }
  }

  private void fetchSpeciesByDexNumber() {
    Integer dexNumber = getIntInput("Enter the dex number you would like the entry for");
    List<Species> list = speciesFetchService.fetchSpeciesByDexNumber(dexNumber);
    for(Species species : list) {
      System.out.println("  " + species.toString());
    }
  }

  private int getMainMenuSelection() {
    printStartOperations();
    Integer input = getIntInput("Enter a selection");
    return Objects.isNull(input) ? -1 : input;
  }
  
  private int getPokeboxSelection() {
    printPokeboxOperations();
    Integer input = getIntInput("Enter a selection");
    return Objects.isNull(input) ? -1 : input;
  }
  
  private int getPokedexSelection() {
    printPokedexOperations();
    Integer input = getIntInput("Enter a selection");
    return Objects.isNull(input) ? -1 : input;
  }

  private void printStartOperations() {
    System.out.println("Which system would you like to access? Press Enter to quit: ");
    startOperations.forEach(line -> System.out.println("  " + line + "\n"));
  }
  
  private void printPokeboxOperations() {
    System.out.println("What would you like to do in the Pokebox? Press Enter to quit: ");
    pokeboxOperations.forEach(line -> System.out.println("  " + line + "\n"));
  }
  
  private void printPokedexOperations() {
    System.out.println("What would you like to do in the Pokedex? Press Enter to quit: ");
    pokedexOperations.forEach(line -> System.out.println("  " + line + "\n"));
  }

  private Integer getIntInput(String prompt) {
    String input = getStringInput(prompt);

    if (Objects.isNull(input)) {
      return null;
    }
    try {
      return Integer.valueOf(input);
    } catch (NumberFormatException e) {
      return 0;
    }
  }
  
  private String getStringInput(String prompt) {
    System.out.print(prompt + ": ");
    String input = sc.nextLine();

    return input.isBlank() ? null : input.trim();
  }
  
  private boolean exitApp() {
    System.out.println("Exiting Box System");
    return true;
  }
  
  private boolean exitPokebox() {
    System.out.println("Exiting Pokebox");
    return true;
  }
  
  private boolean exitPokedex() {
    System.out.println("Exiting Pokedex");
    return true;
  }
}
