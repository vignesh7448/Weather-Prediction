package preprocessing;

import java.io.IOException;

import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

public class classifyred extends Reducer<Text, Text, Text, Text> {


	public void reduce(Text _key, Iterable<Text> values, Context context) throws IOException, InterruptedException {
		// process values
		
		Text t=new Text();
		String k="";
        t.set(k);
		context.write(_key, t);
	}

}
