package com.example.entities;

public class Case {

    private int x;
    private int y;

    private boolean vide;

    private boolean bateau;


    public Case() {
    }

    public Case(int x, int y) {
        this.x = x;
        this.y = y;
        this.vide = true;
        this.bateau = false;
    }

    public static Case getCase(int x, int y) {
        return new Case(x, y);
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public boolean isVide() {
        return vide;
    }

    public void setVide(boolean vide) {
        this.vide = vide;
    }

    public boolean isBateau() {
        return bateau;
    }

    public void setBateau(boolean bateau) {
        this.bateau = bateau;
    }

    @Override
    public String toString() {
        return "Case{" +
                "x=" + x +
                ", y=" + y +
                ", vide=" + vide +
                '}';
    }
}
