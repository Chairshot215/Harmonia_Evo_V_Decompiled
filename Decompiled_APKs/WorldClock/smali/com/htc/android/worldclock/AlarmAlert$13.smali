.class Lcom/htc/android/worldclock/AlarmAlert$13;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 741
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "event"

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 744
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 745
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmAlert;->access$000(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    :goto_0
    :sswitch_0
    return v2

    .line 748
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDispatchKeyEvent code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v1

    .line 750
    .local v0, up:Z
    :goto_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 771
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mState:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1200(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$400(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 772
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$600(Lcom/htc/android/worldclock/AlarmAlert;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->dismissHtcAlartDialog()V
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1500(Lcom/htc/android/worldclock/AlarmAlert;)V

    .line 777
    :cond_1
    invoke-static {}, Lcom/htc/android/worldclock/AlarmAlert;->access$2300()Z

    move-result v2

    if-nez v2, :cond_2

    .line 778
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmAlert;->access$2302(Z)Z

    .line 780
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-static {v3}, Lcom/htc/android/worldclock/AlertUtils;->getSnoozeMinute(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/worldclock/AlarmAlert;->snooze(ZI)V

    .line 782
    :cond_2
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    :cond_3
    move v2, v1

    .line 785
    goto :goto_0

    .end local v0           #up:Z
    :cond_4
    move v0, v2

    .line 749
    goto :goto_1

    .line 766
    .restart local v0       #up:Z
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mState:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$1200(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #getter for: Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$400(Lcom/htc/android/worldclock/AlarmAlert;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 767
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert$13;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->doActionVolumeKey()V
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmAlert;->access$2200(Lcom/htc/android/worldclock/AlarmAlert;)V

    :cond_5
    move v2, v1

    .line 769
    goto :goto_0

    .line 750
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_1
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
