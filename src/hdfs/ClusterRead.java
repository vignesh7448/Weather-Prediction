package hdfs;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

public class ClusterRead {
	public ArrayList<String> read() {

		HdfsConnection con = new HdfsConnection();
		FileSystem fs =null;
		ArrayList<String> al = new ArrayList<>();
		
		try {
			
			 fs = con.connect();
			 Path path = new Path("hdfs://localhost:9000/february/part-r-00000");
			 
			 if(fs.exists(path)) {
				System.out.println(path); 
				 BufferedReader br = new BufferedReader(new InputStreamReader(fs.open(path)));	 
				 String line = "";
				 while((line=br.readLine())!=null) {
					 
					 al.add(line);
					 
				 }
				 
			 }
			 
			 
			 
			 
		} catch (Exception e) {
			
			System.out.println(e);
		}
		return al;
	}
}
