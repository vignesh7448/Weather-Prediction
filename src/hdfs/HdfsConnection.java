package hdfs;

import java.io.IOException;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;

public class HdfsConnection {
	public static FileSystem connect() throws IOException {
		
		Configuration conf = new Configuration();
		conf.set("fs.default.name", "hdfs://localhost:9000");
		FileSystem fs = FileSystem.get(conf);
		return fs;
	}
}
