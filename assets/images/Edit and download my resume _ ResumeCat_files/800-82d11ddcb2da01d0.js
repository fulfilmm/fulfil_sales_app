"use strict";(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[800],{80136:function(c,n,e){var r=e(26042),t=e(69396),l=e(99534),o=e(85893),i=e(67294),s=e(94184),a=e.n(s),u=e(58463),h=e(88301),v=e(55863),d=(0,i.createContext)(),f=function(c){var n=c.children,e=c.placement,r=(0,i.useState)(!1),t=r[0],l=r[1],s=(0,u.YF)({placement:e||"bottom-start",middleware:[(0,h.RR)(),(0,h.uY)({crossAxis:!0}),(0,h.cv)(6)]}),a=s.x,v=s.y,f=s.reference,x=s.floating,m=s.strategy,j=s.update,C=s.refs;return(0,o.jsx)(d.Provider,{value:{isActive:t,setIsActive:l,x:a,y:v,reference:f,floating:x,strategy:m,update:j,refs:C},children:(0,o.jsx)("div",{className:"relative",onKeyDown:function(c){"Escape"===c.key&&l(!1)},onBlur:function(c){c.currentTarget.contains(c.relatedTarget)||l(!1)},tabIndex:-1,children:n})})};f.Toggle=function(c){var n=c.children,e=c.className,s=c.disabled,a=(0,l.Z)(c,["children","className","disabled"]),u=(0,i.useContext)(d),h=u.isActive,v=u.setIsActive,f=u.reference;return(0,o.jsx)("button",(0,t.Z)((0,r.Z)({},a),{type:"button",ref:f,onClick:function(c){s||(c.stopPropagation(),v((function(c){return!c})))},"aria-haspopup":s?null:"menu","aria-expanded":s?null:h?"true":"false",className:e,disabled:s,children:n({isActive:h})}))},f.Menu=function(c){var n=c.children,e=c.className,s=(0,l.Z)(c,["children","className"]),u=(0,i.useContext)(d),h=u.isActive,f=u.x,x=u.y,m=u.floating,j=u.strategy,C=u.update,p=u.refs;return(0,i.useEffect)((function(){if(p.reference.current&&p.floating.current&&h)return h?(0,v.Me)(p.reference.current,p.floating.current,C):void 0}),[p.reference,p.floating,C,h]),(0,o.jsx)("div",(0,t.Z)((0,r.Z)({},s),{ref:m,style:{position:j,top:null!==x&&void 0!==x?x:"",left:null!==f&&void 0!==f?f:""},role:"menu",className:a()(h?"visible":"invisible","absolute z-50 rounded-md bg-white shadow-lg ring-1 ring-black/5",e),children:n}))},f.Item=function(c){var n=c.children,e=c.className,i=(0,l.Z)(c,["children","className"]);return(0,o.jsx)("div",(0,t.Z)((0,r.Z)({},i),{className:a()("rounded-lg text-gray-700 hover:bg-gray-100 active:bg-gray-200",e),children:n}))},n.Z=f},14977:function(c,n,e){e.d(n,{AQ:function(){return I},Ad:function(){return Q},BH:function(){return d},BN:function(){return Z},FD:function(){return p},Ge:function(){return m},Gw:function(){return E},Ho:function(){return P},IA:function(){return u},J7:function(){return N},Ls:function(){return b},MQ:function(){return z},QU:function(){return M},Qg:function(){return _},Rs:function(){return X},T3:function(){return R},VA:function(){return g},Vq:function(){return v},_5:function(){return F},_8:function(){return h},aM:function(){return L},aq:function(){return S},bW:function(){return W},e7:function(){return A},fX:function(){return w},hC:function(){return f},jh:function(){return k},nQ:function(){return D},og:function(){return H},sg:function(){return j},t:function(){return V},w1:function(){return q},yA:function(){return B},yR:function(){return y},zP:function(){return C},zp:function(){return x}});var r=e(26042),t=e(69396),l=e(99534),o=e(85893),i=e(94184),s=e.n(i),a={focusable:"false",xmlns:"http://www.w3.org/2000/svg"},u=function(c){var n=c.className,e=c.fillCurrent;return(0,o.jsxs)("svg",{className:n,role:"img","aria-label":"ResumeCat logo",xmlns:"http://www.w3.org/2000/svg",viewBox:"0 0 1200 281.8",children:[(0,o.jsx)("path",{d:"M16.7 216.6C-9.8 170.5 21.5 113 83 113.7c4 .1 8 .6 12 .8 2.3.1 4.8.5 6.9-.2s4.8-2.7 4.6-4a7.3 7.3 0 00-3.9-5.3c-3.5-1.3-7.5-1.4-11.3-2-8.7-1.5-16.8-4.5-22.4-11.7a34.4 34.4 0 01-5.5-11c-.5-1.9.8-5.2 2.3-6.4 3.8-3 4.8-6.7 5.6-11.1 1.4-7.3 2.7-14.9 5.9-21.4 5-10.1 14.1-15.7 25.3-17.5l4.8-1q-1.7-7.7-3.3-15c-1.8-7.8-.5-9.1 7.3-7 11.6 3.2 21.1 9.6 29.7 17.8 39.3 37.1 62.6 105.8 28.5 171.3-3.4 6.6-7 13.1-10.6 19.9 4.3.3 8.8.2 13 1a19.8 19.8 0 018.4 4c6.2 5.2 5.2 11.3-2 14.8-10.9 5.1-22.6 7.3-34.4 7.8-23 1-45.9 1.5-68.9 1.6-15.4.1-29.9-4.8-44.3-9.5-6.3-2.1-8.3-1.6-11.3 3.7s-2.5 11 1.8 14a31.2 31.2 0 0010.8 4.6c14.6 2.9 28.9.3 43.1-2.5 19.4-3.8 38.8-4.6 58.1-.3a41.3 41.3 0 0116 8.2c5.2 4.2 6.4 10.5 3.6 16.9s-8 7.9-13.9 7.6-9.8-.6-14.2-2.3c-21.6-8.1-43.6-9.8-66.4-7.2a81.6 81.6 0 01-38.8-4.6C6.3 262.8-.5 253.3 0 241.1c.5-9.5 4.9-16.8 12.8-22zM94.9 66.3c-2.5-2-4.7-4.4-5.3-4a10 10 0 00-4.3 5c-.3.7 2.7 3.7 3.9 3.5s3.2-2.3 5.7-4.5z",fill:e?"currentColor":"#805ad5"}),(0,o.jsx)("path",{d:"M372.2 205.5c0 .5-.7.8-2 1s-8.7.6-18.7.6a159.8 159.8 0 01-17.3-.6l-2.5-.5c-.4-.2-.8-.8-1.3-1.9-1-2.6-2.5-6.4-4.3-11.4s-6.6-16.1-12-28.8q-1.7-3.7-8.1-4.2c2 .2-1.4.2-10 .2-1 0-1.5 1.7-1.5 5s.4 11 1.2 19.8 1.3 15.4 1.3 19.8c0 1.2-.3 1.8-.9 2l-2.8.2c-3.8.3-9.8.4-17.9.4s-14.9-.2-16.8-.6-2.9-1.4-2.9-3c0-7.2.4-18 1.1-32.4s1-25.3 1-32.6q0-41.2-1.9-64.4v-1.4c0-1.1 1-1.8 3.1-2.2s12.1-.8 29.9-1.2c12-.3 21.6-.4 28.8-.4 14.8 0 26.9 3.4 36.3 10.1s15.9 18.4 15.9 32.7c0 9.5-1.4 17.1-4.1 22.7s-7.8 11.2-15.1 16.5c-1.5 1.1-2.3 2.1-2.3 3s4 8.1 11.9 24.5 11.9 25.4 11.9 27.1zm-41.1-87.6q0-11.8-7.8-16.5c-4-2.3-10.3-3.5-18.9-3.5-6.2 0-9.5 1-9.9 2.8s-.6 8.6-.6 19.2c0 1.5.1 3.7.1 6.6s.1 5.1.1 6.6 1.1.6 3.2.9a82.6 82.6 0 0012.5.9c14.2 0 21.3-5.6 21.3-17zM465.4 153.5c0 6.6-2.2 10.3-6.4 11.2l-20.2 2.2c-7.7.8-19.1 1.8-34.4 3 .9 4.2 3.7 7.4 8.3 9.6a28.4 28.4 0 0012.9 2.8 37.4 37.4 0 0017.5-4.7l7.4-4.7c1.4.7 3.7 4 6.9 10s4.8 9.8 4.8 11.4-.5 1.2-1.4 2.2c-8 8.6-20.3 12.8-37 12.8s-28-4.5-37.5-13.5-14.7-21.5-14.7-36.9 4.4-27.2 13.1-36.8 20.9-14.8 35.7-14.8a42.4 42.4 0 0131.9 13.7 45.4 45.4 0 0113.1 32.5zm-34.2-6a15.2 15.2 0 00-4.3-10.6 13.5 13.5 0 00-10.3-4.6 12 12 0 00-10.1 5.2 17.4 17.4 0 00-3.7 11.2c0 1.7.9 2.6 2.7 2.6 4.8 0 12.3-.7 22.5-2.2 2.1-.3 3.2-.9 3.2-1.6zM526.6 127.5a5.1 5.1 0 01-1.4 2.6 26.4 26.4 0 00-5.5-.6 17.5 17.5 0 00-9.7 2.5 9.2 9.2 0 00-4.7 8.3c0 2.3 1.7 5.2 5 8.7 5 5.3 8.1 8.8 9.3 10.6a28.4 28.4 0 015 15.9 31.9 31.9 0 01-2 10.6c-1.5 4.1-3.4 7.1-5.6 9a69.9 69.9 0 01-16.9 10.5c-7 3-13.4 4.5-19.3 4.5-1.3 0-4.2-3.5-8.7-10.6s-6.8-11.4-6.8-12.9.4-1 1.1-1.1l13.7-2.5c5.8-1.9 8.6-4.9 8.6-9s-1.6-6.2-4.9-10c-6-6.6-9.1-10-9.3-10.4a25.6 25.6 0 01-5-14.9c0-9.7 4.9-18 14.8-24.9a50.2 50.2 0 0128.5-9.1c1 0 3.6 3.5 7.7 10.5s6.1 11.1 6.1 12.3zM634.6 117.7c0 4.9-.2 12.1-.7 21.7s-.7 16.9-.7 21.7.2 11.7.5 21.1.5 16.4.5 21a3.1 3.1 0 01-2.5 3.3c-2.4.7-7.7 1-15.7 1a121.6 121.6 0 01-14.8-.6 2.9 2.9 0 01-2.4-2.4l-.5-5.8c-.4-3-.8-4.5-1.4-4.5q1.4 0-9.9 6.6c-7.5 4.5-14.3 6.7-20.4 6.7-17.2 0-27.5-7.8-30.7-23.4-1.4-7.2-2.1-17.7-2.1-31.4s1.2-26.6 3.6-35.2c.7-2.6 2.1-4 4-4h27.4c2 0 3 .9 3 2.6s-.1 1.1-.2 2a173.5 173.5 0 00-2.1 27c0 11.3.4 19 1.1 23.2 1.2 7.2 5.5 10.8 12.8 10.8q4.4 0 9.3-3.9c3.4-2.5 5.1-5.1 5.3-7.9s.2-18.7.2-49c0-2.1.1-3.4.4-3.8s1.6-1 3.6-1H631c1.9 0 3.1.5 3.4 1.5a12.1 12.1 0 01.2 2.7zM800.1 202.9c0 2.3-.9 3.5-2.9 3.8s-6.8.4-14.4.4-12.9-.2-14.9-.6-2.9-2-2.9-4.8.1-7.5.3-13.4.3-10.4.3-13.4c0-11.4-.2-19.5-.4-24.4-.4-7.7-4.1-11.6-11-11.6-3.1 0-6.2 1.3-9.2 3.9s-4.7 5.4-5 8.5-.4 10.8-.4 24c0 3.1.1 7.7.3 14s.3 10.9.3 14-1 3.2-2.8 3.2h-29.6c-1.9 0-2.8-1.3-2.8-4s.1-7.7.3-13.8.3-10.7.3-13.8 0-6.1-.2-11-.2-8.5-.2-11c0-9.3-3.5-14-10.6-14q-4.4 0-9.3 3.3c-3.6 2.5-5.5 5-5.5 7.7 0 5.9.1 14.7.1 26.5s.1 20.6.1 26.5q0 2.4-.6 3c-.3.4-1.4.7-3 .8s-7.5.4-13.8.4c-4.2 0-8.8-.2-14-.6a5 5 0 01-2.8-.7c-.3-.3-.4-1.3-.4-2.9 0-5.2 0-13 .1-23.4s.1-18.2.1-23.4a304.1 304.1 0 00-2.4-36c-.1-.8-.2-1.4-.2-1.8a2.2 2.2 0 011.4-2.2q2.1-.9 8.1-1.5t8.7-.9l7.7-2a30.8 30.8 0 017.7-1.4c1.2 0 1.9 2.3 2 6.8s.3 6.8.7 6.8a10.1 10.1 0 002.3-1.4c5.9-4.5 10.5-7.7 13.9-9.4a37.1 37.1 0 0116.3-3.6 32.5 32.5 0 0116 4 20.5 20.5 0 0110.2 12.6 41.2 41.2 0 0114.3-11.8 37.7 37.7 0 0117.7-4.8q12.9 0 21 6c6.1 4.5 9.1 10.9 9.1 19.2 0 3.5 0 8.7-.2 15.6s-.3 12.1-.3 15.6.1 10.2.3 18.5.2 14.4.2 18.5zM901.6 153.5c0 6.6-2.2 10.3-6.4 11.2l-20.2 2.2c-7.7.8-19.1 1.8-34.4 3 .9 4.2 3.7 7.4 8.3 9.6a28.4 28.4 0 0012.9 2.8 37.4 37.4 0 0017.5-4.7l7.4-4.7c1.4.7 3.7 4 6.9 10s4.8 9.8 4.8 11.4-.5 1.2-1.4 2.2c-8 8.6-20.3 12.8-37 12.8s-28-4.5-37.5-13.5-14.7-21.5-14.7-36.9 4.4-27.2 13.1-36.8 20.9-14.8 35.7-14.8a42.4 42.4 0 0131.9 13.7 45.4 45.4 0 0113.1 32.5zm-34.2-6a15.2 15.2 0 00-4.3-10.6 13.5 13.5 0 00-10.3-4.6 12 12 0 00-10.1 5.2 17.4 17.4 0 00-3.7 11.2c0 1.7.9 2.6 2.7 2.6 4.8 0 12.3-.7 22.5-2.2 2.1-.3 3.2-.9 3.2-1.6z",fill:e?"currentColor":"#2a4365"}),(0,o.jsx)("path",{d:"M1020.4 184.4c0 1.1-.6 2.4-2 4.1q-18 21.4-47.8 21.4c-20.3 0-36.7-6.9-49.4-20.8s-18.4-30.3-18.4-50.8 6-36.6 18-50.4 28.6-21.6 48-21.6c21.1 0 37.6 6.4 49.6 19.4a5.9 5.9 0 011.9 3.8c0 1.2-2.2 5.8-6.7 13.8s-7.4 12.4-8.6 13.4a2.6 2.6 0 01-1.9.7c-.4 0-2-1.3-4.9-3.9a53.5 53.5 0 00-10.4-7.3 35 35 0 00-16-3.9c-9.6 0-17.2 3.6-22.9 10.7s-7.9 14.9-7.9 24.7 2.6 18.2 7.9 24.9 13.3 10.9 22.9 10.9a35.9 35.9 0 0016.1-3.7 48.3 48.3 0 0010.2-6.9c2.8-2.4 4.4-3.7 4.8-3.7a2.7 2.7 0 011.9 1.1c1.1 1.2 3.9 5.3 8.5 12.2s7.1 11.2 7.1 11.9z",fill:e?"currentColor":"#805ad5"}),(0,o.jsx)("path",{d:"M1121.9 157.7c0 5 .2 12.4.8 22.3s.9 17.4.9 22.3c0 2.6-1.1 4-3.4 4.2-8.1.6-17.3.9-27.7.9-1.3 0-2.1-1.9-2.5-5.6s-1-5.7-1.5-5.7a6.5 6.5 0 00-2.1 1.6c-7.3 7.4-15.1 11-23.4 11-12.7 0-23.2-5-31.6-15s-11.8-20.6-11.8-33.6c0-15 4.1-27.1 12.2-36.3s20.1-14.3 34.8-14.3c10.2 0 18.3 3.6 24.2 10.8.3.3.5.5.7.5s1.2-1.6 2-4.8 1.6-4.7 2.7-4.7 7 .7 13.7 2a112 112 0 0113.9 3.4c1 .3 1.5.9 1.5 1.5a16.2 16.2 0 01-.3 2.1 212.9 212.9 0 00-3.1 37.4zm-31.5.6a19.1 19.1 0 00-5.2-13.8c-3.5-3.6-8-5.4-13.6-5.4s-10.2 1.8-13.6 5.4-5.2 8.2-5.2 13.8a18.5 18.5 0 005.5 13.5 17.7 17.7 0 0013.3 5.7 18 18 0 0013.5-5.4 19 19 0 005.3-13.8zM1200 177.9a77.1 77.1 0 01-.7 8.9 74.4 74.4 0 00-.7 8.7q0 2.9-.6 3.6a13.5 13.5 0 01-3.3 2.2 57.2 57.2 0 01-27.9 7q-28.2 0-28.2-21.6c0-4.3.2-10.8.5-19.4s.5-15.1.5-19.4-1.7-4.3-5-4.3h-2.6c-2.4 0-3.7-.9-3.7-2.6s.1-2.7.3-4.8.2-3.8.2-4.8-.1-3.4-.2-6.2-.3-4.9-.3-6.3 2.1-2 6.3-2.1c2.3-.1 3.6-.8 3.8-2a74.4 74.4 0 00.4-11.7c-.3-8.4-.4-12.4-.4-12q0-11.4 2.1-11.4a34.7 34.7 0 017.6 1.2 73.3 73.3 0 007.7 1.5c3.3.4 8.3 1.1 15 1.8 1.6.2 2.5.7 2.5 1.7 0 2.6-.3 6.5-.7 11.8s-.6 9.3-.6 11.9.9 4.8 2.8 4.8l10.4-.3 10.4-.3c1.5 0 2.2.5 2.2 1.5s-.2 3.7-.5 6.7-.5 5.3-.5 6.8 0 3.8.1 6.8.1 5.3.1 6.8-1 2.1-2.8 2.1l-6.6-.2h-13.9c-.9 0-1.4 1.4-1.4 4.3v6.9c0 3.1.1 5.5.1 7 0 5.4.6 9.2 1.8 11.3s5.2 4.2 10.4 4.2a35.5 35.5 0 007-1.1 28.7 28.7 0 016.4-1.2c1.3 0 2 .8 2 2.2z",fill:e?"currentColor":"#805ad5"})]})},h=function(c){return(0,o.jsxs)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 48 48",children:[(0,o.jsx)("path",{fill:"#FFC107",d:"M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12c0-6.627,5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24c0,11.045,8.955,20,20,20c11.045,0,20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z"}),(0,o.jsx)("path",{fill:"#FF3D00",d:"M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z"}),(0,o.jsx)("path",{fill:"#4CAF50",d:"M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36c-5.202,0-9.619-3.317-11.283-7.946l-6.522,5.025C9.505,39.556,16.227,44,24,44z"}),(0,o.jsx)("path",{fill:"#1976D2",d:"M43.611,20.083H42V20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571c0.001-0.001,0.002-0.001,0.003-0.002l6.19,5.238C36.971,39.205,44,34,44,24C44,22.659,43.862,21.35,43.611,20.083z"})]}))},v=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z"})}))},d=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 384 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M288 248v28c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-28c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12zm-12 72H108c-6.6 0-12 5.4-12 12v28c0 6.6 5.4 12 12 12h168c6.6 0 12-5.4 12-12v-28c0-6.6-5.4-12-12-12zm108-188.1V464c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V48C0 21.5 21.5 0 48 0h204.1C264.8 0 277 5.1 286 14.1L369.9 98c9 8.9 14.1 21.2 14.1 33.9zm-128-80V128h76.1L256 51.9zM336 464V176H232c-13.3 0-24-10.7-24-24V48H48v416h288z"})}))},f=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 576 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M402.6 83.2l90.2 90.2c3.8 3.8 3.8 10 0 13.8L274.4 405.6l-92.8 10.3c-12.4 1.4-22.9-9.1-21.5-21.5l10.3-92.8L388.8 83.2c3.8-3.8 10-3.8 13.8 0zm162-22.9l-48.8-48.8c-15.2-15.2-39.9-15.2-55.2 0l-35.4 35.4c-3.8 3.8-3.8 10 0 13.8l90.2 90.2c3.8 3.8 10 3.8 13.8 0l35.4-35.4c15.2-15.3 15.2-40 0-55.2zM384 346.2V448H64V128h229.8c3.2 0 6.2-1.3 8.5-3.5l40-40c7.6-7.6 2.2-20.5-8.5-20.5H48C21.5 64 0 85.5 0 112v352c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V306.2c0-10.7-12.9-16-20.5-8.5l-40 40c-2.2 2.3-3.5 5.3-3.5 8.5z"})}))},x=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M328 256c0 39.8-32.2 72-72 72s-72-32.2-72-72 32.2-72 72-72 72 32.2 72 72zm104-72c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72zm-352 0c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72z"})}))},m=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 448 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M432 32H312l-9.4-18.7A24 24 0 0 0 281.1 0H166.8a23.72 23.72 0 0 0-21.4 13.3L136 32H16A16 16 0 0 0 0 48v32a16 16 0 0 0 16 16h416a16 16 0 0 0 16-16V48a16 16 0 0 0-16-16zM53.2 467a48 48 0 0 0 47.9 45h245.8a48 48 0 0 0 47.9-45L416 128H32z"})}))},j=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{fill:"none",viewBox:"0 0 24 24",stroke:"currentColor",strokeWidth:2,children:(0,o.jsx)("path",{strokeLinecap:"round",strokeLinejoin:"round",d:"M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"})}))},C=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M290.74 93.24l128.02 128.02-277.99 277.99-114.14 12.6C11.35 513.54-1.56 500.62.14 485.34l12.7-114.22 277.9-277.88zm207.2-19.06l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.76 18.75-49.16 0-67.91z"})}))},p=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M296 384h-80c-13.3 0-24-10.7-24-24V192h-87.7c-17.8 0-26.7-21.5-14.1-34.1L242.3 5.7c7.5-7.5 19.8-7.5 27.3 0l152.2 152.2c12.6 12.6 3.7 34.1-14.1 34.1H320v168c0 13.3-10.7 24-24 24zm216-8v112c0 13.3-10.7 24-24 24H24c-13.3 0-24-10.7-24-24V376c0-13.3 10.7-24 24-24h136v8c0 30.9 25.1 56 56 56h80c30.9 0 56-25.1 56-56v-8h136c13.3 0 24 10.7 24 24zm-124 88c0-11-9-20-20-20s-20 9-20 20 9 20 20 20 20-9 20-20zm64 0c0-11-9-20-20-20s-20 9-20 20 9 20 20 20 20-9 20-20z"})}))},z=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 320 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M96 32H32C14.33 32 0 46.33 0 64v64c0 17.67 14.33 32 32 32h64c17.67 0 32-14.33 32-32V64c0-17.67-14.33-32-32-32zm0 160H32c-17.67 0-32 14.33-32 32v64c0 17.67 14.33 32 32 32h64c17.67 0 32-14.33 32-32v-64c0-17.67-14.33-32-32-32zm0 160H32c-17.67 0-32 14.33-32 32v64c0 17.67 14.33 32 32 32h64c17.67 0 32-14.33 32-32v-64c0-17.67-14.33-32-32-32zM288 32h-64c-17.67 0-32 14.33-32 32v64c0 17.67 14.33 32 32 32h64c17.67 0 32-14.33 32-32V64c0-17.67-14.33-32-32-32zm0 160h-64c-17.67 0-32 14.33-32 32v64c0 17.67 14.33 32 32 32h64c17.67 0 32-14.33 32-32v-64c0-17.67-14.33-32-32-32zm0 160h-64c-17.67 0-32 14.33-32 32v64c0 17.67 14.33 32 32 32h64c17.67 0 32-14.33 32-32v-64c0-17.67-14.33-32-32-32z"})}))},g=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{fill:"none",viewBox:"0 0 24 24",stroke:"currentColor",children:(0,o.jsx)("path",{strokeLinecap:"round",strokeLinejoin:"round",strokeWidth:2,d:"M19 9l-7 7-7-7"})}))},Z=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{fill:"none",viewBox:"0 0 24 24",stroke:"currentColor",children:(0,o.jsx)("path",{strokeLinecap:"round",strokeLinejoin:"round",strokeWidth:2,d:"M15 19l-7-7 7-7"})}))},M=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{fill:"none",viewBox:"0 0 24 24",stroke:"currentColor",children:(0,o.jsx)("path",{strokeLinecap:"round",strokeLinejoin:"round",strokeWidth:2,d:"M9 5l7 7-7 7"})}))},w=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 384 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M333.49 238a122 122 0 0 0 27-65.21C367.87 96.49 308 32 233.42 32H34a16 16 0 0 0-16 16v48a16 16 0 0 0 16 16h31.87v288H34a16 16 0 0 0-16 16v48a16 16 0 0 0 16 16h209.32c70.8 0 134.14-51.75 141-122.4 4.74-48.45-16.39-92.06-50.83-119.6zM145.66 112h87.76a48 48 0 0 1 0 96h-87.76zm87.76 288h-87.76V288h87.76a56 56 0 0 1 0 112z"})}))},H=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M48 48a48 48 0 1 0 48 48 48 48 0 0 0-48-48zm0 160a48 48 0 1 0 48 48 48 48 0 0 0-48-48zm0 160a48 48 0 1 0 48 48 48 48 0 0 0-48-48zm448 16H176a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16h320a16 16 0 0 0 16-16v-32a16 16 0 0 0-16-16zm0-320H176a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16h320a16 16 0 0 0 16-16V80a16 16 0 0 0-16-16zm0 160H176a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16h320a16 16 0 0 0 16-16v-32a16 16 0 0 0-16-16z"})}))},V=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M255.545 8c-66.269.119-126.438 26.233-170.86 68.685L48.971 40.971C33.851 25.851 8 36.559 8 57.941V192c0 13.255 10.745 24 24 24h134.059c21.382 0 32.09-25.851 16.971-40.971l-41.75-41.75c30.864-28.899 70.801-44.907 113.23-45.273 92.398-.798 170.283 73.977 169.484 169.442C423.236 348.009 349.816 424 256 424c-41.127 0-79.997-14.678-110.63-41.556-4.743-4.161-11.906-3.908-16.368.553L89.34 422.659c-4.872 4.872-4.631 12.815.482 17.433C133.798 479.813 192.074 504 256 504c136.966 0 247.999-111.033 248-247.998C504.001 119.193 392.354 7.755 255.545 8z"})}))},L=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{fill:"none",viewBox:"0 0 24 24",stroke:"currentColor",children:(0,o.jsx)("path",{strokeLinecap:"round",strokeLinejoin:"round",strokeWidth:2,d:"M6 18L18 6M6 6l12 12"})}))},B=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z"})}))},k=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 448 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M433.941 65.941l-51.882-51.882A48 48 0 0 0 348.118 0H176c-26.51 0-48 21.49-48 48v48H48c-26.51 0-48 21.49-48 48v320c0 26.51 21.49 48 48 48h224c26.51 0 48-21.49 48-48v-48h80c26.51 0 48-21.49 48-48V99.882a48 48 0 0 0-14.059-33.941zM266 464H54a6 6 0 0 1-6-6V150a6 6 0 0 1 6-6h74v224c0 26.51 21.49 48 48 48h96v42a6 6 0 0 1-6 6zm128-96H182a6 6 0 0 1-6-6V54a6 6 0 0 1 6-6h106v88c0 13.255 10.745 24 24 24h88v202a6 6 0 0 1-6 6zm6-256h-64V48h9.632c1.591 0 3.117.632 4.243 1.757l48.368 48.368a6 6 0 0 1 1.757 4.243V112z"})}))},q=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 448 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M268 416h24a12 12 0 0 0 12-12V188a12 12 0 0 0-12-12h-24a12 12 0 0 0-12 12v216a12 12 0 0 0 12 12zM432 80h-82.41l-34-56.7A48 48 0 0 0 274.41 0H173.59a48 48 0 0 0-41.16 23.3L98.41 80H16A16 16 0 0 0 0 96v16a16 16 0 0 0 16 16h16v336a48 48 0 0 0 48 48h288a48 48 0 0 0 48-48V128h16a16 16 0 0 0 16-16V96a16 16 0 0 0-16-16zM171.84 50.91A6 6 0 0 1 177 48h94a6 6 0 0 1 5.15 2.91L293.61 80H154.39zM368 464H80V128h288zm-212-48h24a12 12 0 0 0 12-12V188a12 12 0 0 0-12-12h-24a12 12 0 0 0-12 12v216a12 12 0 0 0 12 12z"})}))},y=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M432,320H400a16,16,0,0,0-16,16V448H64V128H208a16,16,0,0,0,16-16V80a16,16,0,0,0-16-16H48A48,48,0,0,0,0,112V464a48,48,0,0,0,48,48H400a48,48,0,0,0,48-48V336A16,16,0,0,0,432,320ZM488,0h-128c-21.37,0-32.05,25.91-17,41l35.73,35.73L135,320.37a24,24,0,0,0,0,34L157.67,377a24,24,0,0,0,34,0L435.28,133.32,471,169c15,15,41,4.5,41-17V24A24,24,0,0,0,488,0Z"})}))},A=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M326.612 185.391c59.747 59.809 58.927 155.698.36 214.59-.11.12-.24.25-.36.37l-67.2 67.2c-59.27 59.27-155.699 59.262-214.96 0-59.27-59.26-59.27-155.7 0-214.96l37.106-37.106c9.84-9.84 26.786-3.3 27.294 10.606.648 17.722 3.826 35.527 9.69 52.721 1.986 5.822.567 12.262-3.783 16.612l-13.087 13.087c-28.026 28.026-28.905 73.66-1.155 101.96 28.024 28.579 74.086 28.749 102.325.51l67.2-67.19c28.191-28.191 28.073-73.757 0-101.83-3.701-3.694-7.429-6.564-10.341-8.569a16.037 16.037 0 0 1-6.947-12.606c-.396-10.567 3.348-21.456 11.698-29.806l21.054-21.055c5.521-5.521 14.182-6.199 20.584-1.731a152.482 152.482 0 0 1 20.522 17.197zM467.547 44.449c-59.261-59.262-155.69-59.27-214.96 0l-67.2 67.2c-.12.12-.25.25-.36.37-58.566 58.892-59.387 154.781.36 214.59a152.454 152.454 0 0 0 20.521 17.196c6.402 4.468 15.064 3.789 20.584-1.731l21.054-21.055c8.35-8.35 12.094-19.239 11.698-29.806a16.037 16.037 0 0 0-6.947-12.606c-2.912-2.005-6.64-4.875-10.341-8.569-28.073-28.073-28.191-73.639 0-101.83l67.2-67.19c28.239-28.239 74.3-28.069 102.325.51 27.75 28.3 26.872 73.934-1.155 101.96l-13.087 13.087c-4.35 4.35-5.769 10.79-3.783 16.612 5.864 17.194 9.042 34.999 9.69 52.721.509 13.906 17.454 20.446 27.294 10.606l37.106-37.106c59.271-59.259 59.271-155.699.001-214.959z"})}))},b=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M304.083 405.907c4.686 4.686 4.686 12.284 0 16.971l-44.674 44.674c-59.263 59.262-155.693 59.266-214.961 0-59.264-59.265-59.264-155.696 0-214.96l44.675-44.675c4.686-4.686 12.284-4.686 16.971 0l39.598 39.598c4.686 4.686 4.686 12.284 0 16.971l-44.675 44.674c-28.072 28.073-28.072 73.75 0 101.823 28.072 28.072 73.75 28.073 101.824 0l44.674-44.674c4.686-4.686 12.284-4.686 16.971 0l39.597 39.598zm-56.568-260.216c4.686 4.686 12.284 4.686 16.971 0l44.674-44.674c28.072-28.075 73.75-28.073 101.824 0 28.072 28.073 28.072 73.75 0 101.823l-44.675 44.674c-4.686 4.686-4.686 12.284 0 16.971l39.598 39.598c4.686 4.686 12.284 4.686 16.971 0l44.675-44.675c59.265-59.265 59.265-155.695 0-214.96-59.266-59.264-155.695-59.264-214.961 0l-44.674 44.674c-4.686 4.686-4.686 12.284 0 16.971l39.597 39.598zm234.828 359.28l22.627-22.627c9.373-9.373 9.373-24.569 0-33.941L63.598 7.029c-9.373-9.373-24.569-9.373-33.941 0L7.029 29.657c-9.373 9.373-9.373 24.569 0 33.941l441.373 441.373c9.373 9.372 24.569 9.372 33.941 0z"})}))},N=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 448 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"})}))},_=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 448 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"})}))},S=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 448 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z"})}))},F=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 576 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M561.938 190.06L385.94 14.107C355.79-16.043 304 5.327 304 48.047v80.703C166.04 132.9 0 159.68 0 330.05c0 73.75 38.02 134.719 97.63 173.949 37.12 24.43 85.84-10.9 72.19-54.46C145.47 371.859 157.41 330.2 304 321.66v78.28c0 42.64 51.73 64.15 81.94 33.94l175.997-175.94c18.751-18.74 18.751-49.14.001-67.88zM352 400V272.09c-164.521 1.79-277.44 33.821-227.98 191.61C88 440 48 397.01 48 330.05c0-142.242 160.819-153.39 304-154.02V48l176 176-176 176z"})}))},R=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M256,8C119,8,8,119,8,256S119,504,256,504,504,393,504,256,393,8,256,8Zm92.49,313h0l-20,25a16,16,0,0,1-22.49,2.5h0l-67-49.72a40,40,0,0,1-15-31.23V112a16,16,0,0,1,16-16h32a16,16,0,0,1,16,16V256l58,42.5A16,16,0,0,1,348.49,321Z"})}))},W=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 640 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M320 400c-75.85 0-137.25-58.71-142.9-133.11L72.2 185.82c-13.79 17.3-26.48 35.59-36.72 55.59a32.35 32.35 0 0 0 0 29.19C89.71 376.41 197.07 448 320 448c26.91 0 52.87-4 77.89-10.46L346 397.39a144.13 144.13 0 0 1-26 2.61zm313.82 58.1l-110.55-85.44a331.25 331.25 0 0 0 81.25-102.07 32.35 32.35 0 0 0 0-29.19C550.29 135.59 442.93 64 320 64a308.15 308.15 0 0 0-147.32 37.7L45.46 3.37A16 16 0 0 0 23 6.18L3.37 31.45A16 16 0 0 0 6.18 53.9l588.36 454.73a16 16 0 0 0 22.46-2.81l19.64-25.27a16 16 0 0 0-2.82-22.45zm-183.72-142l-39.3-30.38A94.75 94.75 0 0 0 416 256a94.76 94.76 0 0 0-121.31-92.21A47.65 47.65 0 0 1 304 192a46.64 46.64 0 0 1-1.54 10l-73.61-56.89A142.31 142.31 0 0 1 320 112a143.92 143.92 0 0 1 144 144c0 21.63-5.29 41.79-13.9 60.11z"})}))},X=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 576 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M572.52 241.4C518.29 135.59 410.93 64 288 64S57.68 135.64 3.48 241.41a32.35 32.35 0 0 0 0 29.19C57.71 376.41 165.07 448 288 448s230.32-71.64 284.52-177.41a32.35 32.35 0 0 0 0-29.19zM288 400a144 144 0 1 1 144-144 143.93 143.93 0 0 1-144 144zm0-240a95.31 95.31 0 0 0-25.31 3.79 47.85 47.85 0 0 1-66.9 66.9A95.78 95.78 0 1 0 288 160z"})}))},I=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 512 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256zM57.71 192.1L67.07 209.4C75.36 223.9 88.99 234.6 105.1 239.2L162.1 255.7C180.2 260.6 192 276.3 192 294.2V334.1C192 345.1 198.2 355.1 208 359.1C217.8 364.9 224 374.9 224 385.9V424.9C224 440.5 238.9 451.7 253.9 447.4C270.1 442.8 282.5 429.1 286.6 413.7L289.4 402.5C293.6 385.6 304.6 371.1 319.7 362.4L327.8 357.8C342.8 349.3 352 333.4 352 316.1V307.9C352 295.1 346.9 282.9 337.9 273.9L334.1 270.1C325.1 261.1 312.8 255.1 300.1 255.1H256.1C245.9 255.1 234.9 253.1 225.2 247.6L190.7 227.8C186.4 225.4 183.1 221.4 181.6 216.7C178.4 207.1 182.7 196.7 191.7 192.1L197.7 189.2C204.3 185.9 211.9 185.3 218.1 187.7L242.2 195.4C250.3 198.1 259.3 195 264.1 187.9C268.8 180.8 268.3 171.5 262.9 165L249.3 148.8C239.3 136.8 239.4 119.3 249.6 107.5L265.3 89.12C274.1 78.85 275.5 64.16 268.8 52.42L266.4 48.26C262.1 48.09 259.5 48 256 48C163.1 48 84.4 108.9 57.71 192.1L57.71 192.1zM437.6 154.5L412 164.8C396.3 171.1 388.2 188.5 393.5 204.6L410.4 255.3C413.9 265.7 422.4 273.6 433 276.3L462.2 283.5C463.4 274.5 464 265.3 464 256C464 219.2 454.4 184.6 437.6 154.5H437.6z"})}))},E=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 640 414",children:(0,o.jsx)("path",{fill:"currentColor",transform:"scale(1,-1) translate(0,-400)",d:"M144 -32q-61 2 -102 42v0q-40 41 -42 102q1 48 27 84t69 52v8q2 68 47 113t113 47q45 -1 81 -22q36 -22 58 -58q23 16 53 16q41 -1 68 -28t28 -68q0 -18 -6 -35q44 -9 73 -44q28 -34 29 -81q-1 -54 -37 -91q-37 -36 -91 -37h-368v0zM436 204q8 9 8 20v0q0 11 -8 20 q-9 8 -20 8t-20 -8l-108 -108l-44 44q-9 8 -20 8t-20 -8q-8 -9 -8 -20t8 -20l64 -64q9 -8 20 -8t20 8l128 128v0z"})}))},Q=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 448 512",children:(0,o.jsx)("path",{fill:"currentColor",d:"M416 448H32c-17.69 0-32 14.31-32 32s14.31 32 32 32h384c17.69 0 32-14.31 32-32S433.7 448 416 448zM48 64.01H64v160c0 88.22 71.78 159.1 160 159.1s160-71.78 160-159.1v-160h16c17.69 0 32-14.32 32-32s-14.31-31.1-32-31.1l-96-.0049c-17.69 0-32 14.32-32 32s14.31 32 32 32H320v160c0 52.94-43.06 95.1-96 95.1S128 276.1 128 224v-160h16c17.69 0 32-14.31 32-32s-14.31-32-32-32l-96 .0049c-17.69 0-32 14.31-32 31.1S30.31 64.01 48 64.01z"})}))},D=function(c){return(0,o.jsx)("svg",(0,t.Z)((0,r.Z)({},a,c),{viewBox:"0 0 20 20",fill:"currentColor",children:(0,o.jsx)("path",{fillRule:"evenodd",d:"M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z",clipRule:"evenodd"})}))},P=function(c){var n=c.className,e=c.size,i=c.color,a=(0,l.Z)(c,["className","size","color"]),u={sm:"w-4",md:"w-5",lg:"w-10",xl:"w-14"},h={white:"text-white",primary:"text-primary-600"},v=u[e]||u.md,d=h[i]||h.primary;return(0,o.jsx)("div",(0,t.Z)((0,r.Z)({},a),{className:s()("m-auto",v,n),children:(0,o.jsx)("svg",{className:"animate-loading",viewBox:"25 25 50 50",children:(0,o.jsx)("circle",{className:s()("loading-icon-path stroke-current",d),cx:"50",cy:"50",r:"20",fill:"none",strokeWidth:"5",strokeMiterlimit:"10"})})}))}},13854:function(c,n,e){var r=e(85893),t=e(9008),l=e.n(t),o=e(79240),i=e(11163);n.Z=function(c){var n=c.children,e=c.title,t=c.description,s=c.openGraph,a=c.article,u=c.noIndex,h=(0,i.useRouter)();"".concat(e," | ").concat(o.X.name).length<=60&&(e="".concat(e," | ").concat(o.X.name));var v=o.X.origin+h.asPath;return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsxs)(l(),{children:[(0,r.jsx)("title",{children:e}),(0,r.jsx)("meta",{name:"description",content:t}),(0,r.jsx)("link",{href:v,rel:"canonical"}),(0,r.jsx)("link",{rel:"manifest",href:"/manifest.json"}),(0,r.jsx)("meta",{name:"theme-color",content:"#4F46E5"}),(0,r.jsx)("link",{rel:"apple-touch-icon",href:"https://cdn.resumecatstatic.com/logo/resumecat-mark-maskable-192x192.png"}),(0,r.jsx)("meta",{property:"og:title",content:e}),(0,r.jsx)("meta",{property:"og:description",content:t}),(0,r.jsx)("meta",{property:"og:site_name",content:o.X.name}),(0,r.jsx)("meta",{property:"og:type",content:(null===s||void 0===s?void 0:s.type)||"website"}),(0,r.jsx)("meta",{property:"og:url",content:v}),(0,r.jsx)("meta",{property:"og:image",content:(null===s||void 0===s?void 0:s.image)||"https://cdn.resumecatstatic.com/logo/resumecat-logo-1300x1300.png"}),(0,r.jsx)("meta",{name:"twitter:site",content:o.X.twitterHandle}),(0,r.jsx)("meta",{name:"twitter:card",content:"summary"}),u&&(0,r.jsx)("meta",{name:"robots",content:"noindex, nofollow"}),"article"==(null===s||void 0===s?void 0:s.type)&&(0,r.jsx)("meta",{property:"article:publisher",content:o.X.facebook}),(null===a||void 0===a?void 0:a.published_time)&&(0,r.jsx)("meta",{property:"article:published_time",content:a.published_time}),(null===a||void 0===a?void 0:a.modified_time)&&(0,r.jsx)("meta",{property:"article:modified_time",content:a.modified_time})]}),n]})}}}]);