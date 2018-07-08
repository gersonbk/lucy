/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.tjsc.jus.processo.model;

import br.tjsc.jus.dao.BaseDAO;

/**
 *
 * @author Gerson
 */
public class AutomatizadorDAO extends BaseDAO<Automatizador, Integer>{

    public AutomatizadorDAO(){
        super(Automatizador.class.getName(), "cdautomatizador");
    }
    
}
