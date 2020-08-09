package preprocessing;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

import hdfs.HdfsConnection;

public class classifyDri {

	public static void main(String[] args) throws Exception {
		Configuration conf = new Configuration();
		FileSystem fs = HdfsConnection.connect();
		
		Path path = new Path("hdfs://localhost:9000/february");
		if(fs.exists(path)) {
			fs.delete(path);
		}
		Job job = Job.getInstance(conf, "JobName");
		job.setJarByClass(preprocessing.classifyDri.class);
		// TODO: specify a mapper
		job.setMapperClass(classifypre.class);
		// TODO: specify a reducer
		job.setReducerClass(classifyred.class);

		// TODO: specify output types
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(Text.class);

		// TODO: specify input and output DIRECTORIES (not files)
		FileInputFormat.setInputPaths(job, new Path("hdfs://localhost:9000/weatherclassify/part-r-00000"));
		FileOutputFormat.setOutputPath(job, new Path("hdfs://localhost:9000/february"));
		if (!job.waitForCompletion(true))
			return;
	}

}
