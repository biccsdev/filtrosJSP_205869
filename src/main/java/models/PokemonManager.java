/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;
import java.util.List;

public class PokemonManager {
    private static List<Pokemon> pokemones = new ArrayList<>();
    private static PokemonManager instance;
    
    private PokemonManager() {
        // Add default Bulbasaur
        List<String> habilidades = new ArrayList<>();
        habilidades.add("Espesura");
        habilidades.add("Clorofila (Oculta)");
        
        List<String> evoluciones = new ArrayList<>();
        evoluciones.add("Ivysaur");
        evoluciones.add("Venusaur");
        
        List<String> debilidades = new ArrayList<>();
        debilidades.add("Fuego");
        debilidades.add("Volador");
        debilidades.add("Hielo");
        debilidades.add("Psíquico");
        
        pokemones.add(new Pokemon(
            "001",
            "Bulbasaur",
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png",
            "Planta / Veneno",
            0.7,
            6.9,
            "Ataque: 49\nDefensa: 49",
            "Pokémon semilla que lleva un bulbo en su espalda desde que nace.",
            habilidades,
            evoluciones,
            debilidades
        ));
    }
    
    public static PokemonManager getInstance() {
        if (instance == null) {
            instance = new PokemonManager();
        }
        return instance;
    }
    
    public void addPokemon(Pokemon pokemon) {
        pokemones.add(pokemon);
    }
    
    public List<Pokemon> getAllPokemon() {
        return pokemones;
    }
}