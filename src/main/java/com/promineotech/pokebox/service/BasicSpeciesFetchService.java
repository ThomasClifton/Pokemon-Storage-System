package com.promineotech.pokebox.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.promineotech.pokebox.dao.SpeciesFetchDao;
import com.promineotech.pokebox.entity.Species;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BasicSpeciesFetchService implements SpeciesFetchService {

  @Autowired
  private SpeciesFetchDao speciesFetchDao;
  
  @Override
  public List<Species> fetchSpeciesByDexNumber(int dexNumber) {
    log.info("Service: dexNumber = {}", dexNumber);
    return speciesFetchDao.fetchSpeciesByDexNumber(dexNumber);
  }

  @Override
  public List<Species> fetchPokedex() {
    log.info("Service: fetch all species");
    return speciesFetchDao.fetchPokedex();
  }

  @Override
  public List<Species> fetchSpeciesByType(String type) {
    log.info("Service: fetch all species of a type");
    return speciesFetchDao.fetchSpeciesByType(type);
  }

}
