/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.models;

/**
 *
 * @author tawanda
 */
public class applModel {
    private String no_;
    private String CustNo_;
    private String Comments;
    private int points;

    public String getNo_() {
        return no_;
    }

    public void setNo_(String no_) {
        this.no_ = no_;
    }

    public String getCustNo_() {
        return CustNo_;
    }

    public void setCustNo_(String CustNo_) {
        this.CustNo_ = CustNo_;
    }

    public String getComments() {
        return Comments;
    }

    public void setComments(String Comments) {
        this.Comments = Comments;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }
    
}
