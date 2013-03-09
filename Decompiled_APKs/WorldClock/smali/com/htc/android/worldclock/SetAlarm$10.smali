.class Lcom/htc/android/worldclock/SetAlarm$10;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/SetAlarm;
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
    .line 478
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$10;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 481
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 482
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$10;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mReportAlarmCalled:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$1300(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$10;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mIslaunchRingToneDialogActivity:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$2300(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    sget-boolean v1, Lcom/htc/android/worldclock/Global;->NON_MULTI_RINGTONE_SELECTION:Z

    if-eqz v1, :cond_2

    .line 492
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/SetAlarm$10$1;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SetAlarm$10$1;-><init>(Lcom/htc/android/worldclock/SetAlarm$10;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 509
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.worldclock"

    const-string v2, "com.htc.android.worldclock.SoundSelect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v1, "FunctionType"

    const-string v2, "Alarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$10;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mAlertSound:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/android/worldclock/SetAlarm;->access$2100(Lcom/htc/android/worldclock/SetAlarm;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/SetAlarm$10;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/SetAlarm;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    goto :goto_0
.end method
