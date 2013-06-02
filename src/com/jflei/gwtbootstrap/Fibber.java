package com.jflei.gwtbootstrap;

//import java.awt.Color;
//import java.awt.Graphics2D;

import org.timepedia.exporter.client.Export;
import org.timepedia.exporter.client.ExportPackage;
import org.timepedia.exporter.client.Exportable;

/**
 * 
 * <b>Do not attempt to use any exported methods/classes until window.jscOnLoad()
 * is called!</b>
 *
 */
@ExportPackage("jflei")
@Export
public class Fibber implements Exportable {
	private Fibber() {}
	
	/**
	 * Computes the nth fibonnaci number.
	 * @param n
	 * @return The nth fibonnaci number
	 */
	public static int fib(int n) {
		if(n <= 1) {
			return n;
		}
		return fib(n-1) + fib(n-2);
	}
	
	/*public static void foo(Graphics2D g) {
		g.setColor(Color.RED);
		g.fillRect(0, 0, 20, 20);
	}*/
}
