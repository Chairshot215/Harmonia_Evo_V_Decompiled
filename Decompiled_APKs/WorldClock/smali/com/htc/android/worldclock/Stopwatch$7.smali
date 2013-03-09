.class Lcom/htc/android/worldclock/Stopwatch$7;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Stopwatch;->updateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x12c

    .line 490
    invoke-static {}, Lcom/htc/android/worldclock/Stopwatch;->access$1300()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 491
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 493
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    .local v0, alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 495
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 496
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 497
    const v1, 0x7f080016

    new-instance v2, Lcom/htc/android/worldclock/Stopwatch$7$1;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/Stopwatch$7$1;-><init>(Lcom/htc/android/worldclock/Stopwatch$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 504
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->dismissHtcAlartDialog()V
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$1400(Lcom/htc/android/worldclock/Stopwatch;)V

    .line 505
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$1502(Lcom/htc/android/worldclock/Stopwatch;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 506
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$1500(Lcom/htc/android/worldclock/Stopwatch;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 508
    .end local v0           #alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$502(Lcom/htc/android/worldclock/Stopwatch;Z)Z

    .line 509
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v2, 0x2

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$802(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 510
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v2, 0x3

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$302(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 511
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mPauseStart:J
    invoke-static {v2, v3, v4}, Lcom/htc/android/worldclock/Stopwatch;->access$1702(Lcom/htc/android/worldclock/Stopwatch;J)J

    move-result-wide v2

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapPauseStart:J
    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/Stopwatch;->access$1602(Lcom/htc/android/worldclock/Stopwatch;J)J

    .line 512
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/Stopwatch;->updateButton()V

    .line 513
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/Stopwatch;->updateWatch()V

    .line 514
    invoke-static {}, Lcom/htc/android/worldclock/Stopwatch;->access$1300()I

    move-result v1

    if-gt v1, v5, :cond_1

    .line 515
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/Stopwatch;->updateLapWatch()V

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->releaseWakeLock()V
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$1800(Lcom/htc/android/worldclock/Stopwatch;)V

    .line 518
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v2, 0x0

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$502(Lcom/htc/android/worldclock/Stopwatch;Z)Z

    .line 519
    return-void
.end method
