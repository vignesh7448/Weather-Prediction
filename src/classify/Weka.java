package classify;

import weka.core.Instances;
import weka.core.converters.CSVSaver;

import java.io.BufferedReader;
//import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStreamReader;
//import java.io.FileReader;
import java.util.ArrayList;

import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

import hdfs.HdfsConnection;
import weka.core.converters.ConverterUtils.DataSource;
import weka.core.Instance;
import weka.core.Instances;
import weka.classifiers.functions.SMOreg;



public class Weka {
	public ArrayList<String> read() throws Exception {
		ArrayList <String>al=new ArrayList<String>();


		DataSource source = new DataSource("/home/hadoop/Datasets/Chennai.csv");
		Instances dataset = source.getDataSet();
		
		System.out.println(dataset.toSummaryString());
		System.out.println(dataset.sumOfWeights());
		HdfsConnection con = new HdfsConnection();
		FileSystem fs =null;
		fs = con.connect();
		
		
		
		CSVSaver saver = new CSVSaver();
		saver.setInstances(dataset);
		saver.setFile(new File("/home/hadoop/Datasets/Dharmapuri.csv"));
		
		saver.writeBatch();
		 FileReader reader = new FileReader("/home/hadoop/Datasets/DharmapuriPreProcess.csv");
		 BufferedReader br = new BufferedReader(reader);
		 String line;
		 while ((line = br.readLine()) != null) {
             al.add(line);
         }
	

		
	br.close();
	 return(al);
}}
