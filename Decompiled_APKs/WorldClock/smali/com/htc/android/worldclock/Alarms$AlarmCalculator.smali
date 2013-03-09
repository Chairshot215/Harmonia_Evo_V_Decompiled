.class Lcom/htc/android/worldclock/Alarms$AlarmCalculator;
.super Ljava/lang/Object;
.source "Alarms.java"

# interfaces
.implements Lcom/htc/android/worldclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Alarms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmCalculator"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field public mMinAlert:J

.field public mMinIdx:I

.field mSnoozed:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 706
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 707
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mMinAlert:J

    .line 708
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mMinIdx:I

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mSnoozed:Z

    return-void
.end method


# virtual methods
.method public getAlert()J
    .locals 2

    .prologue
    .line 716
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 717
    iget-wide v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mMinAlert:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 727
    iget-object v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 721
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 722
    iget v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mMinIdx:I

    return v0
.end method

.method public getSnoozed()Z
    .locals 1

    .prologue
    .line 731
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 732
    iget-boolean v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mSnoozed:Z

    return v0
.end method

.method public reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
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
    .line 740
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 741
    if-eqz p2, :cond_1

    .line 743
    invoke-static {p3, p4, p7}, Lcom/htc/android/worldclock/Alarms;->calculateAlarm(IILcom/htc/android/worldclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 744
    .local v1, atTime:J
    if-eqz p11, :cond_0

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 747
    .local v3, now:J
    cmp-long v5, p5, v3

    if-lez v5, :cond_0

    cmp-long v5, p5, v1

    if-gez v5, :cond_0

    .line 748
    move-wide v1, p5

    .line 753
    .end local v3           #now:J
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportAlarm : idx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", minutes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", calc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 756
    iget-wide v5, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mMinAlert:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 757
    iput p1, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mMinIdx:I

    .line 758
    iput-wide v1, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mMinAlert:J

    .line 759
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mDescription:Ljava/lang/String;

    .line 760
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmCalculator;->mSnoozed:Z

    .line 763
    .end local v1           #atTime:J
    :cond_1
    return-void
.end method
