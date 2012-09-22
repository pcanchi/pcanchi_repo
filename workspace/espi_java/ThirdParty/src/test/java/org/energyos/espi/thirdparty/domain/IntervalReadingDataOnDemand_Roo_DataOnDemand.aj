// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.thirdparty.domain;

import java.lang.Float;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.energyos.espi.thirdparty.domain.IntervalReading;
import org.energyos.espi.thirdparty.domain.MeterReading;
import org.energyos.espi.thirdparty.domain.MeterReadingDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect IntervalReadingDataOnDemand_Roo_DataOnDemand {
    
    declare @type: IntervalReadingDataOnDemand: @Component;
    
    private Random IntervalReadingDataOnDemand.rnd = new SecureRandom();
    
    private List<IntervalReading> IntervalReadingDataOnDemand.data;
    
    @Autowired
    private MeterReadingDataOnDemand IntervalReadingDataOnDemand.meterReadingDataOnDemand;
    
    public IntervalReading IntervalReadingDataOnDemand.getNewTransientIntervalReading(int index) {
        IntervalReading obj = new IntervalReading();
        setCost(obj, index);
        setEndDate(obj, index);
        setIntervalDuration(obj, index);
        setMeterReading(obj, index);
        setReading(obj, index);
        setStartDate(obj, index);
        return obj;
    }
    
    public void IntervalReadingDataOnDemand.setCost(IntervalReading obj, int index) {
        Float cost = new Integer(index).floatValue();
        obj.setCost(cost);
    }
    
    public void IntervalReadingDataOnDemand.setEndDate(IntervalReading obj, int index) {
        Date endDate = new Date(new Date().getTime() - 10000000L);
        obj.setEndDate(endDate);
    }
    
    public void IntervalReadingDataOnDemand.setIntervalDuration(IntervalReading obj, int index) {
        Date intervalDuration = new Date(new Date().getTime() - 10000000L);
        obj.setIntervalDuration(intervalDuration);
    }
    
    public void IntervalReadingDataOnDemand.setMeterReading(IntervalReading obj, int index) {
        MeterReading meterReading = meterReadingDataOnDemand.getRandomMeterReading();
        obj.setMeterReading(meterReading);
    }
    
    public void IntervalReadingDataOnDemand.setReading(IntervalReading obj, int index) {
        Float reading = new Integer(index).floatValue();
        obj.setReading(reading);
    }
    
    public void IntervalReadingDataOnDemand.setStartDate(IntervalReading obj, int index) {
        Date startDate = new Date(new Date().getTime() - 10000000L);
        obj.setStartDate(startDate);
    }
    
    public IntervalReading IntervalReadingDataOnDemand.getSpecificIntervalReading(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        IntervalReading obj = data.get(index);
        return IntervalReading.findIntervalReading(obj.getId());
    }
    
    public IntervalReading IntervalReadingDataOnDemand.getRandomIntervalReading() {
        init();
        IntervalReading obj = data.get(rnd.nextInt(data.size()));
        return IntervalReading.findIntervalReading(obj.getId());
    }
    
    public boolean IntervalReadingDataOnDemand.modifyIntervalReading(IntervalReading obj) {
        return false;
    }
    
    public void IntervalReadingDataOnDemand.init() {
        data = IntervalReading.findIntervalReadingEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'IntervalReading' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<org.energyos.espi.thirdparty.domain.IntervalReading>();
        for (int i = 0; i < 10; i++) {
            IntervalReading obj = getNewTransientIntervalReading(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> it = e.getConstraintViolations().iterator(); it.hasNext();) {
                    ConstraintViolation<?> cv = it.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
