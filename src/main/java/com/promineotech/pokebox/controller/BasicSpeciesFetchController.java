package com.promineotech.pokebox.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import com.promineotech.pokebox.entity.Species;
import com.promineotech.pokebox.service.SpeciesFetchService;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class BasicSpeciesFetchController implements SpeciesFetchController {
  
  @Autowired
  private SpeciesFetchService speciesFetchService;

  @Override
  public List<Species> fetchSpeciesByDexNumber(int dexNumber) {
    log.info("Controller: dexNumber = {}", dexNumber);
    return speciesFetchService.fetchSpeciesByDexNumber(dexNumber);
  }

  @Override
  public List<Species> fetchPokedex() {
    log.info("Controller: fetch all species");
    return speciesFetchService.fetchPokedex();
  }

  @Override
  public List<Species> fetchSpeciesByType(String type) {
    log.info("Controller: fetch all species of a type");
    return speciesFetchService.fetchSpeciesByType(type);
  }

}
