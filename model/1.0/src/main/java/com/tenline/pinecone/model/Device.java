/**
 * 
 */
package com.tenline.pinecone.model;

import java.util.Collection;

import javax.jdo.annotations.Element;
import javax.jdo.annotations.Extension;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.Order;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * @author Bill
 *
 */
@XmlRootElement
@PersistenceCapable(identityType = IdentityType.APPLICATION, detachable = "true")
public class Device extends Entity {

	@Persistent
	private String name;
	
	@Persistent
	private String type;
	
	@Persistent(defaultFetchGroup = "true")
	private User user;
	
	@Persistent(defaultFetchGroup = "true")
	private Protocol protocol;
	
	@Persistent(mappedBy = "device", defaultFetchGroup = "true")
    @Element(dependent = "true")
    @Order(extensions = @Extension(vendorName="datanucleus", key="list-ordering", value="name asc"))
	private Collection<Variable> variables;
	
	/**
	 * 
	 */
	public Device() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the user
	 */
	@XmlTransient
	public User getUser() {
		return user;
	}

	/**
	 * @param protocol the protocol to set
	 */
	public void setProtocol(Protocol protocol) {
		this.protocol = protocol;
	}

	/**
	 * @return the protocol
	 */
	public Protocol getProtocol() {
		return protocol;
	}

	/**
	 * @param variables the variables to set
	 */
	public void setVariables(Collection<Variable> variables) {
		this.variables = variables;
	}

	/**
	 * @return the variables
	 */
	public Collection<Variable> getVariables() {
		return variables;
	}

}
