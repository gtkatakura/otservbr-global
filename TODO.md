https://yourotsglobal.com/
https://www.kronusot.com/index.php?subtopic=serverinfo

https://www.emperaot.com/

- Implementar decayTime (duration) de items para comando /attr
- Modo retro-pvp? Anti-ghosting? Fair Fight Rules? allowWalkthrough

- (X) Algoritmo para converter gold ao clicar com direito encima

- NPC Trader

- (X) Verificar porque editar players pelo MyAAC está buggando o character
	- Precisa adicionar o towns no config.php

- Automatizar deploy do server
- Website com página do download cliente apontando para cliente customizado
- Colocar o minimaps com marks no download do client
- Gerar o cliente automaticamente usando o client-editor

- Como criar uma spell com um ícone customizado?
- Como criar um item novo?
- Como editar o mapa?
- Como criar respawn?
- Como criar teleport?
- Como criar uma quest?

- Automaticamente adicionar as towns no config.php (retirado do town.lua):

```php
	'towns' => array(
		0 => 'No town',
		1 => 'DAWNPORT_TUTORIAL',
		2 => 'DAWNPORT',
		3 => 'ROOKGAARD',
		4 => 'ISLAND_OF_DESTINY',
		5 => 'AB_DENDRIEL',
		6 => 'CARLIN',
		7 => 'KAZORDOON',
		8 => 'THAIS',
		9 => 'VENORE',
		10 => 'ANKRAHMUN',
		11 => 'EDRON',
		12 => 'FARMINE',
		13 => 'DARASHIA',
		14 => 'LIBERTY_BAY',
		15 => 'PORT_HOPE',
		16 => 'SVARGROND',
		17 => 'YALAHAR',
		18 => 'GRAY_BEACH',
		19 => 'KRAILOS',
		20 => 'RATHLETON',
		21 => 'ROSHAMUUL',
		22 => 'ISSAVI',
		23 => 'EVENT_ROOM',
		24 => 'COBRA_BASTION',
		25 => 'BOUNAC',
		26 => 'FEYRIST'
	),
```


- Porque o timeBetweenActions e timeBetweenExActions nao afeta os potions direito?

<!--
timeBetweenActions
é pra: subir em escadas / clicar em algo mais rapido (tipo food) etc etc...

timeBetweenExActions
é as actions tipo potion... (clica e aparece aquele mouse selecionavel)

timeBetweenCustomActions
[nao sei sorry~] -->

<!-- timeBetweenActions = Tempo entre ações (tempo geral) - Deve somar com as de baixo



timeBetweenExActions = Tempo entre ações com funções (como aneis, keys ou itens que possuem algum tipo de ação) -->
