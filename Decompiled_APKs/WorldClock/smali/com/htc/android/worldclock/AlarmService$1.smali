.class Lcom/htc/android/worldclock/AlarmService$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Lcom/htc/android/worldclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$1;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "alarmtime"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"
    .parameter "snoozed"

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 61
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$1;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #setter for: Lcom/htc/android/worldclock/AlarmService;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    invoke-static {v0, p7}, Lcom/htc/android/worldclock/AlarmService;->access$002(Lcom/htc/android/worldclock/AlarmService;Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 62
    return-void
.end method
