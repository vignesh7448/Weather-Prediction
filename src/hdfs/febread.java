package hdfs;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

public class febread{
	String o;
	String q[];
	float l,l1=0;


	public ArrayList<Float> read() {
		
		

		HdfsConnection con = new HdfsConnection();
		FileSystem fs =null;
		ArrayList<Float> al = new ArrayList<>();
		ArrayList<Float> al1 = new ArrayList<>();
		ArrayList<Float> al2 = new ArrayList<>();
		ArrayList<Float> al3 = new ArrayList<>();
		ArrayList<Float> al4 = new ArrayList<>();
		ArrayList<Float> al5 = new ArrayList<>();
		ArrayList<Float> al6 = new ArrayList<>();
		ArrayList<Float> al7 = new ArrayList<>();
		ArrayList<Float> al8 = new ArrayList<>();
		ArrayList<Float> al9 = new ArrayList<>();
		ArrayList<Float> al10 = new ArrayList<>();
		ArrayList<Float> al11 = new ArrayList<>();
		ArrayList<Float> al12 = new ArrayList<>();
		float i=0;
		float t=0;
		float k=0;
		HashMap<Float,Float> hm=new HashMap();
		HashMap<Float,Float> hm1=new HashMap();
		
		try {
			
			 fs = con.connect();
			 Path path = new Path("hdfs://localhost:9000/february/part-r-00000");
			 
			 if(fs.exists(path)) {
				System.out.println(path); 
				 BufferedReader br = new BufferedReader(new InputStreamReader(fs.open(path)));	 
				 String line = "";
				 while((line=br.readLine())!=null) {
					 
					q= line.split(" ");
					if(q[0].equals("February")){
					String h=q[1];
					al.add(Float.parseFloat(h));
					hm.put(Float.parseFloat(h),i);
					
					}
					else if(q[0].equals("March")){
						String p=q[1];
						al1.add(Float.parseFloat(p));
						hm.put(i,Float.parseFloat(p));
						}else if(q[0].equals("April")){
							String z=q[1];
							al2.add(Float.parseFloat(z));
							}else if(q[0].equals("May")){
								String y=q[1];
								al3.add(Float.parseFloat(y));
								}else if(q[0].equals("June")){
									String w=q[1];
									al4.add(Float.parseFloat(w));
									}else if(q[0].equals("July")){
										String x=q[1];
										al5.add(Float.parseFloat(x));
										}else if(q[0].equals("August")){
											String r=q[1];
											al6.add(Float.parseFloat(r));
											}else if(q[0].equals("September")){
												String s=q[1];
												al7.add(Float.parseFloat(s));
												}
											else if(q[0].equals("October")){
												String b=q[1];
												al8.add(Float.parseFloat(b));
												}
											else if(q[0].equals("November")){
												String c=q[1];
												al9.add(Float.parseFloat(c));
												}
											else if(q[0].equals("December")){
												String d=q[1];
												al10.add(Float.parseFloat(d));
												}
											else if(q[0].equals("January")){
												String e=q[1];
												al11.add(Float.parseFloat(e));
												}
					
					
				 }
			 }
			
			 System.out.println("Maximum Temperature  "+al1.get(al1.size()-1));
			 
			 System.out.println("Minimum Temperature   "+al1.get(0));
			 al12.add(al1.get(al1.size()-1));
			 al12.add(al1.get(0));

				for(int v=0;v<=al1.size()-1;v++)
				{  i=i+1;
					 l=l+al1.get(v);
				}

			 		 System.out.println("Average temperature is "+l/al1.size());
			 		 
					 al12.add(l/al1.size());

			 		 

					 System.out.println("Maximum Temperature  "+al.get(al.size()-1));
					 System.out.println("Minimum Temperature   "+al.get(0));
						
					 al12.add(al.get(al.size()-1));
					 al12.add(al.get(0));
						for(int v=0;v<=al.size()-1;v++)
						{  i=i+1;
							 l1=l1+al.get(v);
						}

					 		 System.out.println("Average temperature is "+l1/al.size());
					 		al12.add(l1/al.size());
//			 
//			 System.out.println(al.get(0));
//			 System.out.println(al.get(al1.size()));


			 
		} catch (Exception e) {
			
			System.out.println(e);
		}
		return al12;
	}
}
