#include "backend.h"
#include "QRandomGenerator"

BackEnd::BackEnd(QObject *parent) :
    QObject(parent)
{

}

int BackEnd::randomNum(int num)
{
    // 1 for rock
    // 2 for paper
    // 3 for scissor

   m_playerOne = QRandomGenerator::global()->bounded(1,4);

   if (m_playerOne == 2 && num == 1)
   {
       m_WhoWin = 2;
   }
   if (m_playerOne == 2 && num == 3)
   {
       m_WhoWin = 1;
   }



   if (m_playerOne == 1 && num == 2)
   {
       m_WhoWin = 1;
   }
   if (m_playerOne == 1 && num == 3)
   {
       m_WhoWin = 2;
   }



   if (m_playerOne == 3 && num == 1)
   {
       m_WhoWin = 1;
   }
   if (m_playerOne == 3 && num == 2)
   {
       m_WhoWin = 2;
   }


   if (m_playerOne == num)
   {
       m_WhoWin = 0;
   }

   return m_WhoWin;
}

int BackEnd::playerOne() const
{
    return m_playerOne;
}

void BackEnd::setPlayerOne(int newPlayerOne)
{
    if (m_playerOne == newPlayerOne)
        return;
    m_playerOne = newPlayerOne;
    emit playerOneChanged();
}

int BackEnd::playerTwo() const
{
    return m_playerTwo;
}

void BackEnd::setPlayerTwo(int newPlayerTwo)
{
    if (m_playerTwo == newPlayerTwo)
        return;
    m_playerTwo = newPlayerTwo;
    emit playerTwoChanged();
}
