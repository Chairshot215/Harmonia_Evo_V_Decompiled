.class Lcom/htc/android/worldclock/WorldClock$MinuteTask;
.super Ljava/util/TimerTask;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinuteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/WorldClock;Lcom/htc/android/worldclock/WorldClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/WorldClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/WorldClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1066
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1067
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #calls: Lcom/htc/android/worldclock/WorldClock;->refreshTime()V
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClock;->access$1200(Lcom/htc/android/worldclock/WorldClock;)V

    .line 1068
    return-void
.end method
