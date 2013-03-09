.class Lcom/htc/android/worldclock/AlarmKlaxon$3;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmKlaxon;->enableKiller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmKlaxon$3;->this$0:Lcom/htc/android/worldclock/AlarmKlaxon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    const-wide/32 v0, 0x927c0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 272
    const-string v0, "*********** Alarm killer triggered *************"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon$3;->this$0:Lcom/htc/android/worldclock/AlarmKlaxon;

    #getter for: Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmKlaxon;->access$000(Lcom/htc/android/worldclock/AlarmKlaxon;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon$3;->this$0:Lcom/htc/android/worldclock/AlarmKlaxon;

    #getter for: Lcom/htc/android/worldclock/AlarmKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmKlaxon;->access$100(Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon$3;->this$0:Lcom/htc/android/worldclock/AlarmKlaxon;

    #getter for: Lcom/htc/android/worldclock/AlarmKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmKlaxon;->access$100(Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;->onKilled()V

    .line 277
    :cond_0
    monitor-exit v1

    .line 280
    :goto_0
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method
