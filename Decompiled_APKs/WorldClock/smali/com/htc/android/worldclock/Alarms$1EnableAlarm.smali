.class Lcom/htc/android/worldclock/Alarms$1EnableAlarm;
.super Ljava/lang/Object;
.source "Alarms.java"

# interfaces
.implements Lcom/htc/android/worldclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Alarms;->_enableAlarmInternal(Landroid/content/Context;IZLcom/htc/android/worldclock/Alarms$AlarmData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableAlarm"
.end annotation


# instance fields
.field public mAlarmTime:J

.field public mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

.field public mDescription:Ljava/lang/String;

.field public mHour:I

.field public mMinutes:I

.field public mSnoozed:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 599
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
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
    .line 612
    iput p3, p0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mHour:I

    .line 613
    iput p4, p0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mMinutes:I

    .line 614
    iput-wide p5, p0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mAlarmTime:J

    .line 615
    iput-object p7, p0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 616
    iput-object p9, p0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mDescription:Ljava/lang/String;

    .line 617
    iput-boolean p11, p0, Lcom/htc/android/worldclock/Alarms$1EnableAlarm;->mSnoozed:Z

    .line 618
    return-void
.end method
