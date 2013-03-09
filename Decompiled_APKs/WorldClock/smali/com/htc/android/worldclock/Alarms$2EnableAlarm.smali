.class Lcom/htc/android/worldclock/Alarms$2EnableAlarm;
.super Ljava/lang/Object;
.source "Alarms.java"

# interfaces
.implements Lcom/htc/android/worldclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V
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
    .line 652
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
    .line 665
    iput p3, p0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mHour:I

    .line 666
    iput p4, p0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mMinutes:I

    .line 667
    iput-wide p5, p0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mAlarmTime:J

    .line 668
    iput-object p7, p0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 669
    iput-object p9, p0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mDescription:Ljava/lang/String;

    .line 670
    iput-boolean p11, p0, Lcom/htc/android/worldclock/Alarms$2EnableAlarm;->mSnoozed:Z

    .line 671
    return-void
.end method
