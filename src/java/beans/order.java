/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author kosh
 */
public class order {
    private Integer opk;
    private Integer user_id;
    private Integer product_id;
    private String day;
    private Integer mobile;
    private String product_name;
    private String user_name;
    private Double price;
    private Double offerprice;
    private Integer offer;
    private Integer received;
    /**
     * @return the user_id
     */
    public Integer getUser_id() {
        return user_id;
    }

    /**
     * @param user_id the user_id to set
     */
    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    /**
     * @return the product_id
     */
    public Integer getProduct_id() {
        return product_id;
    }

    /**
     * @param product_id the product_id to set
     */
    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    /**
     * @return the day
     */
    public String getDay() {
        return day;
    }

    /**
     * @param day the day to set
     */
    public void setDay(String day) {
        this.day = day;
    }

    /**
     * @return the address
     */
    public Integer getMobile() {
        return mobile;
    }

    /**
     * @param address the address to set
     */
    public void setMobile(Integer mobile) {
        this.mobile = mobile;
    }

    /**
     * @return the product_name
     */
    public String getProduct_name() {
        return product_name;
    }

    /**
     * @param product_name the product_name to set
     */
    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    /**
     * @return the user_name
     */
    public String getUser_name() {
        return user_name;
    }

    /**
     * @param user_name the user_name to set
     */
    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    /**
     * @return the opk
     */
    public Integer getOpk() {
        return opk;
    }

    /**
     * @param opk the opk to set
     */
    public void setOpk(Integer opk) {
        this.opk = opk;
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

    /**
     * @return the offer
     */
    public Integer getOffer() {
        return offer;
    }

    /**
     * @param offer the offer to set
     */
    public void setOffer(Integer offer) {
        this.offer = offer;
    }

    /**
     * @return the received
     */
    public Integer getReceived() {
        return received;
    }

    /**
     * @param received the received to set
     */
    public void setReceived(Integer received) {
        this.received = received;
    }
    
}
