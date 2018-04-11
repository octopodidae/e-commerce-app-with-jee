package com.ecommerce.beans;

public class Commande {

    private String date_cmd;
    private String mode_paiement;
    private double montant;
    private Client client;
    private String statutPaiement;
    private String modeLivraison;
    private String statutLivraison;

    public String getStatutPaiement() {
        return statutPaiement;
    }

    public void setStatutPaiement( String statutPaiement ) {
        this.statutPaiement = statutPaiement;
    }

    public String getModeLivraison() {
        return modeLivraison;
    }

    public void setModeLivraison( String modeLivraison ) {
        this.modeLivraison = modeLivraison;
    }

    public String getStatutLivraison() {
        return statutLivraison;
    }

    public void setStatutLivraison( String statutLivraison ) {
        this.statutLivraison = statutLivraison;
    }

    public String getDate_cmd() {
        return date_cmd;
    }

    public void setDate_cmd( String date_cmd ) {
        this.date_cmd = date_cmd;
    }

    public String getMode_paiement() {
        return mode_paiement;
    }

    public void setMode_paiement( String mode_paiement ) {
        this.mode_paiement = mode_paiement;
    }

    public double getMontant() {
        return montant;
    }

    public void setMontant( double montant ) {
        this.montant = montant;
    }

    public Client getClient() {
        return client;
    }

    public void setClient( Client client ) {
        this.client = client;
    }

}
