window<-gtkWindow()
window["title"]<-"wnaetw GUI"
vbox <- gtkVBoxNew(FALSE,8)
vbox$setBorderWidth(24)
window$add(vbox)
hbox<-gtkHBoxNew(FALSE,8)
vbox$packStart(hbox,FALSE,FALSE,0)
label <- gtkLabelNew("Welcome Lazy Student!
                     Which file do you want to analyze ?")
hbox$packStart(label,FALSE,FALSE,0)
vbox$packStart(gtkHSeparatorNew(),FALSE,FALSE,0)
hbox <-gtkHBoxNew(FALSE,8)
vbox$packStart(hbox,FALSE,FALSE,0)
label<-gtkLabelNewWithMnemonic("_File name")
hbox$packStart(label,FALSE,FALSE,0)
filename<-gtkEntryNew()
filename$setWidthChars(50)
label$setMnemonicWidget(filename)
hbox$packStart(filename,FALSE,FALSE,0)
buttonOpen<-gtkButtonNewFromStock("gtk-open")
gSignalConnect(buttonOpen,"clicked",openFile)
hbox$packStart(buttonOpen,FALSE,FALSE,0)