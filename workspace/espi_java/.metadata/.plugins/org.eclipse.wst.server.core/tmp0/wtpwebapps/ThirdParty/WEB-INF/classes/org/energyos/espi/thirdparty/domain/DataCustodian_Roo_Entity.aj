// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.thirdparty.domain;

import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.energyos.espi.thirdparty.domain.DataCustodian;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DataCustodian_Roo_Entity {
    
    declare @type: DataCustodian: @Entity;
    
    @PersistenceContext
    transient EntityManager DataCustodian.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DataCustodian.id;
    
    @Version
    @Column(name = "version")
    private Integer DataCustodian.version;
    
    public Long DataCustodian.getId() {
        return this.id;
    }
    
    public void DataCustodian.setId(Long id) {
        this.id = id;
    }
    
    public Integer DataCustodian.getVersion() {
        return this.version;
    }
    
    public void DataCustodian.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void DataCustodian.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DataCustodian.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DataCustodian attached = DataCustodian.findDataCustodian(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DataCustodian.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DataCustodian.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DataCustodian DataCustodian.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DataCustodian merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager DataCustodian.entityManager() {
        EntityManager em = new DataCustodian().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DataCustodian.countDataCustodians() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DataCustodian o", Long.class).getSingleResult();
    }
    
    public static List<DataCustodian> DataCustodian.findAllDataCustodians() {
        return entityManager().createQuery("SELECT o FROM DataCustodian o", DataCustodian.class).getResultList();
    }
    
    public static DataCustodian DataCustodian.findDataCustodian(Long id) {
        if (id == null) return null;
        return entityManager().find(DataCustodian.class, id);
    }
    
    public static List<DataCustodian> DataCustodian.findDataCustodianEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DataCustodian o", DataCustodian.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
