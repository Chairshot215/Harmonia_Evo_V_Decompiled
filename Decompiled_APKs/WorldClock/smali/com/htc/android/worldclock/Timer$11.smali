.class Lcom/htc/android/worldclock/Timer$11;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Timer;->updateTimerProvider()V
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
    .line 840
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$11;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 843
    new-instance v0, Lcom/htc/android/worldclock/Timers$TimerData;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Timers$TimerData;-><init>()V

    .line 844
    .local v0, data:Lcom/htc/android/worldclock/Timers$TimerData;
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$11;->this$0:Lcom/htc/android/worldclock/Timer;

    iget v1, v1, Lcom/htc/android/worldclock/Timer;->mState:I

    iput v1, v0, Lcom/htc/android/worldclock/Timers$TimerData;->state:I

    .line 845
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$11;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mExpiredTime:J
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$2700(Lcom/htc/android/worldclock/Timer;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/android/worldclock/Timers$TimerData;->timeExpired:J

    .line 846
    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$11;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v1, v0}, Lcom/htc/android/worldclock/Timers;->setTimerData(Landroid/content/Context;Lcom/htc/android/worldclock/Timers$TimerData;)V

    .line 847
    return-void
.end method
