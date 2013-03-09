.class Lcom/htc/android/worldclock/TimerKlaxon$3;
.super Ljava/lang/Object;
.source "TimerKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerKlaxon;->enableKiller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerKlaxon;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerKlaxon$3;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 195
    const-string v0, "*********** Timer killer triggered *************"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon$3;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    #getter for: Lcom/htc/android/worldclock/TimerKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerKlaxon;->access$100(Lcom/htc/android/worldclock/TimerKlaxon;)Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon$3;->this$0:Lcom/htc/android/worldclock/TimerKlaxon;

    #getter for: Lcom/htc/android/worldclock/TimerKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerKlaxon;->access$100(Lcom/htc/android/worldclock/TimerKlaxon;)Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;->onKilled()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method
