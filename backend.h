#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <qqml.h>

class BackEnd: public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(int playerOne READ playerOne WRITE setPlayerOne NOTIFY playerOneChanged)
    Q_PROPERTY(int playerTwo READ playerTwo WRITE setPlayerTwo NOTIFY playerTwoChanged)

public:
    explicit BackEnd(QObject *parent = nullptr);
    Q_INVOKABLE int randomNum(int num);


    int playerOne() const;
    void setPlayerOne(int newPlayerOne);

    int playerTwo() const;
    void setPlayerTwo(int newPlayerTwo);

signals:
    void playerOneChanged();

    void playerTwoChanged();

private:
    int m_playerOne;
    int m_playerTwo;
    int m_WhoWin;

};

#endif // BACKEND_H
