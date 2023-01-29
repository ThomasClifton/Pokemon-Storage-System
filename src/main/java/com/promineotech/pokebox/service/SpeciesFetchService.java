package com.promineotech.pokebox.service;

import java.util.List;
import com.promineotech.pokebox.entity.Species;

public interface SpeciesFetchService {

  List<Species> fetchSpeciesByDexNumber(int dexNumber);

  List<Species> fetchPokedex();

  List<Species> fetchSpeciesByType(String type);
  
}
