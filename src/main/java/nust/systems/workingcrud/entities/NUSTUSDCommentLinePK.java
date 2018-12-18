/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust.systems.workingcrud.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author tawanda
 */
@Embeddable
public class NUSTUSDCommentLinePK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "[Table Name]")
    private int tableName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "[No_]")
    private String no;
    @Basic(optional = false)
    @NotNull
    @Column(name = "[Line No_]")
    private int lineNo;

    public NUSTUSDCommentLinePK() {
    }

    public NUSTUSDCommentLinePK(int tableName, String no, int lineNo) {
        this.tableName = tableName;
        this.no = no;
        this.lineNo = lineNo;
    }

    public int getTableName() {
        return tableName;
    }

    public void setTableName(int tableName) {
        this.tableName = tableName;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public int getLineNo() {
        return lineNo;
    }

    public void setLineNo(int lineNo) {
        this.lineNo = lineNo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) tableName;
        hash += (no != null ? no.hashCode() : 0);
        hash += (int) lineNo;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NUSTUSDCommentLinePK)) {
            return false;
        }
        NUSTUSDCommentLinePK other = (NUSTUSDCommentLinePK) object;
        if (this.tableName != other.tableName) {
            return false;
        }
        if ((this.no == null && other.no != null) || (this.no != null && !this.no.equals(other.no))) {
            return false;
        }
        if (this.lineNo != other.lineNo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "nust.systems.workingcrud.entities.NUSTUSDCommentLinePK[ tableName=" + tableName + ", no=" + no + ", lineNo=" + lineNo + " ]";
    }
    
}
