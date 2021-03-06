import bottle
from bottle import route, run, view
#from datetime import datetime as dt
from random import random
import os
from paste import httpserver


import random

times = ["утром", "днем", "вечером", "ночью", "после обеда", "перед сном"]
advices = ["ожидайте", "предостерегайтесь", "будьте открыты для"]
promises = ["гостей из забытого прошлого", "встреч со старыми знакомыми",
            "неожиданного праздника", "приятных перемен"]


def generate_predictions(total_num=6, num_sentences=2):
    predictions = []

    for i in range(total_num):
        forecast = ""
        for j in range(num_sentences):
            t = random.choice(times)
            a = random.choice(advices)
            p = random.choice(promises)

            full_sentence = f"{t.title()} {a} {p}."
            if j != num_sentences - 1:
                full_sentence = full_sentence + " "

            forecast = forecast + full_sentence

        predictions.append(forecast)

    return list(predictions)

cwd = os.getcwd() + os.sep + "view" + os.sep + "index.tpl"
@route("/")
@view(cwd)
def index():

  predictions = generate_predictions()

  return {
    "predictions1": f"{predictions[0]}",
    "predictions2": f"{predictions[1]}",
    "predictions3": f"{predictions[2]}",
    "predictions4": f"{predictions[3]}",
    "predictions5": f"{predictions[4]}",
    "predictions6": f"{predictions[5]}",
  }

@route("/api/test")
def api_test():
    return {"test_passed": True}



application = bottle.default_app()
httpserver.serve(application, host='0.0.0.0', port=8035)


