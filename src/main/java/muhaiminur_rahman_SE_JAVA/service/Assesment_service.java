package muhaiminur_rahman_SE_JAVA.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import muhaiminur_rahman_SE_JAVA.doa.Assessment_epository;
import muhaiminur_rahman_SE_JAVA.models.product_info;

@Service
public class Assesment_service {
	@Autowired
	private Assessment_epository rep;

	public Collection<product_info> findallproduct(){
		List<product_info> pinfo= new ArrayList<product_info>();
		for (product_info product_info : rep.findAll()) {
			pinfo.add(product_info);
			//System.out.println("id = " +product_info.getId());
		}
		
		return pinfo;
	}
}
