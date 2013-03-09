.class Lcom/htc/android/worldclock/TimerAlert$4;
.super Ljava/lang/Object;
.source "TimerAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimerAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerAlert$4;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 246
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 247
    .local v0, up:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 260
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerAlert$4;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #getter for: Lcom/htc/android/worldclock/TimerAlert;->mIsKilled:Z
    invoke-static {v3}, Lcom/htc/android/worldclock/TimerAlert;->access$300(Lcom/htc/android/worldclock/TimerAlert;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/android/worldclock/TimerAlert$4;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #getter for: Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I
    invoke-static {v3}, Lcom/htc/android/worldclock/TimerAlert;->access$400(Lcom/htc/android/worldclock/TimerAlert;)I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 261
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerAlert$4;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #setter for: Lcom/htc/android/worldclock/TimerAlert;->mIsDismissed:Z
    invoke-static {v3, v2}, Lcom/htc/android/worldclock/TimerAlert;->access$002(Lcom/htc/android/worldclock/TimerAlert;Z)Z

    .line 262
    iget-object v2, p0, Lcom/htc/android/worldclock/TimerAlert$4;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #calls: Lcom/htc/android/worldclock/TimerAlert;->StopTimer()V
    invoke-static {v2}, Lcom/htc/android/worldclock/TimerAlert;->access$100(Lcom/htc/android/worldclock/TimerAlert;)V

    .line 263
    iget-object v2, p0, Lcom/htc/android/worldclock/TimerAlert$4;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #calls: Lcom/htc/android/worldclock/TimerAlert;->releaseLocks()V
    invoke-static {v2}, Lcom/htc/android/worldclock/TimerAlert;->access$200(Lcom/htc/android/worldclock/TimerAlert;)V

    .line 264
    iget-object v2, p0, Lcom/htc/android/worldclock/TimerAlert$4;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/TimerAlert;->finish()V

    :cond_0
    move v2, v1

    .line 268
    :sswitch_0
    return v2

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 246
    goto :goto_0

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method
