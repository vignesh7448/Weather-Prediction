package preprocessing;

import java.io.IOException;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class mapp extends Mapper<LongWritable, Text, Text, Text> {

	public void map(LongWritable ikey, Text ivalue, Context context) throws IOException, InterruptedException {

		
		
		Text t=new Text();
		
Text t1=new Text();
		String[] a=ivalue.toString().split(";");
		
		if(a.length>=8)
		{
			t.set(a[0]+":"+a[1]+":"+a[2]+":"+a[3]+":"+a[4]+":"+a[5]+":"+a[6]+":"+a[7]+":"+a[8]);
			
			context.write(t,t1);
		}
		
		
	}

}

