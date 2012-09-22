// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.thirdparty.domain;

import org.energyos.espi.thirdparty.domain.MeterReadingDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MeterReadingIntegrationTest_Roo_IntegrationTest {
    
    declare @type: MeterReadingIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: MeterReadingIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: MeterReadingIntegrationTest: @Transactional;
    
    @Autowired
    private MeterReadingDataOnDemand MeterReadingIntegrationTest.dod;
    
    @Test
    public void MeterReadingIntegrationTest.testCountMeterReadings() {
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", dod.getRandomMeterReading());
        long count = org.energyos.espi.thirdparty.domain.MeterReading.countMeterReadings();
        org.junit.Assert.assertTrue("Counter for 'MeterReading' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void MeterReadingIntegrationTest.testFindMeterReading() {
        org.energyos.espi.thirdparty.domain.MeterReading obj = dod.getRandomMeterReading();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.MeterReading.findMeterReading(id);
        org.junit.Assert.assertNotNull("Find method for 'MeterReading' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'MeterReading' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void MeterReadingIntegrationTest.testFindAllMeterReadings() {
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", dod.getRandomMeterReading());
        long count = org.energyos.espi.thirdparty.domain.MeterReading.countMeterReadings();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'MeterReading', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.energyos.espi.thirdparty.domain.MeterReading> result = org.energyos.espi.thirdparty.domain.MeterReading.findAllMeterReadings();
        org.junit.Assert.assertNotNull("Find all method for 'MeterReading' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'MeterReading' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void MeterReadingIntegrationTest.testFindMeterReadingEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", dod.getRandomMeterReading());
        long count = org.energyos.espi.thirdparty.domain.MeterReading.countMeterReadings();
        if (count > 20) count = 20;
        java.util.List<org.energyos.espi.thirdparty.domain.MeterReading> result = org.energyos.espi.thirdparty.domain.MeterReading.findMeterReadingEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'MeterReading' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'MeterReading' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void MeterReadingIntegrationTest.testFlush() {
        org.energyos.espi.thirdparty.domain.MeterReading obj = dod.getRandomMeterReading();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.MeterReading.findMeterReading(id);
        org.junit.Assert.assertNotNull("Find method for 'MeterReading' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyMeterReading(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'MeterReading' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MeterReadingIntegrationTest.testMerge() {
        org.energyos.espi.thirdparty.domain.MeterReading obj = dod.getRandomMeterReading();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.MeterReading.findMeterReading(id);
        boolean modified =  dod.modifyMeterReading(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.energyos.espi.thirdparty.domain.MeterReading merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'MeterReading' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MeterReadingIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", dod.getRandomMeterReading());
        org.energyos.espi.thirdparty.domain.MeterReading obj = dod.getNewTransientMeterReading(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'MeterReading' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'MeterReading' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void MeterReadingIntegrationTest.testRemove() {
        org.energyos.espi.thirdparty.domain.MeterReading obj = dod.getRandomMeterReading();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MeterReading' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.MeterReading.findMeterReading(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'MeterReading' with identifier '" + id + "'", org.energyos.espi.thirdparty.domain.MeterReading.findMeterReading(id));
    }
    
}
