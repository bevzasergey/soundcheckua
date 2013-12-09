/* JCE Editor - 2.3.4.2 | 09 December 2013 | http://www.joomlacontenteditor.net | Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved | GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html */
(function(){var e=tinymce.each,r=tinymce.dom.Event,g;function p(t,s){while(t&&(t.nodeType===8||(t.nodeType===3&&/^[ \t\n\r]*$/.test(t.nodeValue)))){t=s(t)}return t}function b(s){return p(s,function(t){return t.previousSibling})}function i(s){return p(s,function(t){return t.nextSibling})}function d(s,u,t){return s.dom.getParent(u,function(v){return tinymce.inArray(t,v)!==-1})}function n(s){return s&&(s.tagName==="OL"||s.tagName==="UL")}function c(u,v){var t,w,s;t=b(u.lastChild);while(n(t)){w=t;t=b(w.previousSibling)}if(w){s=v.create("li",{style:"list-style-type: none;"});v.split(u,w);v.insertAfter(s,w);s.appendChild(w);s.appendChild(w);u=s.previousSibling}return u}function m(t,s,u){t=a(t,s,u);return o(t,s,u)}function a(u,s,v){var t=b(u.previousSibling);if(t){return h(t,u,s?t:false,v)}else{return u}}function o(u,t,v){var s=i(u.nextSibling);if(s){return h(u,s,t?s:false,v)}else{return u}}function h(u,s,t,v){if(l(u,s,!!t,v)){return f(u,s,t)}else{if(u&&u.tagName==="LI"&&n(s)){u.appendChild(s)}}return s}function l(u,t,s,v){if(!u||!t){return false}else{if(u.tagName==="LI"&&t.tagName==="LI"){return t.style.listStyleType==="none"||j(t)}else{if(n(u)){return(u.tagName===t.tagName&&(s||u.style.listStyleType===t.style.listStyleType))||q(t)}else{return v&&u.tagName==="P"&&t.tagName==="P"}}}}function q(t){var s=i(t.firstChild),u=b(t.lastChild);return s&&u&&n(t)&&s===u&&(n(s)||s.style.listStyleType==="none"||j(s))}function j(u){var t=i(u.firstChild),s=b(u.lastChild);return t&&s&&t===s&&n(t)}function f(w,v,s){var u=b(w.lastChild),t=i(v.firstChild);if(w.tagName==="P"){w.appendChild(w.ownerDocument.createElement("br"))}while(v.firstChild){w.appendChild(v.firstChild)}if(s){w.style.listStyleType=s.style.listStyleType}v.parentNode.removeChild(v);h(u,t,false);return w}function k(t,u){var s;if(!u.is(t,"li,ol,ul")){s=u.getParent(t,"li");if(s){t=s}}return t}tinymce.create("tinymce.plugins.Lists",{init:function(y){var v="TABBING";var s="EMPTY";var J="ESCAPE";var z="PARAGRAPH";var N="UNKNOWN";var x=N;function E(U){return U.keyCode===tinymce.VK.TAB&&!(U.altKey||U.ctrlKey)&&(y.queryCommandState("InsertUnorderedList")||y.queryCommandState("InsertOrderedList"))}function w(){var U=B();var W=U.parentNode.parentNode;var V=U.parentNode.lastChild===U;return V&&!t(W)&&P(U)}function t(U){if(n(U)){return U.parentNode&&U.parentNode.tagName==="LI"}else{return U.tagName==="LI"}}function F(){return y.selection.isCollapsed()&&P(B())}function B(){var U=y.selection.getStart();return((U.tagName=="BR"||U.tagName=="")&&U.parentNode.tagName=="LI")?U.parentNode:U}function P(U){var V=U.childNodes.length;if(U.tagName==="LI"){return V==0?true:V==1&&(U.firstChild.tagName==""||U.firstChild.tagName=="BR"||H(U))}return false}function H(U){var V=tinymce.grep(U.parentNode.childNodes,function(Y){return Y.tagName=="LI"});var W=U==V[V.length-1];var X=U.firstChild;return tinymce.isIE9&&W&&(X.nodeValue==String.fromCharCode(160)||X.nodeValue==String.fromCharCode(32))}function T(U){return U.keyCode===tinymce.VK.ENTER}function A(U){return T(U)&&!U.shiftKey}function M(U){if(E(U)){return v}else{if(A(U)&&w()){return N}else{if(A(U)&&F()){return s}else{return N}}}}function D(U,V){if(x==v||x==s||tinymce.isGecko&&x==J){r.cancel(V)}}function C(){var U=y.selection.getRng(true);var V=U.startContainer;if(V.nodeType==3){var W=V.nodeValue;if(tinymce.isIE9&&W.length>1&&W.charCodeAt(W.length-1)==32){return(U.endOffset==W.length-1)}else{return(U.endOffset==W.length)}}else{if(V.nodeType==1){return U.endOffset==V.childNodes.length}}return false}function I(){var W=y.selection.getNode();var V="h1,h2,h3,h4,h5,h6,p,div";var U=y.dom.is(W,V)&&W.parentNode.tagName==="LI"&&W.parentNode.lastChild===W;return y.selection.isCollapsed()&&U&&C()}function K(W,Y){if(A(Y)&&I()){var X=W.selection.getNode();var V=W.dom.create("li");var U=W.dom.getParent(X,"li");W.dom.insertAfter(V,U);if(tinymce.isIE6||tinymce.isIE7||tinyMCE.isIE8){W.selection.setCursorLocation(V,1)}else{W.selection.setCursorLocation(V,0)}Y.preventDefault()}}function u(X,Z){var ac;if(!tinymce.isGecko){return}var V=X.selection.getStart();if(Z.keyCode!=tinymce.VK.BACKSPACE||V.tagName!=="IMG"){return}function W(ag){var ah=ag.firstChild;var af=null;do{if(!ah){break}if(ah.tagName==="LI"){af=ah}}while(ah=ah.nextSibling);return af}function ae(ag,af){while(ag.childNodes.length>0){af.appendChild(ag.childNodes[0])}}ac=V.parentNode.previousSibling;if(!ac){return}var aa;if(ac.tagName==="UL"||ac.tagName==="OL"){aa=ac}else{if(ac.previousSibling&&(ac.previousSibling.tagName==="UL"||ac.previousSibling.tagName==="OL")){aa=ac.previousSibling}else{return}}var ad=W(aa);var U=X.dom.createRng();U.setStart(ad,1);U.setEnd(ad,1);X.selection.setRng(U);X.selection.collapse(true);var Y=X.selection.getBookmark();var ab=V.parentNode.cloneNode(true);if(ab.tagName==="P"||ab.tagName==="DIV"){ae(ab,ad)}else{ad.appendChild(ab)}V.parentNode.parentNode.removeChild(V.parentNode);X.selection.moveToBookmark(Y)}function G(U){var V=y.dom.getParent(U,"ol,ul");if(V!=null){var W=V.lastChild;y.selection.setCursorLocation(W,0)}}this.ed=y;y.addCommand("Indent",this.indent,this);y.addCommand("Outdent",this.outdent,this);y.addCommand("InsertUnorderedList",function(){this.applyList("UL","OL")},this);y.addCommand("InsertOrderedList",function(){this.applyList("OL","UL")},this);y.onInit.add(function(){y.editorCommands.addCommands({outdent:function(){var V=y.selection,W=y.dom;function U(X){X=W.getParent(X,W.isBlock);return X&&(parseInt(y.dom.getStyle(X,"margin-left")||0,10)+parseInt(y.dom.getStyle(X,"padding-left")||0,10))>0}return U(V.getStart())||U(V.getEnd())||y.queryCommandState("InsertOrderedList")||y.queryCommandState("InsertUnorderedList")}},"state")});y.onKeyUp.add(function(V,W){if(x==v){V.execCommand(W.shiftKey?"Outdent":"Indent",true,null);x=N;return r.cancel(W)}else{if(x==s){var U=B();var Y=V.settings.list_outdent_on_enter===true||W.shiftKey;V.execCommand(Y?"Outdent":"Indent",true,null);if(tinymce.isIE){G(U)}return r.cancel(W)}else{if(x==J){if(tinymce.isIE6||tinymce.isIE7||tinymce.isIE8){var X=V.getDoc().createTextNode("\uFEFF");V.selection.getNode().appendChild(X)}else{if(tinymce.isIE9||tinymce.isGecko){V.execCommand("Outdent");return r.cancel(W)}}}}}});function L(V,U){var W=y.getDoc().createTextNode("\uFEFF");V.insertBefore(W,U);y.selection.setCursorLocation(W,0);y.execCommand("mceRepaint")}function R(V,X){if(T(X)){var U=B();if(U){var W=U.parentNode;var Y=W&&W.parentNode;if(Y&&Y.nodeName=="LI"&&Y.firstChild==W&&U==W.firstChild){L(Y,W)}}}}function S(V,X){if(T(X)){var U=B();if(V.dom.select("ul li",U).length===1){var W=U.firstChild;L(U,W)}}}function Q(W,aa){function X(ab){var ad=[];var ae=new tinymce.dom.TreeWalker(ab.firstChild,ab);for(var ac=ae.current();ac;ac=ae.next()){if(W.dom.is(ac,"ol,ul,li")){ad.push(ac)}}return ad}if(aa.keyCode==tinymce.VK.BACKSPACE){var U=B();if(U){var Z=W.dom.getParent(U,"ol,ul"),V=W.selection.getRng();if(Z&&Z.firstChild===U&&V.startOffset==0){var Y=X(U);Y.unshift(U);W.execCommand("Outdent",false,Y);W.undoManager.add();return r.cancel(aa)}}}}function O(V,X){var U=B();if(X.keyCode===tinymce.VK.BACKSPACE&&V.dom.is(U,"li")&&U.parentNode.firstChild!==U){if(V.dom.select("ul,ol",U).length===1){var Z=U.previousSibling;V.dom.remove(V.dom.select("br",U));V.dom.remove(U,true);var W=tinymce.grep(Z.childNodes,function(aa){return aa.nodeType===3});if(W.length===1){var Y=W[0];V.selection.setCursorLocation(Y,Y.length)}V.undoManager.add();return r.cancel(X)}}}y.onKeyDown.add(function(U,V){x=M(V)});y.onKeyDown.add(D);y.onKeyDown.add(u);y.onKeyDown.add(K);if(tinymce.isGecko){y.onKeyUp.add(R)}if(tinymce.isIE8){y.onKeyUp.add(S)}if(tinymce.isGecko||tinymce.isWebKit){y.onKeyDown.add(Q)}if(tinymce.isWebKit){y.onKeyDown.add(O)}},applyList:function(y,v){var C=this,z=C.ed,I=z.dom,s=[],H=false,u=false,w=false,B,G=z.selection.getSelectedBlocks();function E(t){if(t&&t.tagName==="BR"){I.remove(t)}}function F(M){var N=I.create(y),t;function L(O){if(O.style.marginLeft||O.style.paddingLeft){C.adjustPaddingFunction(false)(O)}}if(M.tagName==="LI"){}else{if(M.tagName==="P"||M.tagName==="DIV"||M.tagName==="BODY"){K(M,function(P,O){J(P,O,M.tagName==="BODY"?null:P.parentNode);t=P.parentNode;L(t);E(O)});if(t){if(t.tagName==="LI"&&(M.tagName==="P"||G.length>1)){I.split(t.parentNode.parentNode,t.parentNode)}m(t.parentNode,true)}return}else{t=I.create("li");I.insertAfter(t,M);t.appendChild(M);L(M);M=t}}I.insertAfter(N,M);N.appendChild(M);m(N,true);s.push(M)}function J(P,L,N){var t,O=P,M;while(!I.isBlock(P.parentNode)&&P.parentNode!==I.getRoot()){P=I.split(P.parentNode,P.previousSibling);P=P.nextSibling;O=P}if(N){t=N.cloneNode(true);P.parentNode.insertBefore(t,P);while(t.firstChild){I.remove(t.firstChild)}t=I.rename(t,"li")}else{t=I.create("li");P.parentNode.insertBefore(t,P)}while(O&&O!=L){M=O.nextSibling;t.appendChild(O);O=M}if(t.childNodes.length===0){t.innerHTML='<br _mce_bogus="1" />'}F(t)}function K(Q,T){var N,R,O=3,L=1,t="br,ul,ol,p,div,h1,h2,h3,h4,h5,h6,table,blockquote,address,pre,form,center,dl";function P(X,U){var V=I.createRng(),W;g.keep=true;z.selection.moveToBookmark(g);g.keep=false;W=z.selection.getRng(true);if(!U){U=X.parentNode.lastChild}V.setStartBefore(X);V.setEndAfter(U);return!(V.compareBoundaryPoints(O,W)>0||V.compareBoundaryPoints(L,W)<=0)}function S(U){if(U.nextSibling){return U.nextSibling}if(!I.isBlock(U.parentNode)&&U.parentNode!==I.getRoot()){return S(U.parentNode)}}N=Q.firstChild;var M=false;e(I.select(t,Q),function(U){if(U.hasAttribute&&U.hasAttribute("_mce_bogus")){return true}if(P(N,U)){I.addClass(U,"_mce_tagged_br");N=S(U)}});M=(N&&P(N,undefined));N=Q.firstChild;e(I.select(t,Q),function(V){var U=S(V);if(V.hasAttribute&&V.hasAttribute("_mce_bogus")){return true}if(I.hasClass(V,"_mce_tagged_br")){T(N,V,R);R=null}else{R=V}N=U});if(M){T(N,undefined,R)}}function D(t){K(t,function(M,L,N){J(M,L);E(L);E(N)})}function A(t){if(tinymce.inArray(s,t)!==-1){return}if(t.parentNode.tagName===v){I.split(t.parentNode,t);F(t);o(t.parentNode,false)}s.push(t)}function x(M){var O,N,L,t;if(tinymce.inArray(s,M)!==-1){return}M=c(M,I);while(I.is(M.parentNode,"ol,ul,li")){I.split(M.parentNode,M)}s.push(M);M=I.rename(M,"p");L=m(M,false,z.settings.force_br_newlines);if(L===M){O=M.firstChild;while(O){if(I.isBlock(O)){O=I.split(O.parentNode,O);t=true;N=O.nextSibling&&O.nextSibling.firstChild}else{N=O.nextSibling;if(t&&O.tagName==="BR"){I.remove(O)}t=false}O=N}}}e(G,function(t){t=k(t,I);if(t.tagName===v||(t.tagName==="LI"&&t.parentNode.tagName===v)){u=true}else{if(t.tagName===y||(t.tagName==="LI"&&t.parentNode.tagName===y)){H=true}else{w=true}}});if(w&&!H||u||G.length===0){B={LI:A,H1:F,H2:F,H3:F,H4:F,H5:F,H6:F,P:F,BODY:F,DIV:G.length>1?F:D,defaultAction:D,elements:this.selectedBlocks()}}else{B={defaultAction:x,elements:this.selectedBlocks(),processEvenIfEmpty:true}}this.process(B)},indent:function(){var u=this.ed,w=u.dom,x=[];function s(z){var y=w.create("li",{style:"list-style-type: none;"});w.insertAfter(y,z);return y}function t(B){var y=s(B),D=w.getParent(B,"ol,ul"),C=D.tagName,E=w.getStyle(D,"list-style-type"),A={},z;if(E!==""){A.style="list-style-type: "+E+";"}z=w.create(C,A);y.appendChild(z);return z}function v(z){if(!d(u,z,x)){z=c(z,w);var y=t(z);y.appendChild(z);m(y.parentNode,false);m(y,false);x.push(z)}}this.process({LI:v,defaultAction:this.adjustPaddingFunction(true),elements:this.selectedBlocks()})},outdent:function(y,x){var w=this,u=w.ed,z=u.dom,s=[];function A(t){var C,B,D;if(!d(u,t,s)){if(z.getStyle(t,"margin-left")!==""||z.getStyle(t,"padding-left")!==""){return w.adjustPaddingFunction(false)(t)}D=z.getStyle(t,"text-align",true);if(D==="center"||D==="right"){z.setStyle(t,"text-align","left");return}t=c(t,z);C=t.parentNode;B=t.parentNode.parentNode;if(B.tagName==="P"){z.split(B,t.parentNode)}else{z.split(C,t);if(B.tagName==="LI"){z.split(B,t)}else{if(!z.is(B,"ol,ul")){z.rename(t,"p")}}}s.push(t)}}var v=x&&tinymce.is(x,"array")?x:this.selectedBlocks();this.process({LI:A,defaultAction:this.adjustPaddingFunction(false),elements:v});e(s,m)},process:function(y){var F=this,w=F.ed.selection,z=F.ed.dom,E,u;function B(t){var s=tinymce.grep(t.childNodes,function(H){return!(H.nodeName==="BR"||H.nodeName==="SPAN"&&z.getAttrib(H,"data-mce-type")=="bookmark"||H.nodeType==3&&(H.nodeValue==String.fromCharCode(160)||H.nodeValue==""))});return s.length===0}function x(s){z.removeClass(s,"_mce_act_on");if(!s||s.nodeType!==1||!y.processEvenIfEmpty&&E.length>1&&B(s)){return}s=k(s,z);var t=y[s.tagName];if(!t){t=y.defaultAction}t(s)}function v(s){F.splitSafeEach(s.childNodes,x,true)}function C(s,t){return t>=0&&s.hasChildNodes()&&t<s.childNodes.length&&s.childNodes[t].tagName==="BR"}function D(){var t=w.getNode();var s=z.getParent(t,"td");return s!==null}E=y.elements;u=w.getRng(true);if(!u.collapsed){if(C(u.endContainer,u.endOffset-1)){u.setEnd(u.endContainer,u.endOffset-1);w.setRng(u)}if(C(u.startContainer,u.startOffset)){u.setStart(u.startContainer,u.startOffset+1);w.setRng(u)}}if(tinymce.isIE8){var G=F.ed.selection.getNode();if(G.tagName==="LI"&&!(G.parentNode.lastChild===G)){var A=F.ed.getDoc().createTextNode("\uFEFF");G.appendChild(A)}}g=w.getBookmark();y.OL=y.UL=v;F.splitSafeEach(E,x);w.moveToBookmark(g);g=null;if(!D()){F.ed.execCommand("mceRepaint")}},splitSafeEach:function(u,t,s){if(s||(tinymce.isGecko&&(/Firefox\/[12]\.[0-9]/.test(navigator.userAgent)||/Firefox\/3\.[0-4]/.test(navigator.userAgent)))){this.classBasedEach(u,t)}else{e(u,t)}},classBasedEach:function(v,u){var w=this.ed.dom,s,t;e(v,function(x){w.addClass(x,"_mce_act_on")});s=w.select("._mce_act_on");while(s.length>0){t=s.shift();w.removeClass(t,"_mce_act_on");u(t);s=w.select("._mce_act_on")}},adjustPaddingFunction:function(u){var s,v,t=this.ed;s=t.settings.indentation;v=/[a-z%]+/i.exec(s);s=parseInt(s,10);return function(w){var y,x;y=parseInt(t.dom.getStyle(w,"margin-left")||0,10)+parseInt(t.dom.getStyle(w,"padding-left")||0,10);if(u){x=y+s}else{x=y-s}t.dom.setStyle(w,"padding-left","");t.dom.setStyle(w,"margin-left",x>0?x+v:"")}},selectedBlocks:function(){var s=this.ed,t=s.selection.getSelectedBlocks();return t.length==0?[s.dom.getRoot()]:t},getInfo:function(){return{longname:"Lists",author:"Moxiecode Systems AB",authorurl:"http://tinymce.moxiecode.com",infourl:"http://wiki.moxiecode.com/index.php/TinyMCE:Plugins/lists",version:tinymce.majorVersion+"."+tinymce.minorVersion}}});tinymce.PluginManager.add("lists",tinymce.plugins.Lists)}());