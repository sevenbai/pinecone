/**
 * 
 */
package com.tenline.pinecone.platform.monitor;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.log4j.Logger;

import com.tenline.pinecone.platform.model.Device;
import com.tenline.pinecone.platform.model.Item;
import com.tenline.pinecone.platform.model.User;
import com.tenline.pinecone.platform.model.Variable;
import com.tenline.pinecone.platform.sdk.ModelAPI;
import com.tenline.pinecone.platform.sdk.development.APIResponse;

/**
 * @author Bill
 *
 */
public abstract class AbstractEndpointAdmin {

	/**
	 * Web Service API
	 */
	private Device device;
	
	private Variable variable;
	
	private ModelAPI modelAPI;
	
	/**
	 * Endpoints
	 */
	private ArrayList<IEndpoint> endpoints;
	
	/**
	 * Logger
	 */
	private Logger logger = Logger.getLogger(getClass());
	
	/**
	 * 
	 */
	public AbstractEndpointAdmin() {
		// TODO Auto-generated constructor stub
		modelAPI = new ModelAPI(IConstants.WEB_SERVICE_HOST, IConstants.WEB_SERVICE_PORT, IConstants.WEB_SERVICE_CONTEXT);
	}
	
	/**
	 * Initialize Endpoint Admin
	 * @param user
	 */
	public void initialize(User user) {
		try {
			endpoints = new ArrayList<IEndpoint>();
			APIResponse response = modelAPI.show(Device.class, "user.id=='"+ user.getId() + "'");
			if (response.isDone()) {
				fetchDevice(response);
			} else {
				logger.error(response.getMessage());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * Close Endpoint Admin
	 */
	public void close() {
		while (endpoints.size() > 0) {
			endpoints.get(0).close();
			endpoints.remove(0);
		}
	}
	
	/**
	 * Initialize Endpoint
	 * @param device
	 */
	public void initializeEndpoint(Device device) {
		try {
			APIResponse response = modelAPI.show(Device.class, "id=='"+device.getId()+"'");
			if (response.isDone()) {
				fetchDevice(response);
			} else {
				logger.error(response.getMessage());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * Initialize Endpoint
	 * @param endpoints
	 * @param device
	 */
	protected abstract void initializeEndpoint(ArrayList<IEndpoint> endpoints, Device device);
	
	/**
	 * 
	 * @param response
	 */
	private void fetchDevice(APIResponse response) {
		Object[] devices = ((Collection<?>) response.getMessage()).toArray();
		for (Object object : devices) {
			device = (Device) object;
			device.setVariables(new ArrayList<Variable>());
			try {
				response = modelAPI.show(Variable.class, "device.id=='"+device.getId()+"'");
				if (response.isDone()) {
					fetchVariable(response);
				} else {
					logger.error(response.getMessage());
				}
				initializeEndpoint(endpoints, device);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				logger.error(e.getMessage());
			}
		}		
	}
	
	/**
	 * 
	 * @param response
	 */
	private void fetchVariable(APIResponse response) {
		Object[] variables = ((Collection<?>) response.getMessage()).toArray();
		for (Object object : variables) {
			variable = (Variable) object;
			variable.setItems(new ArrayList<Item>());
			device.getVariables().add(variable);
			try {
				response = modelAPI.show(Item.class, "variable.id=='"+variable.getId()+"'");
				if (response.isDone()) {
					fetchItem(response);
				} else {
					logger.error(response.getMessage());
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 
	 * @param response
	 */
	private void fetchItem(APIResponse response) {
		Object[] items = ((Collection<?>) response.getMessage()).toArray();
		for (Object item : items) {
			variable.getItems().add((Item) item);
		}
	}

}
