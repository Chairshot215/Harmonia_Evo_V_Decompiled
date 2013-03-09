.class public Lcom/google/android/googlequicksearchbox/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# instance fields
.field private mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Clock;)V
    .locals 2
    .parameter "clock"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LatencyTracker;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 40
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LatencyTracker;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/LatencyTracker;->mStartTime:J

    .line 41
    return-void
.end method


# virtual methods
.method public getLatency()I
    .locals 4

    .prologue
    .line 47
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LatencyTracker;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Clock;->uptimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/LatencyTracker;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method
