package {

import flash.display.Sprite;

import net.hires.debug.Stats;

import starling.core.Starling;

[SWF(width="1280", height="720", frameRate="60", backgroundColor="#000000")]
public class WebStartUp extends Sprite
{
    private var m_starling:Starling;

    public function WebStartUp()
    {
        addChild(new Stats());
        m_starling = new Starling(GameStartUp,stage);
        m_starling.start();
    }
}
}
