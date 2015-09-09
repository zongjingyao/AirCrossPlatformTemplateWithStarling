package
{

import com.mesmotronic.ane.AndroidFullScreen;

import flash.display.Sprite;
import flash.display.StageDisplayState;

import net.hires.debug.Stats;

import starling.core.Starling;

[SWF(width="720", height="1280", frameRate="60", backgroundColor="#000000")]
public class AndroidStartUp extends Sprite
{
    private var m_starling:Starling;

    public function AndroidStartUp()
    {
        Starling.handleLostContext = true;
        if (!AndroidFullScreen.immersiveMode())
        {
            stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
        }

        addChild(new Stats());
        m_starling = new Starling(GameStartUp,stage);
        m_starling.start();
    }
}
}
