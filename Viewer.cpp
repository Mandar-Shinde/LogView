#include <QtGui>
#include "Viewer.h"

Viewer::Viewer(QWidget *parent) :
		QWidget(parent) {

	setupUi(this);
	l_tag->selectAll();

	// find module tag
	findModulesTag();

	// update file
	loadLogFile();

	//connect(ui_l_tag, SIGNAL(itemDoubleClicked(QListWidgetItem*)), this,
	//		SLOT(slot_tag_click(QListWidgetItem*)));

	connect(l_tag, SIGNAL(itemSelectionChanged()), this,
			SLOT(slot_itemSelectionChanged()));

	connect( bu_reset, SIGNAL(clicked()), this, SLOT(slot_reset_click()));

	mtimerFileLoader = new QTimer(this);
	connect(mtimerFileLoader, SIGNAL(timeout()), this, SLOT(slot_reset_click()));
	mtimerFileLoader->start(15000);

}

// create filter of items to show
void Viewer::slot_itemSelectionChanged()
{
	// clear filter
	mTagModuleShowFilter.clear();

	mtimerFileLoader->setInterval((sb_time->value()* 1000));

	// update filter
	for(int i=0;i < l_tag->count();i++)
	{
		 QListWidgetItem* item = l_tag->item(i);
		 if(item->isSelected()==true)
			 mTagModuleShowFilter.append(item->text());
	}
}

// reset view
void Viewer::slot_reset_click()
{
	// update textfile
	loadLogFile();

	// do not apply any filter if no option selected
	if(l_tag->selectedItems().count()!=0)
	{
	// apply modules filter
	foreach(QString item,mTagModule)
		if(mTagModuleShowFilter.contains(item)==false)
			Filter(item);

	e_view->verticalScrollBar()->setValue(e_view->verticalScrollBar()->maximum());

	// to color or delete
	if(rb_color->isChecked()==true)
		misTextColor=true;
	else
		misTextColor=false;

	}
}

void Viewer::findModulesTag() {
	QFile inputFile(PLOG_FILE);
	inputFile.open(QIODevice::ReadOnly);
	QTextStream in(&inputFile);
	QMessageBox msgBox;

	int i = 0;
	while (!in.atEnd()) {
		i = 0;
		foreach(QString item,in.readLine().split("[")){
		switch(i)
		{
			case 0:  	// date time
			break;
			case 1:		// thread id
			break;
			case 2:		// mode
			break;
			case 3:		// module
			QString tag=item.split("]").at(0);
			if(mTagModule.contains(tag,Qt::CaseInsensitive)== false)
			mTagModule.append(tag);
			break;
		}
		i++;
	}
}
	// insert item in ui list
	for (int i = 0; i < mTagModule.count(); i++) {
		l_tag->insertItem(i, mTagModule.at(i));
	}

}

void Viewer::loadLogFile() {

	// update fileinput
	QFile inputFile(PLOG_FILE);
//	if(QFile::exists(PLOG_FILE)==false)
//	{
//		return;
//	}
	inputFile.open(QIODevice::ReadOnly);
	QTextStream in(&inputFile);
	e_view->clear();
	e_view->append(in.readAll());

	// update document
	document = e_view->document();
}

void Viewer::Filter(QString token)
{
	QTextCursor highlightCursor(document);
	QTextCursor cursor(document);

	cursor.beginEditBlock();

	QTextCharFormat plainFormat(highlightCursor.charFormat());
	QTextCharFormat colorFormat = plainFormat;
	colorFormat.setForeground(Qt::gray);

	// select and remove
	while (!highlightCursor.isNull() && !highlightCursor.atEnd())
	{
		highlightCursor = document->find(token, highlightCursor,QTextDocument::FindCaseSensitively);

		if (!highlightCursor.isNull()) {
			highlightCursor.select(QTextCursor::BlockUnderCursor);

			if(misTextColor)
				highlightCursor.mergeCharFormat(colorFormat);
			else
				highlightCursor.removeSelectedText();
		}

	}
	cursor.endEditBlock();
}
