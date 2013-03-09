.class public Lcom/android/providers/calendar/CalendarProviderIntentService;
.super Landroid/app/IntentService;
.source "CalendarProviderIntentService.java"


# static fields
.field private static final REMOVE_ALARMS_VALUE:Ljava/lang/String; = "removeAlarms"

.field private static final TAG:Ljava/lang/String; = "CalendarProvider2"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "CalendarProviderIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x3

    .line 33
    const-string v3, "CalendarProvider2"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received Intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 38
    const-string v3, "CalendarProvider2"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Intent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider2;->getInstance()Lcom/android/providers/calendar/CalendarProvider2;

    move-result-object v1

    .line 45
    .local v1, provider:Lcom/android/providers/calendar/CalendarProvider2;
    const-string v3, "removeAlarms"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 46
    .local v2, removeAlarms:Z
    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->runScheduleNextAlarm(ZLcom/android/providers/calendar/CalendarProvider2;)V

    .line 48
    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarAlarmManager;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarAlarmManager;->releaseScheduleNextAlarmWakeLock()V

    goto :goto_0
.end method
