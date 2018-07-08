package br.tjsc.jus.dao;

import br.tjsc.jus.db.Conexao;
import br.tjsc.jus.processo.model.Processo;
import java.util.List;
import javax.persistence.EntityManager;


public abstract class BaseDAO <A, B> {

    protected EntityManager em;    
    
    private String classe = "";
    private String nomeId = "";
    public BaseDAO(String classe, String nomeId){
        em = Conexao.getInstance().getEntityManager();
        this.classe = classe;
        this.nomeId = nomeId;
    }
    

    public A getPorId(B id){
        return (A)em.createQuery("Select a from "+classe+" a where a."+nomeId+" = " + id).getSingleResult();
    }
    
    public List<A> listarTodos()  {
        return em.createQuery("Select a from "+classe+" a").getResultList();
    }
    

    public void inserir(A objeto) {
        try{
            em.getTransaction().begin();
            em.persist(objeto);
            em.getTransaction().commit();        
            /*for(Field field : objeto.getClass().getDeclaredFields()){
                for(Annotation annotation : field.getAnnotations()){
                    if(annotation.getClass().equals(Id.class)){
                        return
                    }
                }
            }
            return objeto.getCdprocesso();*/
        } catch(Exception e){
            e.printStackTrace();
            em.getTransaction().rollback();
            return;
        }        
    }

    public boolean excluir(B id) {
        try{
            A objeto = getPorId(id);
            em.getTransaction().begin();
            em.remove(objeto);
            em.getTransaction().commit();        
        } catch(Exception e){
            e.printStackTrace();
            em.getTransaction().rollback();
            return false;
        }
        return true;
    }

    public boolean alterar(A objeto)  {
        try{
            em.getTransaction().begin();
            em.merge(objeto);
            em.getTransaction().commit();        
        } catch(Exception e){
            e.printStackTrace();
            em.getTransaction().rollback();
            return false;
        }
        return true;
    }
}
