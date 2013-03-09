.class public Lcom/google/android/googlequicksearchbox/google/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# instance fields
.field private mLastTime:J

.field private final mLogTag:Ljava/lang/String;

.field private final mStartTime:J

.field private mTimeStamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mLogTag:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mStartTime:J

    .line 56
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mStartTime:J

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mLastTime:J

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mTimeStamps:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private static ms(J)I
    .locals 2
    .parameter "ns"

    .prologue
    .line 98
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 62
    .local v2, now:J
    iget-wide v6, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mStartTime:J

    sub-long v4, v2, v6

    .line 63
    .local v4, total:J
    iget-wide v6, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mLastTime:J

    sub-long v0, v2, v6

    .line 67
    .local v0, diff:J
    iput-wide v2, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mLastTime:J

    .line 68
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mTimeStamps:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public getNetworkRoundtripLatency()I
    .locals 6

    .prologue
    .line 86
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mTimeStamps:Ljava/util/HashMap;

    const-string v3, "network_roundtrip_start"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 87
    .local v1, start:Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mTimeStamps:Ljava/util/HashMap;

    const-string v3, "network_roundtrip_end"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 88
    .local v0, end:Ljava/lang/Long;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    const/4 v2, -0x1

    .line 91
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->ms(J)I

    move-result v2

    goto :goto_0
.end method

.method public getUserVisibleLatency()I
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mLastTime:J

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->ms(J)I

    move-result v0

    return v0
.end method
