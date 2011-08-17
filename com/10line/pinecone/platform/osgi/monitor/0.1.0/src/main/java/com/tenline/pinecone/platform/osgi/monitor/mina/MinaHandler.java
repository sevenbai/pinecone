/**
 * 
 */
package com.tenline.pinecone.platform.osgi.monitor.mina;

import java.util.Enumeration;
import java.util.Hashtable;

import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IoSession;

import com.tenline.pinecone.platform.model.Device;
import com.tenline.pinecone.platform.osgi.monitor.AbstractProtocolBuilder;
import com.tenline.pinecone.platform.osgi.monitor.Publisher;
import com.tenline.pinecone.platform.osgi.monitor.Scheduler;
import com.tenline.pinecone.platform.osgi.monitor.Subscriber;

/**
 * @author Bill
 *
 */
public class MinaHandler extends IoHandlerAdapter {
	
	/**
	 * The Mapping between Device and Session
	 */
	private Hashtable<Device, IoSession> mapping;
	
	/**
	 * MINA Sessions
	 */
	private Hashtable<Long, IoSession> sessions;
	
	/**
	 * Schedulers
	 */
	private Hashtable<Long, Scheduler> schedulers;
	
	/**
	 * Subscribers
	 */
	private Hashtable<Long, Subscriber> subscribers;
	
	/**
	 * Publishers
	 */
	private Hashtable<Long, Publisher> publishers;
	
	/**
	 * Protocol Builder
	 */
	private AbstractProtocolBuilder builder;
	
	/**
	 * 
	 */
	public MinaHandler() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * Initialize Handler
	 * @param builder
	 */
	public void initialize(AbstractProtocolBuilder builder) {
		this.builder = builder;
		mapping = new Hashtable<Device, IoSession>();
		sessions = new Hashtable<Long, IoSession>();
		schedulers = new Hashtable<Long, Scheduler>();
		subscribers = new Hashtable<Long, Subscriber>();
		publishers = new Hashtable<Long, Publisher>();
	}
	
	/**
	 * Close Handler
	 */
	public void close() {
		for (Enumeration<IoSession> elements = sessions.elements(); elements.hasMoreElements();) {
			removeSession(elements.nextElement());
		}
		for (Enumeration<Device> keys = mapping.keys(); keys.hasMoreElements();) {
			mapping.remove(keys.nextElement());
		}
	}
	
	/**
	 * 
	 * @param session
	 */
	private void removeSession(IoSession session) {
		schedulers.get(session.getId()).stop();
		schedulers.remove(session.getId());
		subscribers.get(session.getId()).stop();
		subscribers.remove(session.getId());
		publishers.remove(session.getId());
		removeMapping(session);
		sessions.remove(session.getId());
	}
	
	/**
	 * 
	 * @param session
	 */
	private void putSession(IoSession session) {
		sessions.put(session.getId(), session);
		putMapping(session);
		schedulers.put(session.getId(), new Scheduler(builder));
		schedulers.get(session.getId()).setSession(session);
		schedulers.get(session.getId()).start();
		subscribers.put(session.getId(), new Subscriber());
		subscribers.get(session.getId()).setScheduler(schedulers.get(session.getId()));
		subscribers.get(session.getId()).setDevice(getDevice(session));
		subscribers.get(session.getId()).start();
		publishers.put(session.getId(), new Publisher());
		publishers.get(session.getId()).setDevice(getDevice(session));
	}
	
	/**
	 * 
	 * @param session
	 */
	private void removeMapping(IoSession session) {
		for (Enumeration<Device> keys = mapping.keys(); keys.hasMoreElements();) {
			Device device = keys.nextElement();
			if (mapping.get(device).getId() == session.getId()) {
				mapping.put(device, null); break;
			}
		}
	}
	
	/**
	 * 
	 * @param session
	 */
	private void putMapping(IoSession session) {
		for (Enumeration<Device> keys = mapping.keys(); keys.hasMoreElements();) {
			Device device = keys.nextElement();
			if (mapping.get(device) == null) {
				mapping.put(device, session); break;
			}
		}
	}
	
	/**
	 * 
	 * @param session
	 * @return
	 */
	private Device getDevice(IoSession session) {
		for (Enumeration<Device> keys = mapping.keys(); keys.hasMoreElements();) {
			Device device = keys.nextElement();
			if (mapping.get(device).getId() == session.getId()) {
				return device;
			}
		}
		return null;
	}
	
	/**
	 * 
	 * @return
	 */
	public Hashtable<Device, IoSession> getMapping() {
		return mapping;
	}
	
	@Override
	public void sessionClosed(IoSession session) throws Exception {
		// TODO Auto-generated method stub
		removeSession(session);
		super.sessionClosed(session);
	}

	@Override
	public void sessionCreated(IoSession session) throws Exception {
		super.sessionCreated(session);
		// TODO Auto-generated method stub
		putSession(session);
	}
	
	@Override
	public void messageReceived(IoSession session, Object message) throws Exception {
		super.messageReceived(session, message);
		// TODO Auto-generated method stub
		schedulers.get(session.getId()).execute();
		publishers.get(session.getId()).publish((Device) message);
	}

}
