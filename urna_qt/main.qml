import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

}

/*Rectangle {
    id: rectangle1
    width: window.width
    height: window.height
    color: "#050a30"

    GridLayout {
        id: grid
        anchors.fill: parent
        rows: 6
        columns: 2

        Text {
        id: text2
        color: "#ffffff"
        text: qsTr("GREMIO 2022")
        font.letterSpacing: 10.588
        font.pixelSize: 40
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        // x: 328
        // y: 8
        // width: 796
        // height: 76
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
    }


        Rectangle {
            id: rectangle
            width: 806
            height: 461
            color: "#477ec8e3"
            border.color: "#0000ff"
            border.width: 10
            // anchors.verticalCenter: parent.verticalCenter
            // anchors.left: parent.left
            // anchors.leftMargin: 70

            Text {
                id: tela
                width: 708
                height: 425
                color: "#7ec8e3"
                text: qsTr("Use os botoes ao lado para escolhera chapa. Observe se a chapa  selecionada esta sendo exibida na tela e clique em 'Confirmar' para finalizar a votaçao.")
                font.letterSpacing: 0.572
                font.pixelSize: 45
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.underline: false
                font.bold: true
                font.family: "Times New Roman"
                // anchors.verticalCenter: parent.verticalCenter
                // anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: confima
            height: 170
            text: qsTr("Confirmar")
            font.pointSize: 30
            // anchors.left: rectangle.right
            // anchors.right: parent.right
            // anchors.bottom: parent.bottom
            // anchors.bottomMargin: 47
            // anchors.rightMargin: 30
            // anchors.leftMargin: 70
            // anchors.topMargin: 120
            onClicked: {
                backend.getConfirma()
                popup.visible = true
            }
        }


        Button {
            id: btn_love
            height: 100
            text: qsTr("L. O. V. E")
            font.pointSize: 30
            // anchors.left: rectangle.right
            // anchors.right: parent.right
            // anchors.top: parent.top
            // anchors.topMargin: 240
            // anchors.rightMargin: 30
            // anchors.leftMargin: 30
            onClicked: {
                backend.getChapaLove()
            }
        }


        Button {
            id: btn_chapa2
            height: 100
            text: qsTr("PODERIO ESTUDANTIL")
            font.pointSize: 30
            // anchors.left: rectangle.right
            // anchors.right: parent.right
            // anchors.top: btn_love.bottom
            // anchors.topMargin: 47
            // anchors.rightMargin: 30
            // anchors.leftMargin: 30
            onClicked: {
                backend.getChapa2()
            }
        }
    }*/

    Image {
        id: image
        y: 676
        width: 324
        height: 88
        source: "logo_rj.png"
        fillMode: Image.PreserveAspectFit
        // anchors.leftMargin: 70
        // anchors.left: parent.left
    }



    Image {
        id: image1
        x: 1
        y: 670
        width: 172
        height: 100
        source: "seeduc_logo.webp"
        fillMode: Image.PreserveAspectFit
        // anchors.left: image.right
        // anchors.right: parent.right
        // anchors.rightMargin: 549
        // anchors.leftMargin: 310
    }
}


