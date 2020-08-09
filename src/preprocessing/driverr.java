package preprocessing;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

import hdfs.HdfsConnection;

public class driverr {

	public static void main(String[] args) throws Exception {
		
		Configuration conf = new Configuration();
		HdfsConnection con = new HdfsConnection();
		FileSystem fs = con.connect();
		Path path = new Path("hdfs://localhost:9000/weatherclassify");
		if(fs.exists(path)) {
			fs.delete(path);
		}
		Job job = Job.getInstance(conf, "JobName");
		job.setJarByClass(preprocessing.driverr.class);
		// TODO: specify a mapper
		job.setMapperClass(mapp.class);
		// TODO: specify a reducer
		job.setReducerClass(reducee.class);

		// TODO: specify output types
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(Text.class);

		// TODO: specify input and output DIRECTORIES (not files)
		FileInputFormat.setInputPaths(job, new Path("hdfs://localhost:9000/weather"));
		FileOutputFormat.setOutputPath(job, new Path("hdfs://localhost:9000/weatherclassify"));

		if (!job.waitForCompletion(true))
			return;
	}

}
