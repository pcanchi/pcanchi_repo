// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.datacustodian.domain;

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
import org.energyos.espi.datacustodian.domain.RetailCustomer;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RetailCustomer_Roo_Entity {
    
    declare @type: RetailCustomer: @Entity;
    
    @PersistenceContext
    transient EntityManager RetailCustomer.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long RetailCustomer.id;
    
    @Version
    @Column(name = "version")
    private Integer RetailCustomer.version;
    
    public Long RetailCustomer.getId() {
        return this.id;
    }
    
    public void RetailCustomer.setId(Long id) {
        this.id = id;
    }
    
    public Integer RetailCustomer.getVersion() {
        return this.version;
    }
    
    public void RetailCustomer.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void RetailCustomer.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void RetailCustomer.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            RetailCustomer attached = RetailCustomer.findRetailCustomer(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void RetailCustomer.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void RetailCustomer.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public RetailCustomer RetailCustomer.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RetailCustomer merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager RetailCustomer.entityManager() {
        EntityManager em = new RetailCustomer().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long RetailCustomer.countRetailCustomers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM RetailCustomer o", Long.class).getSingleResult();
    }
    
    public static List<RetailCustomer> RetailCustomer.findAllRetailCustomers() {
        return entityManager().createQuery("SELECT o FROM RetailCustomer o", RetailCustomer.class).getResultList();
    }
    
    public static RetailCustomer RetailCustomer.findRetailCustomer(Long id) {
        if (id == null) return null;
        return entityManager().find(RetailCustomer.class, id);
    }
    
    public static List<RetailCustomer> RetailCustomer.findRetailCustomerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RetailCustomer o", RetailCustomer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
