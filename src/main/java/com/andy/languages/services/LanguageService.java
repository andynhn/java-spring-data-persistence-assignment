package com.andy.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.andy.languages.models.Language;

import com.andy.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
    private final LanguageRepository languageRepository;
    
    public LanguageService(LanguageRepository languageRepository) {
        this.languageRepository = languageRepository;
    }
    public List<Language> allLanguages() {
        return languageRepository.findAll();
    }
    public Language createLanguage(Language l) {
        return languageRepository.save(l);
    }
    public Language findLanguage(Long id) {
        Optional<Language> optionalLanguage = languageRepository.findById(id);
        if(optionalLanguage.isPresent()) {
            return optionalLanguage.get();
        } else {
            return null;
        }
    }
    public Language updateLanguage(Long id, String name, String creator, String currentVersion) {
    	Optional<Language> optionalLanguage = languageRepository.findById(id);
    	if(optionalLanguage.isPresent()) {
    		Language l = optionalLanguage.get();
    		l.setId(id);
    		l.setName(name);
    		l.setCreator(creator);
    		l.setCurrentVersion(currentVersion);
    		return languageRepository.save(l);
    	} else {
    		return null;
    	}
    }
    public void deleteLanguage(Long id) {
    	Optional<Language> optionalLanguage = languageRepository.findById(id);
    	if(optionalLanguage.isPresent()) {
    		languageRepository.deleteById(id);
    	} else {
    		System.out.println("Language does not exist");
    	}
    }
}
