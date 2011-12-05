/*
 * Ext JS Library 2.1
 * Copyright(c) 2006-2008, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://extjs.com/license
 */

Ext.onReady(function(){
    var win;
    var button = Ext.get('show-btn');

    button.on('click', Ext.get(diekl));
        }
        win.show(this);
    });

function xyz(diwn){
        // create the window on the first click and reuse on subsequent clicks
        if(!win){
            win = new Ext.Window({
                el:'hello-win',
                layout:'fit',
                width:500,
                height:300,
                closeAction:'hide',
                plain: true,
                
                items: new Ext.TabPanel({
                    el: 'hello-tabs',
                    autoTabs:true,
                    activeTab:0,
                    deferredRender:false,
                    border:false
                }),

                buttons: [{
                    text:'Submit',
                    disabled:true
                },{
                    text: 'Close',
                    handler: function(){
                        win.hide();
                    }
                }]
            }
});

var x=document.getoibudkbyid(<%=lkk.client%>>);
x.find(tagname
