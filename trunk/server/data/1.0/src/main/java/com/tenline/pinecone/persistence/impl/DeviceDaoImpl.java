/**
 * 
 */
package com.tenline.pinecone.persistence.impl;

import java.util.Collection;

import org.springframework.stereotype.Repository;

import com.tenline.pinecone.model.Device;
import com.tenline.pinecone.persistence.DeviceDao;
import com.tenline.pinecone.utils.AbstractDaoSupport;

/**
 * @author Bill
 *
 */
@Repository
public class DeviceDaoImpl extends AbstractDaoSupport implements DeviceDao {

	/**
	 * 
	 */
	public DeviceDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see com.tenline.pinecone.persistence.DeviceDao#save(com.tenline.pinecone.model.Device)
	 */
	@Override
	public String save(Device newInstance) {
		// TODO Auto-generated method stub
		return ((Device) getJdoTemplate().save(newInstance)).getId();
	}

	/* (non-Javadoc)
	 * @see com.tenline.pinecone.persistence.DeviceDao#find(java.lang.String)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public Collection<Device> find(String filter) {
		// TODO Auto-generated method stub
		return (Collection<Device>) getJdoTemplate().find(Device.class, filter);
	}

	/* (non-Javadoc)
	 * @see com.tenline.pinecone.persistence.AbstractDao#delete(java.lang.String)
	 */
	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		getJdoTemplate().delete(Device.class, id);
	}

	/* (non-Javadoc)
	 * @see com.tenline.pinecone.persistence.DeviceDao#update(com.tenline.pinecone.model.Device)
	 */
	@Override
	public String update(Device instance) {
		// TODO Auto-generated method stub
		Device detachedDevice = (Device) getJdoTemplate().getDetachedObject(Device.class, instance.getId());
		if (instance.getName() != null) detachedDevice.setName(instance.getName());
		if (instance.getProtocol() != null) detachedDevice.setProtocol(instance.getProtocol());
		return ((Device) getJdoTemplate().save(detachedDevice)).getId();
	}

}
