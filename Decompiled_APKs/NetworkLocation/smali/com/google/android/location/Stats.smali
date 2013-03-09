.class public Lcom/google/android/location/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# instance fields
.field private periodStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/Stats;->periodStart:J

    return-void
.end method

.method private createClientStats(JJLcom/google/android/location/cache/PersistentState;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 6
    .parameter "sinceBoot"
    .parameter "sinceEpoch"
    .parameter "persistentState"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 63
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCLIENT_STATS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 64
    .local v0, clientStats:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    div-long v2, p3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 65
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/location/Stats;->periodStart:J

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 66
    const/4 v1, 0x3

    iget-object v2, p5, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v2}, Lcom/google/android/location/cache/TemporalCache;->extractStats()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 67
    const/4 v1, 0x4

    iget-object v2, p5, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v2}, Lcom/google/android/location/cache/TemporalCache;->extractStats()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public maybeAddClientStats(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter "os"
    .parameter "persistentState"
    .parameter "gLocRequest"

    .prologue
    .line 44
    invoke-interface {p1}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    .line 45
    .local v1, now:J
    iget-wide v3, p0, Lcom/google/android/location/Stats;->periodStart:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0, v1, v2, p2}, Lcom/google/android/location/Stats;->reset(JLcom/google/android/location/cache/PersistentState;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-wide v3, p0, Lcom/google/android/location/Stats;->periodStart:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x6ddd00

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 48
    const/4 v6, 0x5

    invoke-interface {p1}, Lcom/google/android/location/os/Os;->millisSinceEpoch()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/Stats;->createClientStats(JJLcom/google/android/location/cache/PersistentState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 50
    iput-wide v1, p0, Lcom/google/android/location/Stats;->periodStart:J

    goto :goto_0
.end method

.method public reset(JLcom/google/android/location/cache/PersistentState;)V
    .locals 1
    .parameter "now"
    .parameter "persistentState"

    .prologue
    .line 32
    iget-object v0, p3, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v0}, Lcom/google/android/location/cache/TemporalCache;->extractStats()Lcom/google/common/io/protocol/ProtoBuf;

    .line 33
    iget-object v0, p3, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-virtual {v0}, Lcom/google/android/location/cache/TemporalCache;->extractStats()Lcom/google/common/io/protocol/ProtoBuf;

    .line 34
    iput-wide p1, p0, Lcom/google/android/location/Stats;->periodStart:J

    .line 35
    return-void
.end method
