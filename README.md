# Flash Animations
Set of frame/actionscript Flash animations.

- Adobe Flash
- Animations
- Motion Tween
- ActionScript

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

---

## Contents

- [Light](#light)
- [Loading](#loading)
- [Map](#map)
- [ClockLite](#clockLite)
- [Roulette](#roulette)
- [Magazine](#magazine)
- [Arm](#arm)
- [Servo](#servo)
- [Piston](#piston)
- [Gears](#gears)
- [Ball](#ball)
- [Clone](#clone)
- [License](#license)

---

### Light

- Multiple lines with radial multi-color gradient and blur.

[![Light](https://github.com/jonasgozdecki/flash_animations/tree/master/light/light_move.png)]()
`https://github.com/jonasgozdecki/flash_animations/tree/light/light.avi`
 
### Loading

- Loading component

[![Loading](https://github.com/jonasgozdecki/flash_animations/tree/master/loading/loading.png)]()

### Map

- Brasil's map

[![Map](https://github.com/jonasgozdecki/flash_animations/tree/master/map/map.png)]()

### ClockLite

- Circle clock, keep some seconds.

[![ClockLite](https://github.com/jonasgozdecki/flash_animations/tree/master/clockLite/clockLite.png)]()

### Roulette

- Roulette for gamming.

[![Roulette](https://github.com/jonasgozdecki/flash_animations/tree/master/roulette/roulette.png)]()


```javascript

var vspin:Number=0;
var vm:Number=0;

var vrot:Number=0;

function spn(){
	object.spinning = true
	object.spin = vspin
	object._rotation = object._rotation = 0
	
}
var sou:Sound = new Sound();
sou.attachSound("sdown");

var rt:String="";

function calc_rotat(){
	rt=String(Math.round((_root.object._rotation/9)-_root.object._rotation/50));	
	_root.num.text=rt;
	if(isNaN(_root.num.text.substr(0,1))){
		if(!isNaN(_root.num.text.substr(1,2))){
 			_root.num.text="M"+_root.rt.substr(1,2);
			if(_root.tx_ii.text!=_root.num.text){
				_root.tx_ii.text=_root.num.text;
				_root.sou.start();
				_root.mss.gotoAndPlay("o");
			}			
		}else if(!isNaN(_root.num.text.substr(1,1))){
 			_root.num.text="M"+_root.rt.substr(1,1);		
			if(_root.tx_ii.text!=_root.num.text){
				_root.tx_ii.text=_root.num.text;
				_root.sou.start();
				_root.mss.gotoAndPlay("o");
			}			
		}
	}else{
		_root.num.text="Q"+rt;
		if(_root.tx_ii.text!=_root.num.text){
				_root.tx_ii.text=_root.num.text;
				_root.sou.start();
				_root.mss.gotoAndPlay("o");
		}			
	}
	//limpa_nums();
	this[_root.num.text]._visible=true;
	
}

```


### Magazine


[![Magazine](https://github.com/jonasgozdecki/flash_animations/tree/master/magazine/magazine.png)]()

### Arm

[![Arm](https://github.com/jonasgozdecki/flash_animations/tree/master/arm/arm.png)]()

### Servo

- It's part of a project to integrate an electronic device to flash.

[![Servo](https://github.com/jonasgozdecki/flash_animations/tree/master/servo/servo.png)]()

### Piston

- Clich proccess.

[![Piston](https://github.com/jonasgozdecki/flash_animations/tree/master/piston/piston.png)]()

### Gears

- First version of Tork project (Kinetic Energy Recovery System).

[![Gears](https://github.com/jonasgozdecki/flash_animations/tree/master/gears/gears.png)]()

### Ball

- Example of a bouncing ball using actionscript.

[![Ball](https://github.com/jonasgozdecki/flash_animations/tree/master/ball/ball.png)]()

```javascript

with ("bola") {
    bola._x = 30;
    bola._y = 10;
    // posicao inicial do objeto
    velocidadey = 20;
    chaotela = 250;
    gravidade = 2;
    atrito = .98;
}
bola.onEnterFrame = function() {
    bola._y = bola._y+velocidadey;
    // movimento inicial
    if (bola._y-bola._height/2>chaotela) {
        bola._y = chaotela+bola._height/2;
        velocidadey = -velocidadey;
    // rebote caso toque o chao
    }
    velocidadey = velocidadey*atrito+gravidade;
    // formula que cria a gravidade e o atrito
}; 
```


### Clone

- Clone this repo to your local machine using `https://github.com/jonasgozdecki/flash_animations.git`

---

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**