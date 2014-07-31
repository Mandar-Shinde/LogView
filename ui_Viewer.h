/********************************************************************************
** Form generated from reading UI file 'Viewer.ui'
**
** Created: Wed Jul 30 14:26:29 2014
**      by: Qt User Interface Compiler version 4.6.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_VIEWER_H
#define UI_VIEWER_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QGridLayout>
#include <QtGui/QGroupBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QListWidget>
#include <QtGui/QPushButton>
#include <QtGui/QRadioButton>
#include <QtGui/QSpinBox>
#include <QtGui/QTextEdit>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Form
{
public:
    QGridLayout *gridLayout;
    QGridLayout *gridLayout1;
    QPushButton *bu_reset;
    QGroupBox *groupBox;
    QRadioButton *rb_color;
    QRadioButton *rb_delete;
    QSpinBox *sb_time;
    QLabel *label;
    QHBoxLayout *horizontalLayout_2;
    QListWidget *l_tag;
    QTextEdit *e_view;

    void setupUi(QWidget *Form)
    {
        if (Form->objectName().isEmpty())
            Form->setObjectName(QString::fromUtf8("Form"));
        Form->resize(807, 600);
        Form->setMinimumSize(QSize(800, 600));
        QFont font;
        font.setFamily(QString::fromUtf8("MS Shell Dlg 2"));
        Form->setFont(font);
        gridLayout = new QGridLayout(Form);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout1 = new QGridLayout();
#ifndef Q_OS_MAC
        gridLayout1->setSpacing(6);
#endif
#ifndef Q_OS_MAC
        gridLayout1->setContentsMargins(0, 0, 0, 0);
#endif
        gridLayout1->setObjectName(QString::fromUtf8("gridLayout1"));
        bu_reset = new QPushButton(Form);
        bu_reset->setObjectName(QString::fromUtf8("bu_reset"));
        bu_reset->setMinimumSize(QSize(0, 0));
        bu_reset->setMaximumSize(QSize(100, 40));

        gridLayout1->addWidget(bu_reset, 0, 0, 1, 1);

        groupBox = new QGroupBox(Form);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        groupBox->setMinimumSize(QSize(0, 50));
        rb_color = new QRadioButton(groupBox);
        rb_color->setObjectName(QString::fromUtf8("rb_color"));
        rb_color->setGeometry(QRect(14, 18, 150, 18));
        rb_delete = new QRadioButton(groupBox);
        rb_delete->setObjectName(QString::fromUtf8("rb_delete"));
        rb_delete->setGeometry(QRect(176, 18, 93, 18));
        rb_delete->setChecked(true);
        sb_time = new QSpinBox(groupBox);
        sb_time->setObjectName(QString::fromUtf8("sb_time"));
        sb_time->setGeometry(QRect(598, 16, 69, 22));
        sb_time->setMinimum(15);
        sb_time->setMaximum(3600);
        label = new QLabel(groupBox);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(481, 20, 113, 13));

        gridLayout1->addWidget(groupBox, 0, 1, 1, 1);


        gridLayout->addLayout(gridLayout1, 0, 0, 1, 1);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        l_tag = new QListWidget(Form);
        l_tag->setObjectName(QString::fromUtf8("l_tag"));
        l_tag->setMaximumSize(QSize(150, 16777215));
        l_tag->setSelectionMode(QAbstractItemView::MultiSelection);

        horizontalLayout_2->addWidget(l_tag);

        e_view = new QTextEdit(Form);
        e_view->setObjectName(QString::fromUtf8("e_view"));

        horizontalLayout_2->addWidget(e_view);


        gridLayout->addLayout(horizontalLayout_2, 1, 0, 1, 1);


        retranslateUi(Form);

        QMetaObject::connectSlotsByName(Form);
    } // setupUi

    void retranslateUi(QWidget *Form)
    {
        Form->setWindowTitle(QApplication::translate("Form", "Find Text", 0, QApplication::UnicodeUTF8));
        bu_reset->setText(QApplication::translate("Form", "&Reset", 0, QApplication::UnicodeUTF8));
        groupBox->setTitle(QApplication::translate("Form", "Filter", 0, QApplication::UnicodeUTF8));
        rb_color->setText(QApplication::translate("Form", "Color Out", 0, QApplication::UnicodeUTF8));
        rb_delete->setText(QApplication::translate("Form", "Delete", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("Form", "update in ( Sec)", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class Form: public Ui_Form {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_VIEWER_H
