package br.tjsc.jus.processo.service;

import br.tjsc.jus.processo.model.Processo;
import java.util.List;


public interface ProcessoService {
    
    public void inserirProcesso(Processo processo);
    public void atualizarProcesso(Processo processo);
    public List<Processo> listarProcesso();
    public Processo getProcessoById(Integer id);
    public void excluirProcesso(Integer id);    
    
}
