import QtQuick 2.0

Rectangle {
    //id: rect
    color: "steelblue"
    border.color: "darkcyan"
    border.width: 2
    radius: 5

    MouseArea{
        //anchors.fill: rect
        anchors.fill: parent

        onPressed: {
            //rect.color = "lightsteelblue"
            parent.color = "lightsteelblue"
        }

        onReleased: {
            //rect.color = "steelblue"
            parent.color = "steelblue"
        }
    }
}
