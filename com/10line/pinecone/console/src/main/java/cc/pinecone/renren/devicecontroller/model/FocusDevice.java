package cc.pinecone.renren.devicecontroller.model;

import java.util.LinkedHashMap;
import java.util.Map;

public class FocusDevice {

	private String id;
	private String code;
	private Map<String, FocusVariable> varList = new LinkedHashMap<String,FocusVariable>();
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public FocusDevice(){
		varList = new LinkedHashMap<String,FocusVariable>();
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public FocusVariable getVariable(String varid){
		return varList.get(varid);
	}
	
	public void addVariable(FocusVariable variable){
		varList.put(variable.getId(),variable);
	}
	
}
