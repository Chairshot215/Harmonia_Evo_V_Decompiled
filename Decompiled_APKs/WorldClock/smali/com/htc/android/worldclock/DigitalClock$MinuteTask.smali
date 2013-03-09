.class Lcom/htc/android/worldclock/DigitalClock$MinuteTask;
.super Ljava/util/TimerTask;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinuteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DigitalClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/android/worldclock/DigitalClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/DigitalClock;Lcom/htc/android/worldclock/DigitalClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DigitalClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DigitalClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 80
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #getter for: Lcom/htc/android/worldclock/DigitalClock;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/DigitalClock;->access$200(Lcom/htc/android/worldclock/DigitalClock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method
