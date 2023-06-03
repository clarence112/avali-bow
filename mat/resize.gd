extends SubViewport

var vp:Viewport


# Called when the node enters the scene tree for the first time.
func _ready():
    vp = $"..".get_viewport()
    vp.connect("size_changed", resize)
    resize()
    
    
func resize():
    var s := vp.get_visible_rect().size
    s = Vector2(s.x / 2, s.y)
    size = s
    $"../SubViewport2".size = s
