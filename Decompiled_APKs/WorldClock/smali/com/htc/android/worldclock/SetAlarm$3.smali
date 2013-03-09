.class Lcom/htc/android/worldclock/SetAlarm$3;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->onReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mDestroyed:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$400(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->updateTime()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$800(Lcom/htc/android/worldclock/SetAlarm;)V

    .line 260
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->updateDescription()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$900(Lcom/htc/android/worldclock/SetAlarm;)V

    .line 261
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->updateRepeat()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1000(Lcom/htc/android/worldclock/SetAlarm;)V

    .line 262
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mVibrateCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$1200(Lcom/htc/android/worldclock/SetAlarm;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mVibrate:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$1100(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/SetAlarm;->mReportAlarmCalled:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/SetAlarm;->access$1302(Lcom/htc/android/worldclock/SetAlarm;Z)Z

    .line 264
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$3;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$700(Lcom/htc/android/worldclock/SetAlarm;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
