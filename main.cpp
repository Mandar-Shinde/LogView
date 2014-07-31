/****************************************************************************
	Author :    Mandar Shinde
	Program:	LogViewer App
****************************************************************************/

#include <QApplication>
#include "Viewer.h"
#include <qmessagebox.h>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    Viewer *window = new Viewer;
    window->showMaximized();
    return app.exec();
}
