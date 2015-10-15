
aaManageEvent(window,"load",setUp);

function Tabs () {
   current=0;
   tab = new Array();
   panels = new Array();
   this.addTab = function (tabItem) {
                          var index = tab.length;
                          tab[tab.length] = tabItem;
                          aaManageEvent(tabItem,"click",function() { 
                                 tabs.showPanel(index);});
                          };
   this.addPanel = function (panel) {
                          panels[panels.length] = panel;
                         };
   this.showPanel = function (index) {
                     panels[current].style.display="none";
                     tab[current].style.backgroundColor="#fff";
                     tab[index].style.backgroundColor="#ffc";
                     panels[index].style.display="block";
                     current = index;
                     };
   }

tabs = new Tabs();
           
function setUp() {
   var divs = document.getElementsByTagName('div');
   var tabCount = 0;
   for (var i = 0; i < divs.length; i++) {
       if (divs[i].className == 'name') {
             tabs.addTab(divs[i]);
        } else if (divs[i].className == 'content') {
             tabs.addPanel(divs[i]);
       }
   }
   tabs.showPanel(0);
}
