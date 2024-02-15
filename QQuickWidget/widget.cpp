#include "widget.h"
#include "ui_widget.h"
#include <QQmlContext>
#include <QDebug>

widget::widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::widget)
{
    ui->setupUi(this);
    ui->quickWidget->rootContext()->setContextProperty("mainWidget", this);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/widget.qml")));
}

widget::~widget()
{
    delete ui;
}

void widget::printTextColor(const QString &text)
{
    ui->lineEdit->setText(text);
}

