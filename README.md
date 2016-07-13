# HoverSlippery
The jQuery plugin for doing cool hovers on inline navigations

## Install

```
bower install hoverSlippery
```

## How to use
* Include jquery
* Include **hoverslippery.js** file into the index.html
```html
  <script type="text/javascript" src="hoverslippery.js"></script> 
```
or include minified file
```html
  <script type="text/javascript" src="hoverslippery.min.js"></script> 
```
* Init hoverSlippery
<br />
<b>HTML</b> One li element must be with class 'active'
```html
  <nav class='forUsePlugin'>
    <ul>
      <li class='active'>
        <a href="#">Item 1</a>
      </li>
      <li>
        <a href="#">Item 2</a>
      </li>
      <li>
        <a href="#">Item 3</a>
      </li>
      <li>
        <a href="#">Item 4</a>
      </li>
      <li>
        <a href="#">Item 5</a>
      </li>
    </ul>
  </nav>
```

&nbsp;
    <b>CSS</b>
    
```CSS
  ul { padding:0;margin:0; }
  li { display: inline-block; }
```

&nbsp;
      <b>Javascript</b>
      
```js
  $(document).ready(function(){
    $('.forUsePlugin').hoverSlippery();
  })
```
## Options
```js
  {
    
    border: true // If you want bordered slippery
    
    borderTwice: true // Bordered slippery, top and bottom line. border options must be true
    
    underline : true // Bordered slippery, bottom line. border options must be true
    
    overline  : true // Bordered slippery, top line. border options must be true
    
    borderColor : '#BADA55' // Change border color
    
    borderStyle : 'solid' // Change border style. Default: solid
    
    borderWidth : '1px' // Change border width. Default: 1px
    
    bgColor : '#394264' // Change background color. border option must be false. Default: #394264
    
    speed : 300 // Slippery speed. Default: 300
    
    radius : '5px' // Change border radius. Default: 5px. border options must be false.
    
  }
```
<a href="http://codepen.io/Hastalavistababy/pen/wWPQQv/">Try demo</a>
