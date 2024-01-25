package entity;

import java.util.List;
import persistence.ControllerPersistence;

/**
 *
 * @author Adrian Caballero
 */
public class ControllerUsuario {

    ControllerPersistence controllerPersistence = new ControllerPersistence();
    //CRUD
    //Crear CREATE
    public void crearUsuario(Usuario user){
        controllerPersistence.crearUsuario(user);
    }
    //Leer Read
    public List<Usuario> consultarUsuario(){
        return controllerPersistence.consultarUsuario();
    }
}
