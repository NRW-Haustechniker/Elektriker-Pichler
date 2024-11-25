 function vanillaReady(fn) {  
 if (document.readyState === 'complete' || document.readyState === 'interactive') { 
    setTimeout(fn, 1); 
 } else { 
    document.addEventListener('DOMContentLoaded', fn); 
 } } 
 vanillaReady(function() {  
 var qp = new URLSearchParams(window.location.search); 
 qp.append('wurl', window.location.href); 
 var xhr = new XMLHttpRequest(); 
 xhr.open('GET', 'https://herold.adplorer.com/Tracker/TrackMe?' + qp); 
 xhr.onreadystatechange = function () { if(xhr.readyState === XMLHttpRequest.DONE) { var status = xhr.status; 
 if (status === 0 || (status >= 200 && status < 400)) {  
  if(xhr.responseText !== '') { eval(xhr.responseText); }}}}; 
 xhr.send(null); }); 