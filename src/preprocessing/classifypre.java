package preprocessing;

import java.io.IOException;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class classifypre extends Mapper<LongWritable, Text, Text, Text> {

	public void map(LongWritable ikey, Text ivalue, Context context) throws IOException, InterruptedException {
		
		Text t= new Text();
		Text t1 = new Text();
		
		String s=ivalue.toString();
		
		String a[]=s.split(":");
		if(a[0].equals("2019")&&a[1].equals("02"))
		{
			t.set(a[1].replace("02", "February")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		
		else if(a[0].equals("2019")&&a[1].equals("03"))
		{
			t.set(a[1].replace("03", "March")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		else if(a[0].equals("2019")&&a[1].equals("04"))
		{
			t.set(a[1].replace("04", "April")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		
		else if(a[0].equals("2019")&&a[1].equals("05"))
		{
			t.set(a[1].replace("05", "May")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		else if(a[0].equals("2019")&&a[1].equals("06"))
		{
			t.set(a[1].replace("06", "June")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		else if(a[0].equals("2019")&&a[1].equals("07"))
		{
			t.set(a[1].replace("07", "July")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		
		else if(a[0].equals("2019")&&a[1].equals("08"))
		{
			t.set(a[1].replace("08", "August")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		else if(a[0].equals("2019")&&a[1].equals("09"))
		{
			t.set(a[1].replace("09", "September")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		else if(a[0].equals("2019")&&a[1].equals("10"))
		{
			t.set(a[1].replace("10", "October")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		else if(a[0].equals("2019")&&a[1].equals("11"))
		{
			t.set(a[1].replace("11", "November")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		
		else if(a[0].equals("2019")&&a[1].equals("12"))
		{
			t.set(a[1].replace("12", "December")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}
		else if(a[0].equals("2019")&&a[1].equals("01"))
		{
			t.set(a[1].replace("01", "January")+" "+a[5]);
			
	        
		    
			context.write(t, t);
		}

	}

}
