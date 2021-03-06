package com.cloveHello.plugin.postables
{
	import com.spice.clove.plugin.control.IPluginController;
	import com.spice.clove.plugin.posting.Attachment;
	import com.spice.clove.plugin.posting.IPostable;
	import com.spice.clove.plugin.posting.Postable;
	
	import flash.utils.setTimeout;
	
	import mx.controls.Alert;
	
	public class HelloPostable extends Postable implements IPostable
	{
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
        
        /**
		 */
		 
		public function HelloPostable(controller:IPluginController,name:String)
		{
			super(controller,name);
		}
		
		//--------------------------------------------------------------------------
   	    //
        //  Public Methods
        //
        //--------------------------------------------------------------------------
        
        /**
		 */
		
		public function prepareAttachment(att:Attachment):void
		{
			//called when a new file is added
			
			Alert.show("Preparing "+att.name);
			
		}
		
		/**
		 */
		
		override public function init():void
		{
			Alert.show("Sending message to "+name+" message - "+this.message.text);
			
			flash.utils.setTimeout(this.complete,500);
		}

	}
}