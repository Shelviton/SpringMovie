/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebService;

import Model.DAO.AlquilerDAO;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author KryzAle
 */
@WebService(serviceName = "AlquilerWS")
public class AlquilerWS {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "BuscarAlquiler")
    public String BuscarAlquiler(@WebParam(name = "cedula") String cedula) {
        //TODO write your implementation code here:
        AlquilerDAO alquileres = new AlquilerDAO();
        
        return alquileres.getAlquileres(cedula);
    }
}
