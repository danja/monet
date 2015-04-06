/**
 * 
 */
package it.hyperdata.monet;

import android.util.Log;

import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.rdf.model.ModelFactory;

/**
 * @author danny
 *
 */
public class GlobalPalette implements Palette {
	
	Model model = ModelFactory.createDefaultModel() ; 
	
	public GlobalPalette(){
		model.read("file:///colours.ttl"); // is in /assets
		Log.d("read global colours file/model", "colours.ttl");
		 model.write(System.out, "TTL") ;
	}
}
