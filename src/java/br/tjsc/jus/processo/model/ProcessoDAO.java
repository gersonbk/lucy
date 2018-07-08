/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.tjsc.jus.processo.model;

import br.tjsc.jus.dao.BaseDAO;
import br.tjsc.jus.db.Conexao;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author Gerson
 */
public class ProcessoDAO extends BaseDAO<Processo, String>{

    public ProcessoDAO(){
        super(Processo.class.getName(), "cdprocesso");
    }
    
    public List<Processo> getProcessos(String cdClasseUnif, String cdAssuntoUnif){
        Query query  = em.createQuery("Select a from Processo a "
                        + " where a.cdclasseunif = '" + cdClasseUnif+ "' and "
                        + " a.cdassuntounif = '" + cdAssuntoUnif + "'  ");
        return query.getResultList();
    }
    
    

}
