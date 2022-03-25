/** Generated by YAKINDU Statechart Tools code generator. */
package hu.bme.mit.inf.symod.fm286.homework.chessclock;

import hu.bme.mit.inf.symod.fm286.homework.IStatemachine;
import hu.bme.mit.inf.symod.fm286.homework.ITimerCallback;

public interface IChessClockStatemachine extends ITimerCallback,IStatemachine {
	public static final long minStartTime = 60;
	
	public static final long defStartTime = 120;
	
	public static final long maxStartTime = 300;
	
	public static final long minIncrement = 0;
	
	public static final long maxIncrement = 120;
	
	public static final long maxTimeMin = 600;
	
	public static final long maxTimeMax = 1200;
	
	public interface SCIButtons {
	
		public void raiseModeButton();
		
		public void raiseStartButton();
		
		public void raiseBlackButton();
		
		public void raiseWhiteButton();
		
	}
	
	public SCIButtons getSCIButtons();
	
	public interface SCIBeeper {
	
		public void setSCIBeeperOperationCallback(SCIBeeperOperationCallback operationCallback);
	
	}
	
	public interface SCIBeeperOperationCallback {
	
		public void beep();
		
	}
	
	public SCIBeeper getSCIBeeper();
	
	public interface SCIDisplay {
	
		public String getText();
		
		public void setText(String value);
		
		public long getWhiteDisplay();
		
		public void setWhiteDisplay(long value);
		
		public long getBlackDisplay();
		
		public void setBlackDisplay(long value);
		
	}
	
	public SCIDisplay getSCIDisplay();
	
}