.class Lcom/htc/android/worldclock/DigitalClock$UIHandler;
.super Landroid/os/Handler;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DigitalClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/android/worldclock/DigitalClock$UIHandler;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/DigitalClock;Lcom/htc/android/worldclock/DigitalClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DigitalClock$UIHandler;-><init>(Lcom/htc/android/worldclock/DigitalClock;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 71
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 72
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$UIHandler;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #calls: Lcom/htc/android/worldclock/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DigitalClock;->access$100(Lcom/htc/android/worldclock/DigitalClock;)V

    .line 73
    return-void
.end method
