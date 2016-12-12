// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.se;

import com.se.Name;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Name_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Name.entityManager;
    
    public static final List<String> Name.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name");
    
    public static final EntityManager Name.entityManager() {
        EntityManager em = new Name().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Name.countNames() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Name o", Long.class).getSingleResult();
    }
    
    public static List<Name> Name.findAllNames() {
        return entityManager().createQuery("SELECT o FROM Name o", Name.class).getResultList();
    }
    
    public static List<Name> Name.findAllNames(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Name o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Name.class).getResultList();
    }
    
    public static Name Name.findName(Long id) {
        if (id == null) return null;
        return entityManager().find(Name.class, id);
    }
    
    public static List<Name> Name.findNameEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Name o", Name.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Name> Name.findNameEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Name o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Name.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Name.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Name.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Name attached = Name.findName(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Name.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Name.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Name Name.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Name merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}