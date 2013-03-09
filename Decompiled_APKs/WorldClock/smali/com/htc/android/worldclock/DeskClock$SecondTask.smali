.class Lcom/htc/android/worldclock/DeskClock$SecondTask;
.super Ljava/util/TimerTask;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecondTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/DeskClock;Lcom/htc/android/worldclock/DeskClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeskClock$SecondTask;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mPluggedIn:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1800(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$000(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mTouching:[Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1900(Lcom/htc/android/worldclock/DeskClock;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$2000(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #setter for: Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/DeskClock;->access$2002(Lcom/htc/android/worldclock/DeskClock;Z)Z

    .line 338
    :goto_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$2100(Lcom/htc/android/worldclock/DeskClock;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$SecondTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/DeskClock;->mShowColon:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/DeskClock;->access$2002(Lcom/htc/android/worldclock/DeskClock;Z)Z

    goto :goto_1
.end method
