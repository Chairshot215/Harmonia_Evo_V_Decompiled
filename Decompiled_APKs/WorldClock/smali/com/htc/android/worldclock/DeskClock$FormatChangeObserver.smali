.class Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 1
    .parameter

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    .line 2008
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2009
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2010
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 2014
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2015
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$000(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2016
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/worldclock/DeskClock;->mTimeChanged:Z
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/DeskClock;->access$3802(Lcom/htc/android/worldclock/DeskClock;Z)Z

    .line 2025
    :goto_0
    return-void

    .line 2019
    :cond_0
    const-string v1, "onFormatChange +"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2020
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2021
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2022
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$3700(Lcom/htc/android/worldclock/DeskClock;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2024
    const-string v1, "onFormatChange -"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
