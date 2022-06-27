# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys
import sqlite3

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal
from PySide2.QtQuickControls2 import QQuickStyle
# from PySide6.QtQml import QmlElement

from pygame import mixer

def ProcessaVoto(chapa):
    global conn
#    with conn:
    sql = "INSERT INTO votacao(voto) VALUES(?)"
    cur = conn.cursor()
    cur.execute(sql, chapa)
    conn.commit()


class BackEnd(QObject):
    def __init__(self):
        QObject.__init__(self)
        self.voto_atual = None

    sendChapa = Signal(str)

    @Slot()
    def getConfirma(self):
        if self.voto_atual:
            ProcessaVoto([self.voto_atual])
            mixer.music.play()
            self.voto_atual = None
            print("terminou o voto")
            self.sendChapa.emit("Use os botoes ao lado para escolhera chapa. Observe se a chapa  selecionada esta sendo exibida na tela e clique em 'Confirmar' para finalizar a votaçao.")

    @Slot()
    def getChapaLove(self):
        self.voto_atual = "love"
        self.sendChapa.emit("Vocẽ escolheu a chapa L.O.V.E. \n Clique em Confirmar para finalizar")


    @Slot()
    def getChapa2(self):
        self.voto_atual = "poderio"
        self.sendChapa.emit("Vocẽ escolheu a chapa PODERIO ESTUDANTIL. \n Clique em Confirmar para finalizar")


if __name__ == "__main__":
    mixer.init()
    mixer.music.load("somUrna.mp3")
    conn = sqlite3.connect('urna.db')
    app = QGuiApplication(sys.argv)
    QQuickStyle.setStyle("Material")
    engine = QQmlApplicationEngine()
    backend = BackEnd()
    engine.rootContext().setContextProperty('backend', backend)
    engine.load(os.fspath(Path(__file__).resolve().parent / "main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
