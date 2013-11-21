/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author kosh
 */
public class user {
    
    private Integer pk;
    private String name;
    private String pass;
    private boolean adv;
    private Integer mobile;
    

    /**
     * @return the pk
     */
    public Integer getPk() {
        return pk;
    }

    /**
     * @param pk the pk to set
     */
    public void setPk(Integer pk) {
        this.pk = pk;
    }

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
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the adv
     */
    public boolean isAdv() {
        return adv;
    }

    /**
     * @param adv the adv to set
     */
    public void setAdv(boolean adv) {
        this.adv = adv;
    }

    /**
     * @return the mobile
     */
    public int getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(Integer mobile) {
        this.mobile = mobile;
    }

   
}
