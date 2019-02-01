// cria um novo objeto XML
var pageXML = new XML();

// cria uma nova arra para armazenar a ordem de nós do código XML
var pageOrder = new Array();	
var pageCanTear = new Array();

// seta a propriedade ignoreWhite para true(padrão é falso)
pageXML.ignoreWhite = true;

// Depois que o carregamento está completo, escreve o objeto XML
pageXML.onLoad = function(success) {
	if (success) {
		var i = 0;
		pw = (pageXML.firstChild.attributes.width) ? Number(pageXML.firstChild.attributes.width) : 300; // seta o valor pelo xml, ou padrão para buscar do código fonte
		ph = (pageXML.firstChild.attributes.height) ? Number(pageXML.firstChild.attributes.height) : 400; // seta o valor pelo xml, ou padrão para buscar do código fonte
		Bpw = (pageXML.firstChild.attributes.bwidth) ? Number(pageXML.firstChild.attributes.bwidth) : 830; // seta o valor pelo xml, ou padrão para buscar do código fonte
		Bph = (pageXML.firstChild.attributes.bheight) ? Number(pageXML.firstChild.attributes.bheight) : 1176; // seta o valor pelo xml, ou padrão para buscar do código fonte		
		posicao_x=(pageXML.firstChild.attributes.pos_x) ? Number(pageXML.firstChild.attributes.pos_x) : 300;
		posicao_y=(pageXML.firstChild.attributes.pos_y) ? Number(pageXML.firstChild.attributes.pos_y) : 300;		
		hcover = (pageXML.firstChild.attributes.hcover=="true") ? true : false;		//capa dura on/off
		transparency = (pageXML.firstChild.attributes.transparency=="true") ? true : false;		//transparência

		for (var thisNode = pageXML.firstChild.firstChild; thisNode != null; thisNode = thisNode.nextSibling) {
			pageOrder[i] = thisNode.attributes.src;			
			pageCanTear[i] = (thisNode.attributes.canTear=="true") ? true : false;
			i++;			
		}
		// adianta a animação
		play();
	} else {
		trace("Erro ao carregar o XML");
	}
};

// Carrega o XML no level0.
pageXML.load(_level0.xmlFile);
