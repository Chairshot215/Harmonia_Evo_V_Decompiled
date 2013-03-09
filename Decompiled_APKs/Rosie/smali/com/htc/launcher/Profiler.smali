.class public Lcom/htc/launcher/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# static fields
.field private static sIsRecorded:Z

.field private static sStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/Profiler;->sIsRecorded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static start()V
    .locals 2

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/Profiler;->sIsRecorded:Z

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/launcher/Profiler;->sStart:J

    .line 11
    return-void
.end method

.method static stop(ZLjava/lang/String;)V
    .locals 6
    .parameter "once"
    .parameter "log"

    .prologue
    .line 14
    if-eqz p0, :cond_1

    .line 15
    sget-boolean v2, Lcom/htc/launcher/Profiler;->sIsRecorded:Z

    if-eqz v2, :cond_0

    .line 21
    :goto_0
    return-void

    .line 16
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/launcher/Profiler;->sIsRecorded:Z

    .line 19
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    .local v0, current:J
    const-string v2, "PERF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/htc/launcher/Profiler;->sStart:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
