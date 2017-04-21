import static org.junit.Assert.*;
import org.junit.Test;

public class TestEx01 {
	
	@Test
	public void testFunc01(){
		int a,b,c;
		a=3;
		b=2;
		c=a+b;
		org.junit.Assert.assertSame(5, c);
		org.junit.Assert.assertNotSame(5, c);
		assertSame(8,c);
	}
}
