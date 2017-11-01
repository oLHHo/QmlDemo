import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background.'))
        }
    }

    LButton {
        id: selfbutton
        anchors.centerIn: parent
        width: 100
        height: 30
    }

    LAnimationText {
        id: animationText
        anchors.left: parent
        width: 50
        height: 50

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log(qsTr('Clicked on Button. Text: "' + parent.parent.textEdit.text + '"'))
            }
        }
    }

    LPhoto {
        id: photo
        anchors.bottom: animationText
        width: 50
        height: 50
    }
}
