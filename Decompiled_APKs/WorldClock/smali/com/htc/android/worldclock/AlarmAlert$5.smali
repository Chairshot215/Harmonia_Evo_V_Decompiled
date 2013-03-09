.class Lcom/htc/android/worldclock/AlarmAlert$5;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmAlert;
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
    .line 291
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKilled()V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKilled,mIsActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsActive:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$1000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-static {v0}, Lcom/htc/android/worldclock/AlertUtils;->sendAlarmTimeout(Landroid/content/Context;)V

    .line 300
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$1100(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->dismissNotification(Landroid/content/Context;I)V

    .line 303
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x3

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$1202(Lcom/htc/android/worldclock/AlarmAlert;I)I

    .line 304
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mSnoozed:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$1302(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 305
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$402(Lcom/htc/android/worldclock/AlarmAlert;I)I

    .line 306
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->StopAlarm()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$1400(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 308
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$5;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$5$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$5$1;-><init>(Lcom/htc/android/worldclock/AlarmAlert$5;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method
