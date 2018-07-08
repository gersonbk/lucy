/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.tjsc.jus.db;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Gerson
 */
public class Conexao {
    
    private EntityManagerFactory factory = Persistence.createEntityManagerFactory("assessorPU");
    
    private EntityManager em;
    
    private static Conexao conexao;
    
    private Conexao(){
    }

    public static Conexao getInstance(){
        if(conexao == null)
            conexao = new Conexao();
        return conexao;
    }
    
    public EntityManagerFactory getFactory(){
        return factory;
    }
    
    public EntityManager getEntityManager(){
        if(em != null )
            return em;
        em = factory.createEntityManager();
        return em;
    }
    
}
