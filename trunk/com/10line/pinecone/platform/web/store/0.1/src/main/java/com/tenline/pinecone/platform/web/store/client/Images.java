/**
 * 
 */
package com.tenline.pinecone.platform.web.store.client;

import com.google.gwt.user.client.ui.AbstractImagePrototype;
import com.google.gwt.user.client.ui.ImageBundle;
import com.google.gwt.user.client.ui.ImageBundle.Resource;

/**
 * @author Bill
 *
 */
@SuppressWarnings("deprecation")
public interface Images extends ImageBundle {

	@Resource("logo.png")
	AbstractImagePrototype logo();
	@Resource("portrait.jpg")
	AbstractImagePrototype portrait();
	@Resource("consumerIcon.png")
	AbstractImagePrototype consumerIcon();
}