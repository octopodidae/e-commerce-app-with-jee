package com.ecommerce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.beans.Client;

/**
 * Servlet implementation class CreationClient
 */
@WebServlet( "/CreationClient" )
public class CreationClient extends HttpServlet {

    private static final long  serialVersionUID = 1L;

    /* Constantes */
    public static final String VUE_FORM         = "/WEB-INF/jsp/formClient.jsp";
    public static final String VUE_SUCCESS      = "/WEB-INF/jsp/afficherClient.jsp";
    public static final String CHAMP_NOM        = "nomClient";
    public static final String CHAMP_PRENOM     = "prenomClient";
    public static final String CHAMP_ADRESSE    = "adresseClient";
    public static final String CHAMP_TELEPHONE  = "telephoneClient";
    public static final String CHAMP_EMAIL      = "emailClient";

    public static final String ATT_CLIENT       = "client";
    public static final String ATT_MESSAGE      = "message";
    public static final String ATT_ERREUR       = "erreur";

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet( HttpServletRequest request,
            HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( VUE_FORM ).forward( request, response );
    }

    @Override
    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        Client client = new Client();

        String nom = request.getParameter( CHAMP_NOM );
        String prenom = request.getParameter( CHAMP_PRENOM );
        String adresse = request.getParameter( CHAMP_ADRESSE );
        String tel = request.getParameter( CHAMP_TELEPHONE );
        String email = request.getParameter( CHAMP_EMAIL );

        client.setNom( nom );
        client.setPrenom( prenom );
        client.setAdresse( adresse );
        client.setTelephone( tel );
        client.setEmail( email );

        request.setAttribute( ATT_CLIENT, client );

        String message;
        boolean erreur;

        if ( nom.trim().isEmpty() || adresse.trim().isEmpty()
                || tel.trim().isEmpty() ) {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"formClient\">Cliquez ici</a> pour accéder au formulaire de création d'un client.";
            erreur = true;
        } else {
            message = "Client créé avec succès !";
            erreur = false;
        }

        request.setAttribute( ATT_MESSAGE, message );
        request.setAttribute( ATT_ERREUR, erreur );

        this.getServletContext()
                .getRequestDispatcher( VUE_SUCCESS )
                .forward( request, response );

    }

}
