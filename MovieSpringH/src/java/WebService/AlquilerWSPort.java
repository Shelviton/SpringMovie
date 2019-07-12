/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebService;

import WebService_client1.AlquilerWS;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;

/**
 * REST Web Service
 *
 * @author KryzAle
 */
@Path("alquilerwsport")
public class AlquilerWSPort {

    private AlquilerWS port;

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of AlquilerWSPort
     */
    public AlquilerWSPort() {
        port = getPort();
    }

    /**
     * Invokes the SOAP method BuscarAlquiler
     * @param cedula resource URI parameter
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("text/plain")
    @Consumes("text/plain")
    @Path("buscaralquiler/")
    public String getBuscarAlquiler(@QueryParam("cedula") String cedula) {
        try {
            // Call Web Service Operation
            if (port != null) {
                java.lang.String result = port.buscarAlquiler(cedula);
                return result;
            }
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }
        return null;
    }

    /**
     *
     */
    private AlquilerWS getPort() {
        try {
            // Call Web Service Operation
            WebService_client1.AlquilerWS_Service service = new WebService_client1.AlquilerWS_Service();
            WebService_client1.AlquilerWS p = service.getAlquilerWSPort();
            return p;
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }
        return null;
    }
}
