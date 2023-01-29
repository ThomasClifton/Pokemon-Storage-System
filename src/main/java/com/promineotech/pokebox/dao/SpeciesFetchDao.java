package com.promineotech.pokebox.dao;

import java.util.List;
import com.promineotech.pokebox.entity.Species;

public interface SpeciesFetchDao {
  
  List<Species> fetchSpeciesByDexNumber(int dexNumber);

  List<Species> fetchPokedex();

  List<Species> fetchSpeciesByType(String type);
  
}
