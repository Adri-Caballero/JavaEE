
package persistence;

import entity.Usuario;
import java.util.List;

/**
 *
 * @author Adrian Caballero
 */
public class ControllerPersistence {
    UsuarioJpaController usuarioJpaController = new UsuarioJpaController();
    public void crearUsuario(Usuario user) {
        usuarioJpaController.create(user);
    }

    public List<Usuario> consultarUsuario() {
        return usuarioJpaController.findUsuarioEntities();
    }
    
}
