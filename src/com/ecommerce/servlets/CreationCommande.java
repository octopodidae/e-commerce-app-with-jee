package com.ecommerce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import com.ecommerce.beans.Client;
import com.ecommerce.beans.Command;

/**
 * Servlet implementation class CreationCommand
 */
@WebServlet( "/CreationCommand" )
public class CreationCommande extends HttpServlet {

    private static final long  serialVersionUID       = 1L;

    /* Constantes */
    public static final String CHAMP_NOM              = "nomClient";
    public static final String CHAMP_PRENOM           = "prenomClient";
    public static final String CHAMP_ADRESSE          = "adresseClient";
    public static final String CHAMP_TELEPHONE        = "telephoneClient";
    public static final String CHAMP_EMAIL            = "emailClient";

    public static final String CHAMP_DATE             = "dateCommande";
    public static final String CHAMP_MONTANT          = "montantCommande";
    public static final String CHAMP_MODE_PAIEMENT    = "modePaiementCommande";
    public static final String CHAMP_STATUT_PAIEMENT  = "statutPaiementCommande";
    public static final String CHAMP_MODE_LIVRAISON   = "modeLivraisonCommande";
    public static final String CHAMP_STATUT_LIVRAISON = "statutLivraisonCommande";

    public static final String ATT_COMMANDE           = "commande";
    public static final String ATT_MESSAGE            = "message";
    public static final String ATT_ERREUR             = "erreur";

    public static final String FORMAT_DATE            = "dd/MM/yyyy HH:mm:ss";
    public static final String VUE                    = "/jsp/afficherCommande.jsp";

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet( HttpServletRequest request,
            HttpServletResponse response ) throws ServletException, IOException {

        Command commande = new Command();

        double montant;

        try {
            montant = Double.parseDouble( request
                    .getParameter( CHAMP_MONTANT ) );
        } catch ( NumberFormatException e ) {
            montant = -1;
        }

        Client client = new Client();

        String nom = request.getParameter( CHAMP_NOM );
        String prenom = request.getParameter( CHAMP_PRENOM );
        String adresse = request.getParameter( CHAMP_ADRESSE );
        String tel = request.getParameter( CHAMP_TELEPHONE );
        String email = request.getParameter( CHAMP_EMAIL );
        String modePaiement = request.getParameter( CHAMP_MODE_PAIEMENT );
        String statutPaiement = request.getParameter( CHAMP_STATUT_PAIEMENT );
        String modeLivraison = request.getParameter( CHAMP_MODE_LIVRAISON );
        String statutLivraison = request.getParameter( CHAMP_STATUT_LIVRAISON );
        String date_cmd = request.getParameter( CHAMP_DATE );

        client.setNom( nom );
        client.setPrenom( prenom );
        client.setAdresse( adresse );
        client.setTelephone( tel );
        client.setEmail( email );

        commande.setClient( client );

        commande.setMode_paiement( modePaiement );
        commande.setStatutPaiement( statutPaiement );
        commande.setModeLivraison( modeLivraison );
        commande.setStatutLivraison( statutLivraison );
        commande.setMontant( montant );
        commande.setDate_cmd( date_cmd );

        request.setAttribute( ATT_COMMANDE, commande );

        /* Récupération de la date courante */
        DateTime dt = new DateTime();
        /* Conversion de la date en String selon le format défini */
        DateTimeFormatter formatter = DateTimeFormat
                .forPattern( FORMAT_DATE );
        String date = dt.toString( formatter );

        commande.setDate_cmd( date );

        String message;
        boolean erreur;

        if ( nom.trim().isEmpty() || adresse.trim().isEmpty()
                || tel.trim().isEmpty() || montant == -1
                || modePaiement.isEmpty() || modeLivraison.isEmpty() ) {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"formCommande\">Cliquez ici</a> pour accéder au formulaire de création d'une commande.";
            erreur = true;
        } else {
            message = "Commande créée avec succès !";
            erreur = false;
        }

        request.setAttribute( ATT_MESSAGE, message );
        request.setAttribute( ATT_ERREUR, erreur );

        this.getServletContext()
                .getRequestDispatcher( VUE )
                .forward( request, response );

    }

}
