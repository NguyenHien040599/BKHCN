!function(e,t){"object"==typeof exports&&"object"==typeof module?module.exports=t(require("jquery"),require("trumbowyg/dist/ui/icons.svg"),require("trumbowyg")):"function"==typeof define&&define.amd?define("VueTrumbowyg",["jquery","trumbowyg/dist/ui/icons.svg","trumbowyg"],t):"object"==typeof exports?exports.VueTrumbowyg=t(require("jquery"),require("trumbowyg/dist/ui/icons.svg"),require("trumbowyg")):e.VueTrumbowyg=t(e.jQuery,e["trumbowyg/dist/ui/icons.svg"],e.trumbowyg)}(window,function(e,t,n){return function(e){var t={};function n(r){if(t[r])return t[r].exports;var o=t[r]={i:r,l:!1,exports:{}};return e[r].call(o.exports,o,o.exports,n),o.l=!0,o.exports}return n.m=e,n.c=t,n.d=function(e,t,r){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var o in e)n.d(r,o,function(t){return e[t]}.bind(null,o));return r},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="",n(n.s=3)}([function(t,n){t.exports=e},function(e,n){e.exports=t},function(e,t){e.exports=n},function(e,t,n){"use strict";n.r(t);var r=n(0),o=n.n(r),u=(n(2),n(1)),i=["init","focus","blur","change","resize","paste","openfullscreen","closefullscreen","close"],s=function(e,t,n,r,o,u,i,s){var l,c="function"==typeof e?e.options:e;if(t&&(c.render=t,c.staticRenderFns=[],c._compiled=!0),l)if(c.functional){c._injectStyles=l;var f=c.render;c.render=function(e,t){return l.call(t),f(e,t)}}else{var a=c.beforeCreate;c.beforeCreate=a?[].concat(a,l):[l]}return{exports:e,options:c}}({name:"trumbowyg",props:{value:{default:null,required:!0,validator:function(e){return null===e||"string"==typeof e||e instanceof String}},config:{type:Object,default:function(){return{}}},svgPath:{type:[String,Boolean],default:n.n(u).a}},data:function(){return{el:null}},mounted:function(){this.el||(this.el=o()(this.$el),this.el.trumbowyg(o.a.extend(!0,{},{svgPath:this.svgPath},this.config)),this.el.trumbowyg("html",this.value),this.el.on("tbwchange",this.onChange),this.el.on("tbwpaste",this.onChange),this.el.on("tbwblur",this.onBlur),this.registerEvents())},watch:{value:function(e){this.el&&e!==this.el.trumbowyg("html")&&this.el.trumbowyg("html",e)}},methods:{onChange:function(e){this.$emit("input",e.target.value)},onBlur:function(e){this.$emit("blur",e.target.value)},registerEvents:function(){var e=this;i.forEach(function(t){e.el.on("tbw"+t,function(){for(var n=arguments.length,r=Array(n),o=0;o<n;o++)r[o]=arguments[o];e.$emit.apply(e,["tbw-"+t].concat(r))})})}},beforeDestroy:function(){this.el&&(this.el.trumbowyg("destroy"),this.el=null)}},function(){var e=this.$createElement;return(this._self._c||e)("textarea")});s.options.__file="component.vue";var l=s.exports;n.d(t,"trumbowygPlugin",function(){return c}),n.d(t,"component",function(){return l});var c=function(e,t){var n="trumbowyg";"string"==typeof t&&(n=t),e.component(n,l)};l.install=c,t.default=l}])});