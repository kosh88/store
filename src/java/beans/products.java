/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Blob;

/**
 *
 * @author kosh
 */
public class products {
    
    private String name;
    private Double price;
    private String comments;
    private boolean offer;
    private Double offerprice;
    private String pic;
    private int pk;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the price
     */
    public Double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(Double price) {
        this.price = price;
    }

    /**
     * @return the comments
     */
    public String getComments() {
        return comments;
    }

    /**
     * @param comments the comments to set
     */
    public void setComments(String comments) {
        this.comments = comments;
    }

    /**
     * @return the pic
     */
 
    public String getPic() {
        return pic;
    }

    /**
     * @param pic the pic to set
     */
    public void setPic(String pic) {
        this.pic = pic;
    }

    /**
     * @return the pk
     */
    public int getPk() {
        return pk;
    }

    /**
     * @param pk the pk to set
     */
    public void setPk(int pk) {
        this.pk = pk;
    }

    /**
     * @return the offer
     */
    public boolean getOffer() {
        return offer;
    }

    /**
     * @param offer the offer to set
     */
    public void setOffer(boolean offer) {
        this.offer = offer;
    }

    /**
     * @return the offerprice
     */
    public Double getOfferprice() {
        return offerprice;
    }

    /**
     * @param offerprice the offerprice to set
     */
    public void setOfferprice(Double offerprice) {
        this.offerprice = offerprice;
    }

  
    

    
}
