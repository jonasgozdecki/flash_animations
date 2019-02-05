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

[![Light](https://github.com/jonasgozdecki/flash_animations/blob/master/light/light_move.gif)]()
         
`https://github.com/jonasgozdecki/flash_animations/blob/master/light/light_move.avi`
 
### Loading

- Loading component

[![Loading](https://github.com/jonasgozdecki/flash_animations/blob/master/loading/loading.gif)]()

### Map

- Brasil's map

[![Map](https://github.com/jonasgozdecki/flash_animations/blob/master/map/map.gif)]()

### ClockLite

- Circle clock, keep some seconds.

[![ClockLite](https://github.com/jonasgozdecki/flash_animations/blob/master/clockLite/clockLite.gif)]()

### Roulette

- Roulette for gamming.

[![Roulette](https://github.com/jonasgozdecki/flash_animations/blob/master/roulette/roulette.gif)]()


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


[![Magazine](https://github.com/jonasgozdecki/flash_animations/blob/master/magazine/magazine.gif)]()

### Arm

[![Arm](https://github.com/jonasgozdecki/flash_animations/blob/master/arm/arm.gif)]()

### Servo

- It's part of a project to integrate an electronic device to flash.

[![Servo](https://github.com/jonasgozdecki/flash_animations/blob/master/servo/servo.gif)]()

### Piston

- Clich proccess.

[![Piston](https://github.com/jonasgozdecki/flash_animations/blob/master/piston/piston.gif)]()

### Gears

- First version of Tork project (Kinetic Energy Recovery System).

[![Gears](https://github.com/jonasgozdecki/flash_animations/blob/master/gears/gears.gif)]()

- Hydraulic version of a wankel engine concept. Missing lots of parts usyally found in those systems.

[![Gears](https://github.com/jonasgozdecki/flash_animations/blob/master/gears/wankel.gif)]()

### Ball

- Example of a bouncing ball using actionscript.

[![Ball](https://github.com/jonasgozdecki/flash_animations/blob/master/ball/ball.gif)]()

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