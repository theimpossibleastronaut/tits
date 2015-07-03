class Tits
{
    static var VERSION:String = "0.2";

    static public function main()
    {
        var app = new Tits();
    }

    public function new()
    {

        var tits:String = "";
        var nippleStyles:String = "*+x,";
        var randomNipple:Int = 0;
        var selectedNipple:String = ".";
        var titSpacing:Int = 0;
        var nippleSpacing:Int = 0;
        var spacing:String = "";
        var spacing2:String = "";

        randomNipple = Math.floor(Math.random()*10);
        nippleSpacing = Math.floor(Math.random()*3);
        titSpacing = Math.floor(Math.random()*2);

        if (randomNipple < 3)
        {
            selectedNipple = nippleStyles.charAt(Math.floor(Math.random()*nippleStyles.length));
        }

        for (i in 0...nippleSpacing)
        {
            spacing = spacing + " ";
        }

        for (t in 0...2)
        {
            tits = tits + "(" + spacing + selectedNipple + spacing + ")";

            if (t == 0)
            {
                for (i in 0...titSpacing)
                {
                    spacing2 = spacing2 + " ";
                }

                tits = tits + spacing2;
            }
        }

        Sys.println( tits );

        Sys.exit( 0 );

    }

}