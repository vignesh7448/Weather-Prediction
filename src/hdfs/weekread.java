package hdfs;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

public class weekread{
	String o;
	String q[];
	float l,l1=0;


	public HashMap<Float,Float> read() {

		HdfsConnection con = new HdfsConnection();
		FileSystem fs =null;
		ArrayList<Float> al = new ArrayList<>();
		ArrayList<Float> al1 = new ArrayList<>();
		HashMap<Float,Float> hm=new HashMap();
		HashMap<Float,Float> hm1=new HashMap();
		float i=0;
		float t=0;
		float k=0;
		
		try {
			
			 fs = con.connect();
			 Path path = new Path("hdfs://localhost:9000/weatherclassify/part-r-00000");
			 
			 if(fs.exists(path)) {
				System.out.println(path); 
				 BufferedReader br = new BufferedReader(new InputStreamReader(fs.open(path)));	 
				 String line = "";
				 while((line=br.readLine())!=null) {
					 
					q= line.split(":");
					if(q[2].equals("06")){
					String h=q[5];
					String n=q[8];
					al.add(Float.parseFloat(h));
					al1.add(Float.parseFloat(n));
					hm.put(Float.parseFloat(h), Float.parseFloat(n));

					}
					else if(q[2].equals("07")){
						String h=q[5];
						String n=q[8];
						al.add(Float.parseFloat(h));
						al1.add(Float.parseFloat(n));
						hm.put(Float.parseFloat(h), Float.parseFloat(n));

						}
					else if(q[2].equals("08")){
						String h=q[5];
						String n=q[8];
						al.add(Float.parseFloat(h));
						al1.add(Float.parseFloat(n));
						hm.put(Float.parseFloat(h), Float.parseFloat(n));

						}
					else if(q[2].equals("09")){
						String h=q[5];
						String n=q[8];
						al.add(Float.parseFloat(h));
						al1.add(Float.parseFloat(n));
						hm.put(Float.parseFloat(h), Float.parseFloat(n));

						}
					else if(q[2].equals("10")){
						String h=q[5];
						String n=q[8];
						al.add(Float.parseFloat(h));
						al1.add(Float.parseFloat(n));
						hm.put(Float.parseFloat(h), Float.parseFloat(n));

						}
					else if(q[2].equals("11")){
						String h=q[5];
						String n=q[8];
						al.add(Float.parseFloat(h));
						al1.add(Float.parseFloat(n));
						hm.put(Float.parseFloat(h), Float.parseFloat(n));

						}
					else if(q[2].equals("12")){
						String h=q[5];
						String n=q[8];
						al.add(Float.parseFloat(h));
						al1.add(Float.parseFloat(n));
						hm.put(Float.parseFloat(h), Float.parseFloat(n));

						}
					
					
					
					
				 }
			 }
			
			 Collections.sort(al);
			 Collections.sort(al1);
			
			
			
			 System.out.println("Maximum Temperature  "+al.get(al.size()-1));
			 hm1.put(al.get(al.size()-1), al1.get(al1.size()-1));
			 hm1.put(al.get(0), al1.get(0));
			 
			 
			 System.out.println("Minimum Temperature   "+al.get(0));
			 System.out.println("Maximum Wind speed  "+al1.get(al1.size()-1));
			 System.out.println("Minimum WindSpeed   "+al1.get(0));
				

				for(int v=0;v<=al.size()-1;v++)
				{  
					 l=l+al.get(v);
				}

			 		 System.out.println("Average temperature is "+l/al.size());
			 		 
			 		 
			 		 
			 		for(int v=0;v<=al1.size()-1;v++)
					{  
						 l1=l1+al1.get(v);
						
					}
			 		hm1.put(l/al.size(), l1/al.size());
			 		System.out.println("Average WindSpeed is "+l1/al1.size ());
					


			 
		} catch (Exception e) {
			
			System.out.println(e);
		}
		return hm1;
	}
}
