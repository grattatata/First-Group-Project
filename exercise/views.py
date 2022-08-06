from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse

from exercise.models import Session, RecommendSession, BodyPart

# Create your views here.
def exercise(request):
    sessions = Session.objects.all()
    recommendSessions = RecommendSession.objects.all()
    bodyParts = BodyPart.objects.all()

    return render(
        request,
        "exercise/session.html",
        {
            "sessions": sessions,
            "recommendSessions": recommendSessions,
            "bodyParts": bodyParts,
        },
    )


@login_required
@csrf_exempt
def showSessions(request):
    if request.method == "POST":
        getId = request.POST.get("getId")
        action = request.POST.get("action")

        if action == "recommend":
            recommendSession = RecommendSession.objects.get(pk=getId)
            sessions = recommendSession.session.all()
        else:
            sessions = Session.objects.all().filter(bodyPart=getId)
    else:
        return JsonResponse({"error": "error"}, status=400)

    return JsonResponse([session.serialize() for session in sessions], safe=False)


@login_required
@csrf_exempt
def storeSession(request):
    if request.method == "POST":
        sessionName = request.POST.get("sessionName")
        session = Session.objects.get(name=sessionName)
    else:
        return JsonResponse({"error": "error"}, status=400)

    return JsonResponse([session.serialize()], safe=False)


@login_required
@csrf_exempt
def startSession(request):
    if request.method == "POST":
        sessionName = request.POST.get("sessionName")
        sessionBodyPart = request.POST.get("sessionBodyPart")
        sessionCnt = request.POST.get("sessionCnt")
        sessionSet = request.POST.get("sessionSet")

        return JsonResponse(
            {
                "sessionName": sessionName,
                "sessionBodyPart": sessionBodyPart,
                "sessionCnt": sessionCnt,
                "sessionSet": sessionSet,
                "status": 201,
            },
            status=201,
        )
    else:
        return JsonResponse({"error": "error"}, status=400)


def sessionPractice(request):
    return render(request, "exercise/sessionPractice.html")


@login_required
@csrf_exempt
def recordSession(request):
    if request.method == "POST":
        sessionRecordNames = request.POST.get("sessionRecordNames")
        sessionRecordBodyParts = request.POST.get("sessionRecordBodyParts")
        sessionRecordCnts = request.POST.get("sessionRecordCnts")
        sessionRecordSets = request.POST.get("sessionRecordSets")
        sessionRecordEachTimes = request.POST.get("sessionRecordEachTimes")
        totalTime = request.POST.get("totalTime")
        date = request.POST.get("date")

        return JsonResponse(
            {
                "sessionRecordNames": sessionRecordNames,
                "sessionRecordBodyParts": sessionRecordBodyParts,
                "sessionRecordCnts": sessionRecordCnts,
                "sessionRecordSets": sessionRecordSets,
                "sessionRecordEachTimes": sessionRecordEachTimes,
                "totalTime": totalTime,
                "date": date,
            },
            status=201,
        )
    else:
        return JsonResponse({"error": "error"}, status=400)
