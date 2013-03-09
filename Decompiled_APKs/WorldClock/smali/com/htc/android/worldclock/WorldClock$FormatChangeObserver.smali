.class Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 1
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    .line 1094
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1095
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1096
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1100
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1101
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #getter for: Lcom/htc/android/worldclock/WorldClock;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClock;->access$500(Lcom/htc/android/worldclock/WorldClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/WorldClock;->access$702(Lcom/htc/android/worldclock/WorldClock;Z)Z

    .line 1110
    :goto_0
    return-void

    .line 1105
    :cond_0
    const-string v0, "onFormatChange +"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    const/16 v1, 0x70

    #calls: Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/WorldClock;->access$1400(Lcom/htc/android/worldclock/WorldClock;I)V

    .line 1109
    :cond_1
    const-string v0, "onFormatChange -"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
