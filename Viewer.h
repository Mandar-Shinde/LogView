
#ifndef VIEWER_H
#define VIEWER_H

#include <QWidget>
#include <qlistwidget.h>
#include "ui_Viewer.h"


#define PLOG_FILE "./log/input2.log"

using namespace Ui;

class Viewer : public QWidget, public Ui_Form
{
    Q_OBJECT

public:
    Viewer(QWidget *parent = 0);

private slots:
    void slot_itemSelectionChanged();
    void slot_reset_click();
    
private:
    void loadLogFile();
    void findModulesTag();
    void Filter(QString text);

    QStringList mTagModule;
    QStringList mTagModuleShowFilter;

    bool misTextColor;

    QTimer *mtimerFileLoader;

    QTextDocument *document;

};
#endif
