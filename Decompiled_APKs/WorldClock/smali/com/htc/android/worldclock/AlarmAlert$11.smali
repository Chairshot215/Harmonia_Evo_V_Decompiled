.class Lcom/htc/android/worldclock/AlarmAlert$11;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->snooze(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 629
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-static {v2, v4}, Lcom/htc/android/worldclock/AlertUtils;->sendAlarmTimeout(Landroid/content/Context;I)V

    .line 632
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v3, 0x0

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/AlarmAlert;->access$1702(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 633
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->releaseLocks()V
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1600(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 637
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mSnoozed:Z
    invoke-static {v2, v4}, Lcom/htc/android/worldclock/AlarmAlert;->access$1302(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 638
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->StopAlarm()V
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1400(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0xea60

    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mSnoozeMinutes:I
    invoke-static {v5}, Lcom/htc/android/worldclock/AlarmAlert;->access$2100(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 643
    .local v0, snoozeTarget:J
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmAlert;->access$1100(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/worldclock/AlarmAlert;->access$700(Lcom/htc/android/worldclock/AlarmAlert;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lcom/htc/android/worldclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;ILjava/lang/String;J)V

    .line 645
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-static {v2}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 646
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$11;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmAlert;->access$1100(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->snoozeNotification(Landroid/content/Context;IJ)V

    .line 648
    return-void
.end method
