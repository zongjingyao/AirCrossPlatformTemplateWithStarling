package
{

import flash.display.Sprite;

import net.hires.debug.Stats;

import starling.core.Starling;

[SWF(width="720", height="1280", frameRate="60", backgroundColor="#000000")]
public class iOSStartUp extends Sprite
{
    private var m_starling:Starling;

    public function iOSStartUp()
    {
        addChild(new Stats());
        m_starling = new Starling(GameStartUp,stage);
        m_starling.start();
    }
}
}
