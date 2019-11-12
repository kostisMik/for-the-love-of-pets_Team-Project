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
@Table(name = "dog")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dog.findAll", query = "SELECT d FROM Dog d")
    , @NamedQuery(name = "Dog.findByDogId", query = "SELECT d FROM Dog d WHERE d.dogId = :dogId")
    , @NamedQuery(name = "Dog.findByName", query = "SELECT d FROM Dog d WHERE d.name = :name")
    , @NamedQuery(name = "Dog.findByGender", query = "SELECT d FROM Dog d WHERE d.gender = :gender")
    , @NamedQuery(name = "Dog.findByChip", query = "SELECT d FROM Dog d WHERE d.chip = :chip")
    , @NamedQuery(name = "Dog.findBySize", query = "SELECT d FROM Dog d WHERE d.size = :size")
    , @NamedQuery(name = "Dog.findByShelterDog", query = "SELECT d FROM Dog d WHERE d.shelterDog = :shelterDog")
    , @NamedQuery(name = "Dog.findByBirthdate", query = "SELECT d FROM Dog d WHERE d.birthdate = :birthdate")})
public class Dog implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "dog_id")
    private Integer dogId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "gender")
    private String gender;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "chip")
    private String chip;
    @Size(max = 45)
    @Column(name = "size")
    private String size;
    @Basic(optional = false)
    @NotNull
    @Column(name = "shelter_dog")
    // (DELETE)
    private int shelterDog;
    @Size(max = 25)
    @Column(name = "birthdate")
    private String birthdate;

    public Dog() {
    }

    public Dog(Integer dogId) {
        this.dogId = dogId;
    }

    public Dog(Integer dogId, String name, String gender, String chip, int shelterDog) {
        this.dogId = dogId;
        this.name = name;
        this.gender = gender;
        this.chip = chip;
        this.shelterDog = shelterDog;
    }

    public Integer getDogId() {
        return dogId;
    }

    public void setDogId(Integer dogId) {
        this.dogId = dogId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getChip() {
        return chip;
    }

    public void setChip(String chip) {
        this.chip = chip;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getShelterDog() {
        return shelterDog;
    }

    public void setShelterDog(int shelterDog) {
        this.shelterDog = shelterDog;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dogId != null ? dogId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dog)) {
            return false;
        }
        Dog other = (Dog) object;
        if ((this.dogId == null && other.dogId != null) || (this.dogId != null && !this.dogId.equals(other.dogId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.petplanet.try01.model.Dog[ dogId=" + dogId + " ]";
    }
    
}
