.class Lcom/htc/android/worldclock/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$1;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 99
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$1;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateTimer()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$000(Lcom/htc/android/worldclock/Timer;)V

    .line 100
    return-void
.end method
