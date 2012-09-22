// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.datacustodian.domain;

import org.energyos.espi.datacustodian.domain.UsagePointAssetDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UsagePointAssetIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UsagePointAssetIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UsagePointAssetIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: UsagePointAssetIntegrationTest: @Transactional;
    
    @Autowired
    private UsagePointAssetDataOnDemand UsagePointAssetIntegrationTest.dod;
    
    @Test
    public void UsagePointAssetIntegrationTest.testCountUsagePointAssets() {
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", dod.getRandomUsagePointAsset());
        long count = org.energyos.espi.datacustodian.domain.UsagePointAsset.countUsagePointAssets();
        org.junit.Assert.assertTrue("Counter for 'UsagePointAsset' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UsagePointAssetIntegrationTest.testFindUsagePointAsset() {
        org.energyos.espi.datacustodian.domain.UsagePointAsset obj = dod.getRandomUsagePointAsset();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.UsagePointAsset.findUsagePointAsset(id);
        org.junit.Assert.assertNotNull("Find method for 'UsagePointAsset' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'UsagePointAsset' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void UsagePointAssetIntegrationTest.testFindAllUsagePointAssets() {
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", dod.getRandomUsagePointAsset());
        long count = org.energyos.espi.datacustodian.domain.UsagePointAsset.countUsagePointAssets();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'UsagePointAsset', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.energyos.espi.datacustodian.domain.UsagePointAsset> result = org.energyos.espi.datacustodian.domain.UsagePointAsset.findAllUsagePointAssets();
        org.junit.Assert.assertNotNull("Find all method for 'UsagePointAsset' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'UsagePointAsset' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UsagePointAssetIntegrationTest.testFindUsagePointAssetEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", dod.getRandomUsagePointAsset());
        long count = org.energyos.espi.datacustodian.domain.UsagePointAsset.countUsagePointAssets();
        if (count > 20) count = 20;
        java.util.List<org.energyos.espi.datacustodian.domain.UsagePointAsset> result = org.energyos.espi.datacustodian.domain.UsagePointAsset.findUsagePointAssetEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'UsagePointAsset' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'UsagePointAsset' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UsagePointAssetIntegrationTest.testFlush() {
        org.energyos.espi.datacustodian.domain.UsagePointAsset obj = dod.getRandomUsagePointAsset();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.UsagePointAsset.findUsagePointAsset(id);
        org.junit.Assert.assertNotNull("Find method for 'UsagePointAsset' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUsagePointAsset(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'UsagePointAsset' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UsagePointAssetIntegrationTest.testMerge() {
        org.energyos.espi.datacustodian.domain.UsagePointAsset obj = dod.getRandomUsagePointAsset();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.UsagePointAsset.findUsagePointAsset(id);
        boolean modified =  dod.modifyUsagePointAsset(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.energyos.espi.datacustodian.domain.UsagePointAsset merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'UsagePointAsset' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UsagePointAssetIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", dod.getRandomUsagePointAsset());
        org.energyos.espi.datacustodian.domain.UsagePointAsset obj = dod.getNewTransientUsagePointAsset(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'UsagePointAsset' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'UsagePointAsset' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void UsagePointAssetIntegrationTest.testRemove() {
        org.energyos.espi.datacustodian.domain.UsagePointAsset obj = dod.getRandomUsagePointAsset();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UsagePointAsset' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.UsagePointAsset.findUsagePointAsset(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'UsagePointAsset' with identifier '" + id + "'", org.energyos.espi.datacustodian.domain.UsagePointAsset.findUsagePointAsset(id));
    }
    
}
