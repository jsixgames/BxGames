package br.com.interfaces;

import br.com.modelos.Item_Pedido;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.ejb.Remote;

@Remote
public interface CarrinhoRemote {

    public void addItem(Item_Pedido item);

    public void removeItem(Item_Pedido item);

    public List<Item_Pedido> getItems();
    
    int qtde();
}