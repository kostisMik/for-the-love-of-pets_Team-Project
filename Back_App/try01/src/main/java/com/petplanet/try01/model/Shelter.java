/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.petplanet.try01.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Kostis.Mikroulis
 */
@Entity
@Table(name = "shelter")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Shelter.findAll", query = "SELECT s FROM Shelter s")
    , @NamedQuery(name = "Shelter.findByShelterId", query = "SELECT s FROM Shelter s WHERE s.shelterId = :shelterId")
    , @NamedQuery(name = "Shelter.findByName", query = "SELECT s FROM Shelter s WHERE s.name = :name")
    , @NamedQuery(name = "Shelter.findByAdress", query = "SELECT s FROM Shelter s WHERE s.adress = :adress")
    , @NamedQuery(name = "Shelter.findByTelephone", query = "SELECT s FROM Shelter s WHERE s.telephone = :telephone")
    , @NamedQuery(name = "Shelter.findByMobile", query = "SELECT s FROM Shelter s WHERE s.mobile = :mobile")
    , @NamedQuery(name = "Shelter.findByEmail", query = "SELECT s FROM Shelter s WHERE s.email = :email")})
public class Shelter implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "shelter_id")
    private Integer shelterId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "adress")
    private String adress;
    @Basic(optional = false)
    @NotNull
    @Column(name = "telephone")
    private int telephone;
    @Basic(optional = false)
    @NotNull
    @Column(name = "mobile")
    private int mobile;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "email")
    private String email;

    public Shelter() {
    }

    public Shelter(Integer shelterId) {
        this.shelterId = shelterId;
    }

    public Shelter(Integer shelterId, String name, String adress, int telephone, int mobile, String email) {
        this.shelterId = shelterId;
        this.name = name;
        this.adress = adress;
        this.telephone = telephone;
        this.mobile = mobile;
        this.email = email;
    }

    public Integer getShelterId() {
        return shelterId;
    }

    public void setShelterId(Integer shelterId) {
        this.shelterId = shelterId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public int getTelephone() {
        return telephone;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public int getMobile() {
        return mobile;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (shelterId != null ? shelterId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Shelter)) {
            return false;
        }
        Shelter other = (Shelter) object;
        if ((this.shelterId == null && other.shelterId != null) || (this.shelterId != null && !this.shelterId.equals(other.shelterId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.petplanet.try01.model.Shelter[ shelterId=" + shelterId + " ]";
    }
    
}
