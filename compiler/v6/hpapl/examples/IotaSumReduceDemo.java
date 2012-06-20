package hpapl.examples;

import hpapl.*;
import hpapl.AplArray.*;

public class IotaSumReduceDemo {
	
	private static class Anon extends AplFunction {
		public void apply(AplArray out, AplArray rgt) {
			AplArray res = new AplArray();
			AplFunction plus = new AplArray.PlusFunction();
			
			res.iota(rgt);
			res.reduce(plus, res);
			
			out.setFrom(0, res, 0);
		}
		
		public void apply(AplArray out, AplArray lft, AplArray rgt) {
			throw new AplValenceException();
		}
	}
	
	/* ⎕←{+/⍳⍵}¨⍳300000 */
	public static void main(String[] args) {
		AplArray res;
		AplFunction fun;
		
		fun = new Anon();
		res = new AplArray();
		
		res.iota(50);
		res.each(fun, res);
		
		res.print();
	}
}
