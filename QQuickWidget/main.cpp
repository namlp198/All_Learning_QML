#include "widget.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    widget mainWidget;
    mainWidget.show();
    return a.exec();
}
