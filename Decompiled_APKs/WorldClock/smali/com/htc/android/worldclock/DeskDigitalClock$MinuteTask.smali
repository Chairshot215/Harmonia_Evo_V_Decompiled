.class Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;
.super Ljava/util/TimerTask;
.source "DeskDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinuteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskDigitalClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/DeskDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/DeskDigitalClock;Lcom/htc/android/worldclock/DeskDigitalClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DeskDigitalClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 74
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    #getter for: Lcom/htc/android/worldclock/DeskDigitalClock;->mHandy:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->access$100(Lcom/htc/android/worldclock/DeskDigitalClock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    return-void
.end method
