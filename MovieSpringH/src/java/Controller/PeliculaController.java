/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;



import Model.DAO.PeliculaDAO;
import Model.POJO.Pelicula;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


/**
 *
 * @author Jipson Murillo
 */
@Controller 
public class PeliculaController {

    @RequestMapping(value = "/pelicula/index.htm",method=RequestMethod.GET)
    public String index(Model m){
        
           List<Pelicula> list = PeliculaDAO.getlist();
           m.addAttribute("pelicula",list);
        return "/pelicula/index"; 
    }


    
    @RequestMapping(value = "/pelicula/add.htm",method=RequestMethod.GET)
    public ModelAndView save()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("pelicula/add");
        mav.addObject("pelicula",new Pelicula());
        return mav;
    }
        
    @RequestMapping(value = "/pelicula/add.htm",method=RequestMethod.POST)
    public ModelAndView save
        (
                @ModelAttribute("Pelicula") Pelicula u,
                BindingResult result,
                SessionStatus status
        )
    {
       
        if(result.hasErrors())
        {
            System.out.println(".............DATOS INCORRECTOS...........");
            System.out.println(result.toString());
            System.out.println("D: "+u.getDirector().getDirNombre());
            System.out.println("F: "+u.getFormato().getForNombre());
            System.out.println("G: "+u.getGenero().getGenNombre());
            
            ModelAndView mav=new ModelAndView();
            mav.setViewName("pelicula/add");
            mav.addObject("pelicula",new Pelicula());
            return mav;
        }else
        {
            PeliculaDAO.Save(u);
            
         return new ModelAndView("redirect:/pelicula/index.htm");
        }
       
        
        
        
    }
        
    @RequestMapping(value = "/pelicula/edit.htm",method=RequestMethod.GET)
    public ModelAndView edit(HttpServletRequest request)
    {
        ModelAndView mav=new ModelAndView();
        int id=Integer.parseInt(request.getParameter("id"));
        Pelicula datos=PeliculaDAO.getbyID(id);
        mav.setViewName("pelicula/edit");
        mav.addObject("pelicula",datos);
        return mav;
    }
             
    @RequestMapping(value = "/pelicula/edit.htm",method=RequestMethod.POST)
    public ModelAndView edit
        (
                @ModelAttribute("Pelicula") Pelicula u,
                BindingResult result,
                SessionStatus status
        )
    {
       
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("pelicula/edit");
            mav.addObject("Pelicula",new Pelicula());
            return mav;
        }else
        {
          //  System.out.println("*************************************ID...."+id+"*************************");
            PeliculaDAO.Save(u);
            
         return new ModelAndView("redirect:/pelicula/index.htm");
        }
       
        
        
        
    }
    
    @RequestMapping(value = "/pelicula/delete.htm",method=RequestMethod.GET)
    public ModelAndView delete(HttpServletRequest request) 
    {
        int id=Integer.parseInt(request.getParameter("id"));
        PeliculaDAO.Delete(id);
        return new ModelAndView("redirect:/pelicula/index.htm");
    }
    
}
