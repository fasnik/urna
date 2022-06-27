import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.3

Window {
    width: 1420
    height: 800
    visible: true
    title: qsTr("Hello World")

    Connections{
        target:backend
        function onSendChapa(s){
            tela.text = s
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
    id: rectangle1
    width: 1420
    height: 800
    color: "#050a30"


    Grid {
        id: grid
        anchors.fill: parent
        rows: 6
        columns: 2

        Rectangle {
            id: rectangle
            width: 806
            height: 461
            color: "#477ec8e3"
            border.color: "#0000ff"
            border.width: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 70

            Text {
                id: tela
                width: 708
                height: 425
                color: "#7ec8e3"
                text: qsTr("Use os botoes ao lado para escolhera chapa. Observe se a chapa  selecionada esta sendo exibida na tela e clique em 'Confirmar' para finalizar a votaçao.")
                anchors.verticalCenter: parent.verticalCenter
                font.letterSpacing: 0.572
                font.pixelSize: 45
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.underline: false
                font.bold: true
                font.family: "Times New Roman"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: confima
            height: 170
            text: qsTr("Confirmar")
            anchors.left: rectangle.right
            anchors.right: parent.right
//            anchors.top: button3.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 47
            anchors.rightMargin: 30
            anchors.leftMargin: 70
            anchors.topMargin: 120
            font.pointSize: 30
            onClicked: {
                backend.getConfirma()
                popup.visible = true
            }
        }


        Button {
            id: btn_love
            height: 100
            text: qsTr("L. O. V. E")
            anchors.left: rectangle.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 240
            anchors.rightMargin: 30
            anchors.leftMargin: 30
            font.pointSize: 30
            onClicked: {
                backend.getChapaLove()
            }
        }


        Button {
            id: btn_chapa2
            height: 100
            text: qsTr("PODERIO ESTUDANTIL")
            anchors.left: rectangle.right
            anchors.right: parent.right
            anchors.top: btn_love.bottom
            anchors.topMargin: 47
            anchors.rightMargin: 30
            anchors.leftMargin: 30
            font.pointSize: 30
            onClicked: {
                backend.getChapa2()
            }
        }
    }

    Image {
        id: image
        y: 676
        width: 324
        height: 88
        anchors.left: parent.left
        source: "logo_rj.png"
        anchors.leftMargin: 70
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text2
        x: 328
        y: 8
        width: 796
        height: 76
        color: "#ffffff"
        text: qsTr("GREMIO 2022")
        font.letterSpacing: 10.588
        font.pixelSize: 40
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text4
        x: 80
        y: 73
        width: 1302
        height: 76
        color: "#ffffff"
        text: qsTr("CIEP 368 JOAO CONCEICAO CANUTO")
        font.letterSpacing: 10.588
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Image {
        id: image1
        x: 1
        y: 670
        width: 172
        height: 100
        anchors.left: image.right
        anchors.right: parent.right
        source: "seeduc_logo.webp"
        anchors.rightMargin: 549
        anchors.leftMargin: 310
        fillMode: Image.PreserveAspectFit
    }
}
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
