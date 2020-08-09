package analyze;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;


import hdfs.HdfsConnection;

public class PredictionDriver {

	public static void main(String[] args) throws Exception {
//		Configuration conf = new Configuration();
		FileSystem fs = HdfsConnection.connect();
		
		Path path = new Path("hdfs://localhost:9000/stockprediction");
		if(fs.exists(path)) {
			fs.delete(path);
		}
		Configuration conf = new Configuration();
		Job job = Job.getInstance(conf, "JobName");
		job.setJarByClass(prediction.PredictionDriver.class);
		// TODO: specify a mapper
		  long mapperCounter = job.getCounters().findCounter(Map_ReducePhase2.TestCounters.TEST).getValue();
		    
		    conf.set("NoOfStocks",String.valueOf(mapperCounter));
		    
			job.setJarByClass(Map_ReducePhase3.class);
			job.setMapperClass(Map_ReducePhase3.Map3.class);
			job.setReducerClass(Map_ReducePhase3.Reducer3.class);

			job.setMapOutputKeyClass(DoubleWritable.class);
			job.setMapOutputValueClass(Text.class);
//			FileInputFormat.addInputPath(job, new Path("hdfs://localhost:9000/Inter_22"));
//			FileOutputFormat.setOutputPath(job, new Path("hdfs://localhost:9000/final1"));	
		// TODO: specify input and output DIRECTORIES (not files)
		FileInputFormat.setInputPaths(job, new Path("hdfs://localhost:9000/stockcluster"));
		FileOutputFormat.setOutputPath(job, new Path("hdfs://localhost:9000/stockprediction"));

		if (!job.waitForCompletion(true))
			return;
	}

}
