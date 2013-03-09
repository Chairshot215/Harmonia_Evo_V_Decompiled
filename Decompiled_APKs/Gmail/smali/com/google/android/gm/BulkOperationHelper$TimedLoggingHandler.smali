.class Lcom/google/android/gm/BulkOperationHelper$TimedLoggingHandler;
.super Landroid/os/Handler;
.source "BulkOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/BulkOperationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimedLoggingHandler"
.end annotation


# instance fields
.field private final mDispatchMessageLogThreshold:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 0
    .parameter "looper"
    .parameter "logThreshold"

    .prologue
    .line 790
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 791
    iput p2, p0, Lcom/google/android/gm/BulkOperationHelper$TimedLoggingHandler;->mDispatchMessageLogThreshold:I

    .line 792
    return-void
.end method

.method static getHandler(Landroid/os/Looper;I)Landroid/os/Handler;
    .locals 2
    .parameter "looper"
    .parameter "logThreshold"

    .prologue
    .line 780
    const-string v0, "Gmail_BOH"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    new-instance v0, Lcom/google/android/gm/BulkOperationHelper$TimedLoggingHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/BulkOperationHelper$TimedLoggingHandler;-><init>(Landroid/os/Looper;I)V

    .line 783
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    .line 799
    const-wide/16 v2, 0x0

    .line 800
    .local v2, startTime:J
    const-string v4, "Gmail_BOH"

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 803
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 804
    const-string v4, "Gmail_BOH"

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 806
    .local v0, dispatchMessageWaitTime:J
    iget v4, p0, Lcom/google/android/gm/BulkOperationHelper$TimedLoggingHandler;->mDispatchMessageLogThreshold:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 807
    const-string v4, "Gmail_BOH"

    const-string v5, "Took %d ms to run dispatchMessage()"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 810
    .end local v0           #dispatchMessageWaitTime:J
    :cond_1
    return-void
.end method
