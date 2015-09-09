package
{
import starling.display.Quad;
import starling.display.Sprite;
import starling.events.Event;
import starling.utils.Color;

public class GameStartUp extends Sprite
{
    public function GameStartUp()
    {
        addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
    }

    private function onAddedToStage(event:Event):void
    {
        stage.color = Color.WHITE;

        var quad:Quad = new Quad(200, 200, Color.RED);
        quad.x = 100;
        quad.y = 50;
        addChild(quad);
    }
}
}
