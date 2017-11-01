import QtQuick 2.0

Rectangle {
    color: "gray"
    width: 100
    height: 100

    property int anValue: 0
    SequentialAnimation on anValue{
        loops: Animation.Infinite

        PropertyAnimation {
            to: 150
            duration: 10000
        }
        PropertyAnimation {
            x: 0
            to: 0
            duration: 10000
        }
    }

    Text {
        anchors.centerIn: parent
        color: "blue"
        text: anValue
    }

}
