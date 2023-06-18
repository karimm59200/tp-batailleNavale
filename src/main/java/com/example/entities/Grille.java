package com.example.entities;

import java.util.Arrays;
import java.util.Random;

public class Grille {

    private int taille =10;


    private static int[][] grille;

    private Case[][] cases;



    public Grille(){

        initGrille();
    }

    public Grille(int taille) {
        this.taille = taille;
        grille = new int[taille][taille];
        for (int[] row : grille)
            Arrays.fill(row, 0);
    }




    public void initGrille(){
        cases = new Case[taille][taille];
        for(int i=0;i<taille;i++){
            for(int j=0;j<taille;j++){
                cases[i][j] = new Case(i,j);
            }
        }

        Random random = new Random();

        for (int i = 0; i < 15; i++) {
            int x;
            int y;
            do {
                x = random.nextInt(taille);
                y = random.nextInt(taille);
            } while (Case.getCase(x, y).isVide());
            Case.getCase(x, y).setBateau(true);

        }
    }

    public int getTaille() {
        return taille;
    }

    public void setTaille(int taille) {
        this.taille = taille;
    }

    public static int[][] getGrille() {
        return grille;
    }

    public static void setGrille(int[][] grille) {
        Grille.grille = grille;
    }

    @Override
    public String toString() {
        return "Grille{" +
                "taille=" + taille +
                '}';
    }
}
