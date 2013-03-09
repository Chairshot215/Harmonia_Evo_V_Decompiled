.class final Lcom/htc/app/HtcShutdownThread$4;
.super Ljava/lang/Object;
.source "HtcShutdownThread.java"

# interfaces
.implements Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/HtcShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/app/HtcShutdownThread;->access$302(Z)Z

    return-void
.end method

.method public onReady()V
    .locals 2

    :goto_0
    invoke-static {}, Lcom/htc/app/HtcShutdownThread;->access$200()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method
