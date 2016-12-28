# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Vinci"
	twitter: ""
	description: ""


bg = new BackgroundLayer



posterBG = new Layer
	image: "images/p2394576005.jpg"
	width: 1000
	height: 900
	blur: 10
	y: -300
	x: -32
	
poster = new Layer
	width: 379
	height: 427
	image: "images/p2394576005.jpg"
	x: 186
	y: 75


comments = new ScrollComponent
	width: 771
	height: 1334
	scrollHorizontal: false




Home = new Layer
	parent: comments.content
	width: 750
	height: 1334
	image: "images/Home.png"
	y: 600

top = new Layer
	width: 750
	height: 150
	image: "images/top.png"
	opacity: 0

comments.onMove ->
	top.opacity = Utils.modulate(comments.scrollY,[0,500],[0,1])
	poster.y = Utils.modulate(comments.scrollY,[0,500],[75,40])
	