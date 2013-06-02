package com.jflei.gwtbootstrap;

import org.timepedia.exporter.client.ExporterUtil;

import com.google.gwt.core.client.EntryPoint;

public class GwtBootstrap implements EntryPoint {
	
	public void onModuleLoad() {
	    ExporterUtil.exportAll();
	    onLoadImpl();
	}
	
	private native void onLoadImpl() /*-{
	    if ($wnd.jscOnLoad && typeof $wnd.jscOnLoad == 'function') $wnd.jscOnLoad();
	}-*/;
}
