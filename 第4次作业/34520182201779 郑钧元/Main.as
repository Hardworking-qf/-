package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	public class Main extends MovieClip {
		
		var startPage:StartPage;
		var hillPage:HillPage;
		var pondPage:PondPage;

		public function Main() {
			// constructor code
			
			startPage = new StartPage;
			hillPage = new HillPage;
			pondPage = new PondPage;
			
			addChild(startPage);
	

			startPage.FaceBtn.addEventListener(MouseEvent.CLICK,changeto);
			function changeto(e:MouseEvent):void{ 
				//this.gotoAndPlay(1,"场景 2");
				addChild(hillPage);
				removeChild(startPage);
				}
				
			hillPage.BackBtn.addEventListener(MouseEvent.CLICK,changebacks);
			function changebacks(e:MouseEvent):void{ 
				//this.gotoAndPlay(1,"场景 1");
				addChild(startPage);
				removeChild(hillPage);
			}
			hillPage.FaceBtn.addEventListener(MouseEvent.CLICK,changetowards);
			function changetowards(e:MouseEvent):void{ 
					//this.gotoAndPlay(1,"场景 3");
				addChild(pondPage);
				removeChild(hillPage);
			}
			pondPage.StartBtn.addEventListener(MouseEvent.CLICK,continues);
			function continues(e:MouseEvent):void{ 
				//this.gotoAndPlay(1,"场景 1");
				addChild(startPage);
				removeChild(pondPage);
			}
			
		}

	}
	
}
