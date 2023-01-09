import QtQuick 2.15
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.11

Window {
    id: window
    visible: true
    title: qsTr("Urna")
    minimumWidth : 800
    minimumHeight : 600

    Timer{
        id: timer
        interval:3000
    }
    
   
    Connections{
        target:backend
        function onSendChapa(s){
            tela.text = s
            }

        function onIsVoteValid(b){
            popup.visible= b;
            timer.running= true;
        }

    }

    Connections {
        target:timer 
         function onTriggered(timer){
            popup.visible= false;
        }
    }



    
    Popup {

           id: popup
           anchors.centerIn: parent
           width: 600
           modal:true
           height: 300
           enabled: true
           visible: false
                   closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

           Text {
               id: t
               text: qsTr("Obrigado \npela sua votação")
               font.pixelSize: 45
               anchors.centerIn: parent
               wrapMode: Text.Wrap
           }
    }

    Rectangle {
        id: rect1
        anchors.fill: parent
        width: window.width
        height: window.height
        color: "#050a30"

        GridLayout {
            id: row1
            anchors.fill: parent
            columns:4

            // Linha 1
            Text {
            id: text2
            color: "#ffffff"
            text: qsTr("GREMIO 2022")
            font.letterSpacing: 10.588
            font.pixelSize: 40
            Layout.alignment: Qt.AlignCenter
            Layout.columnSpan:4
            
            }

            // Linha 2
            Text {
            id: text4
            color: "#ffffff"
            text: qsTr("CIEP 368 JOAO CONCEICAO CANUTO")
            font.letterSpacing: 10.588
            font.pixelSize: 30
            Layout.alignment: Qt.AlignCenter
            Layout.columnSpan:4
            Layout.bottomMargin: 20
           
            }
            
            // Linhas 3
            Rectangle {
                id: rectangle
                color: "#477ec8e3"
                border.color: "#0000ff"
                border.width: 10
                radius: 20
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.columnSpan:3
                Layout.leftMargin : 10
        
                Text {
                    id: tela
                    anchors.fill:parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "#7ec8e3"
                    text: qsTr("Use os botoes ao lado para escolhera chapa.\n\n" + 
                            "Observe se a chapa selecionada esta sendo exibida na"+ 
                            "tela e clique em 'Confirmar' para finalizar a votaçao.")
                    font.letterSpacing: 0.572
                    font.pixelSize: 30
                    Layout.leftMargin : 10
                    wrapMode: Text.Wrap
                    font.bold: true
                    font.family: "Times New Roman"
                    }
            }
            
            ColumnLayout{
                Layout.rightMargin : 10
                Layout.leftMargin : 10
                Layout.maximumWidth: 0.2*window.width
                Layout.minimumHeight: 0.6*window.height
                Layout.alignment: Qt.AlignRight
            
                Button {
                    
                    id: btn_love
                    text: qsTr("L. O. V. E")
                    font.pointSize: 15
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                     background: Rectangle {
                        // color: "#00ff1a"
                        opacity: enabled ? 1 : 0.3
                        radius: 20
                    }

                    onClicked: {
                        backend.getChapaLove()
                    }
                }

                Button {
                    id: btn_chapa2
                    text: qsTr("PODERIO ESTUDANTIL")
                    font.pointSize: 15
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    background: Rectangle {
                        // color: "#00ff1a"
                        opacity: enabled ? 1 : 0.3
                        radius: 20
                    }
                    onClicked: {
                        backend.getChapa2()
                    }
                }
            }
 
            // Linha 4
            RowLayout{
                id: last_row
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.bottomMargin: 10
                Layout.fillWidth: true
                Layout.columnSpan:3

                Image {
                    id: logo_seeduc
                    source: "seeduc_logo.webp"
                    sourceSize.height: 80
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Image.AlignLeft
                }
                Image {
                    id: logo_rj
                    source: "logo_rj.png"
                    sourceSize.height: 80
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Image.AlignRight
                   
                }
            }
        
            Button {
                id: confima
                text: qsTr("Confirmar")
                
                Layout.rightMargin : 10
                Layout.leftMargin : 10
                Layout.maximumWidth: 0.2*window.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pointSize: 30

                background: Rectangle {
                color: "#00ff1a"
                opacity: enabled ? 1 : 0.3
                radius: 20
                }
                onClicked: {
                    backend.getConfirma()
                }
            }
            
            
    
        } 
   
    }

}

