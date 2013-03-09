.class public Lcom/google/android/location/NetworkLocator;
.super Ljava/lang/Object;
.source "NetworkLocator.java"


# static fields
.field private static final EMPTY_CELL_STATUS:Lcom/google/android/location/data/CellStatus;


# instance fields
.field cellEnabled:Z

.field cellStatus:Lcom/google/android/location/data/CellStatus;

.field glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

.field glsQueryTicket:Z

.field glsQueryTime:J

.field glsQueryWifiScan:Lcom/google/android/location/data/WifiScan;

.field lastCachePurge:J

.field lastCellScanRequestTime:J

.field lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

.field lastStateCheckpointTime:J

.field lastWakeLockAcquireTime:J

.field lastWakeLockReleaseTime:J

.field lastWifiScanRequestTime:J

.field final locator:Lcom/google/android/location/localizer/LocatorManager;

.field locatorTicket:Z

.field nextTriggerTime:J

.field final os:Lcom/google/android/location/os/Os;

.field period:J

.field final state:Lcom/google/android/location/cache/PersistentState;

.field final stats:Lcom/google/android/location/Stats;

.field wifiEnabled:Z

.field wifiScan:Lcom/google/android/location/data/WifiScan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/location/data/CellStatus;

    invoke-direct {v0}, Lcom/google/android/location/data/CellStatus;-><init>()V

    sput-object v0, Lcom/google/android/location/NetworkLocator;->EMPTY_CELL_STATUS:Lcom/google/android/location/data/CellStatus;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;Lcom/google/android/location/Stats;)V
    .locals 8
    .parameter "os"
    .parameter "state"
    .parameter "stats"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-wide v0, 0x1f3fffffc18L

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->period:J

    .line 89
    iput-wide v6, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    .line 93
    new-instance v0, Lcom/google/android/location/data/NetworkLocation;

    invoke-direct {v0, v5, v5, v5, v5}, Lcom/google/android/location/data/NetworkLocation;-><init>(Lcom/google/android/location/data/LocatorResult;Lcom/google/android/location/data/WifiLocatorResult;Lcom/google/android/location/data/CellLocatorResult;Lcom/google/android/location/data/GlsLocatorResult;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    .line 94
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    .line 98
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->glsQueryTime:J

    .line 100
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    .line 103
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 104
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    .line 108
    new-instance v0, Lcom/google/android/location/data/CellStatus;

    invoke-direct {v0}, Lcom/google/android/location/data/CellStatus;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    .line 109
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    .line 110
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    .line 113
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    .line 114
    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    .line 118
    iput-wide v6, p0, Lcom/google/android/location/NetworkLocator;->lastStateCheckpointTime:J

    .line 119
    iput-wide v6, p0, Lcom/google/android/location/NetworkLocator;->lastCachePurge:J

    .line 126
    iput-object p1, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    .line 127
    iput-object p2, p0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    .line 128
    new-instance v0, Lcom/google/android/location/localizer/LocatorManager;

    iget-object v1, p2, Lcom/google/android/location/cache/PersistentState;->cellCache:Lcom/google/android/location/cache/TemporalCache;

    iget-object v2, p2, Lcom/google/android/location/cache/PersistentState;->wifiCache:Lcom/google/android/location/cache/TemporalCache;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/location/localizer/LocatorManager;-><init>(Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/cache/TemporalCache;Lcom/google/android/location/os/Os;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocator;->locator:Lcom/google/android/location/localizer/LocatorManager;

    .line 129
    iput-object p3, p0, Lcom/google/android/location/NetworkLocator;->stats:Lcom/google/android/location/Stats;

    .line 133
    return-void
.end method

.method private acquireWakeLock()J
    .locals 4

    .prologue
    .line 146
    iget-object v2, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/location/os/Os;->wakeLockAcquire(I)V

    .line 148
    iget-object v2, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v2}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v0

    .line 149
    .local v0, now:J
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    .line 150
    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 151
    return-wide v0
.end method

.method private createGlsQueryRequest(Lcom/google/android/location/data/CellStatus;Lcom/google/android/location/data/WifiScan;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 8
    .parameter "cellStatus"
    .parameter "wifiScan"

    .prologue
    const/4 v6, 0x2

    .line 161
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 162
    .local v3, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v5, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v5}, Lcom/google/android/location/os/Os;->bootTime()J

    move-result-wide v0

    .line 163
    .local v0, bootTime:J
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/location/data/CellStatus;->addToRequestElement(Lcom/google/common/io/protocol/ProtoBuf;J)V

    .line 166
    :cond_0
    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {p2, v0, v1}, Lcom/google/android/location/data/WifiScan;->createWifiProfile(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 168
    .local v4, wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 170
    invoke-virtual {v3, v6, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 173
    .end local v4           #wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 174
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 175
    .local v2, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 176
    iget-object v5, p0, Lcom/google/android/location/NetworkLocator;->stats:Lcom/google/android/location/Stats;

    iget-object v6, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    iget-object v7, p0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    invoke-virtual {v5, v6, v7, v2}, Lcom/google/android/location/Stats;->maybeAddClientStats(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 177
    return-object v2
.end method

.method private releaseWakeLock(J)V
    .locals 4
    .parameter "now"

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    .line 156
    iget-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 157
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/location/os/Os;->wakeLockRelease(I)V

    .line 158
    return-void
.end method

.method private setCellWifiEnabled(JZZ)V
    .locals 8
    .parameter "now"
    .parameter "cellEnabled"
    .parameter "wifiEnabled"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 447
    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    if-eqz v1, :cond_3

    :cond_0
    move v7, v0

    .line 448
    .local v7, wasEnabled:Z
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    .line 449
    iput-boolean p4, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    .line 450
    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    if-eqz v1, :cond_4

    :cond_1
    move v6, v0

    .line 452
    .local v6, nowEnabled:Z
    :goto_1
    if-eq v7, v6, :cond_2

    .line 453
    if-eqz v6, :cond_5

    .line 454
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    :cond_2
    :goto_2
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v3

    .line 459
    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 460
    return-void

    .end local v6           #nowEnabled:Z
    .end local v7           #wasEnabled:Z
    :cond_3
    move v7, v5

    .line 447
    goto :goto_0

    .restart local v7       #wasEnabled:Z
    :cond_4
    move v6, v5

    .line 450
    goto :goto_1

    .line 456
    .restart local v6       #nowEnabled:Z
    :cond_5
    const-wide/32 v0, 0x7fffffff

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    goto :goto_2
.end method

.method private shouldReportLocation(Lcom/google/android/location/data/LocatorResult;J)Z
    .locals 7
    .parameter "newBest"
    .parameter "now"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 411
    iget-object v3, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->getLastKnownLocation()Lcom/google/android/location/os/LocationInterface;

    move-result-object v0

    .line 412
    .local v0, lastBest:Lcom/google/android/location/os/LocationInterface;
    if-nez v0, :cond_2

    .line 413
    iget-object v3, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    iget v3, v3, Lcom/google/android/location/data/Position;->accuracyMm:I

    const v4, 0x30d40

    if-ge v3, v4, :cond_1

    .line 414
    const-string v2, "NetworkLocator"

    const-string v3, "Reporting available location since we\'ve never reported one before."

    invoke-static {v2, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    const-string v1, "NetworkLocator"

    const-string v3, "Not reporting first fix as it may be significantly improved by going to the server."

    invoke-static {v1, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 419
    goto :goto_0

    .line 421
    :cond_2
    iget-wide v3, p1, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    invoke-interface {v0}, Lcom/google/android/location/os/LocationInterface;->getTimeSinceBoot()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xafc8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 422
    const-string v2, "NetworkLocator"

    const-string v3, "New location significantly newer than previous. Reporting it."

    invoke-static {v2, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_3
    iget-object v3, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    iget v3, v3, Lcom/google/android/location/data/Position;->accuracyMm:I

    int-to-float v3, v3

    invoke-interface {v0}, Lcom/google/android/location/os/LocationInterface;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    const v5, 0x47c35000

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 426
    const-string v1, "NetworkLocator"

    const-string v3, "Not reporting location since the new location has worse accuracy than the previous one."

    invoke-static {v1, v3}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 428
    goto :goto_0
.end method

.method private updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V
    .locals 52
    .parameter "now"
    .parameter "newWifiScan"
    .parameter "glsLocatorResult"
    .parameter "glsQueryTerminated"

    .prologue
    .line 194
    if-eqz p3, :cond_0

    .line 195
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    .line 197
    :cond_0
    if-eqz p5, :cond_1

    .line 198
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCachePurge:J

    move-wide/from16 v48, v0

    sub-long v48, p1, v48

    const-wide/32 v50, 0x36ee80

    cmp-long v48, v48, v50

    if-lez v48, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/google/android/location/os/Os;->millisSinceEpoch()J

    move-result-wide v49

    invoke-virtual/range {v48 .. v50}, Lcom/google/android/location/cache/PersistentState;->discardOldCacheEntries(J)V

    .line 205
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastCachePurge:J

    .line 219
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    move-wide/from16 v48, v0

    sub-long v36, p1, v48

    .line 220
    .local v36, sinceAcquire:J
    const-wide/32 v6, 0xafc8

    .line 221
    .local v6, MAX_FRESH_SCAN_MILLIS:J
    const-wide/16 v4, 0xc8

    .line 224
    .local v4, COMMON_CELL_SCAN_LATENCY:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->period:J

    move-wide/from16 v48, v0

    const-wide/32 v50, 0xafc8

    invoke-static/range {v48 .. v51}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v23

    .line 225
    .local v23, maxWifiScanAge:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    if-nez v48, :cond_26

    const-wide/16 v45, 0x0

    .line 226
    .local v45, wifiScanAge:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v8

    .line 228
    .local v8, cellPrimary:Lcom/google/android/location/data/CellState;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    move-wide/from16 v48, v0

    cmp-long v48, p1, v48

    if-ltz v48, :cond_27

    const/16 v40, 0x1

    .line 230
    .local v40, trigger:Z
    :goto_1
    if-eqz v8, :cond_28

    invoke-virtual {v8}, Lcom/google/android/location/data/CellState;->isValid()Z

    move-result v48

    if-eqz v48, :cond_28

    invoke-virtual {v8}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v48

    sub-long v48, p1, v48

    const-wide/32 v50, 0xafc8

    cmp-long v48, v48, v50

    if-gez v48, :cond_28

    const/16 v17, 0x1

    .line 232
    .local v17, haveCellScan:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    if-eqz v48, :cond_29

    cmp-long v48, v45, v23

    if-gez v48, :cond_29

    const/16 v19, 0x1

    .line 236
    .local v19, haveWifiScan:Z
    :goto_3
    if-eqz v17, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/NetworkLocation;->getCellResultPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v48

    move-object/from16 v0, v48

    if-eq v8, v0, :cond_2a

    const/4 v10, 0x1

    .line 238
    .local v10, freshCellScan:Z
    :goto_4
    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/location/data/NetworkLocation;->getWifiResultScan()Lcom/google/android/location/data/WifiScan;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_2b

    const/4 v11, 0x1

    .line 244
    .local v11, freshWifiScan:Z
    :goto_5
    if-eqz v40, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_2c

    const/16 v32, 0x1

    .line 245
    .local v32, requestCellScan:Z
    :goto_6
    if-eqz v40, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_2d

    if-eqz v11, :cond_3

    sub-long v48, v23, v45

    const-wide/16 v50, 0xc8

    cmp-long v48, v48, v50

    if-gez v48, :cond_2d

    :cond_3
    const/16 v33, 0x1

    .line 250
    .local v33, requestWifiScan:Z
    :goto_7
    if-nez v32, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    move-wide/from16 v48, v0

    const-wide/16 v50, -0x1

    cmp-long v48, v48, v50

    if-eqz v48, :cond_2e

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    move-wide/from16 v48, v0

    invoke-virtual {v8}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v50

    cmp-long v48, v48, v50

    if-lez v48, :cond_2e

    :cond_4
    const/4 v9, 0x1

    .line 254
    .local v9, cellScanPending:Z
    :goto_8
    if-nez v33, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    move-wide/from16 v48, v0

    const-wide/16 v50, -0x1

    cmp-long v48, v48, v50

    if-eqz v48, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    if-eqz v48, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-lez v48, :cond_2f

    :cond_5
    const/16 v47, 0x1

    .line 259
    .local v47, wifiScanPending:Z
    :goto_9
    if-eqz v9, :cond_30

    if-nez v32, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    move-wide/from16 v48, v0

    sub-long v48, p1, v48

    const-wide/16 v50, 0x1388

    cmp-long v48, v48, v50

    if-gez v48, :cond_30

    :cond_6
    const/16 v41, 0x1

    .line 262
    .local v41, waitForCell:Z
    :goto_a
    if-eqz v47, :cond_31

    if-nez v33, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    move-wide/from16 v48, v0

    sub-long v48, p1, v48

    const-wide/16 v50, 0x1388

    cmp-long v48, v48, v50

    if-gez v48, :cond_31

    :cond_7
    const/16 v43, 0x1

    .line 265
    .local v43, waitForWifi:Z
    :goto_b
    if-nez v41, :cond_8

    if-eqz v43, :cond_32

    :cond_8
    const/16 v42, 0x1

    .line 271
    .local v42, waitForScans:Z
    :goto_c
    if-nez v10, :cond_9

    if-eqz v11, :cond_a

    :cond_9
    if-eqz v42, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    move/from16 v48, v0

    if-nez v48, :cond_33

    if-eqz v17, :cond_33

    if-nez v41, :cond_33

    :cond_b
    const/16 v35, 0x1

    .line 273
    .local v35, scansReady:Z
    :goto_d
    if-nez p5, :cond_d

    if-nez v40, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    move/from16 v48, v0

    if-eqz v48, :cond_34

    :cond_c
    if-eqz v35, :cond_34

    :cond_d
    const/16 v34, 0x1

    .line 274
    .local v34, runLocator:Z
    :goto_e
    const/16 v25, 0x0

    .line 275
    .local v25, netLoc:Lcom/google/android/location/data/NetworkLocation;
    if-eqz v34, :cond_e

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->locator:Lcom/google/android/location/localizer/LocatorManager;

    move-object/from16 v50, v0

    if-eqz v10, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/CellStatus;->copy()Lcom/google/android/location/data/CellStatus;

    move-result-object v48

    move-object/from16 v49, v48

    :goto_f
    if-eqz v11, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    :goto_10
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    move-object/from16 v2, v48

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/localizer/LocatorManager;->computeLocation(Lcom/google/android/location/data/CellStatus;Lcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;)Lcom/google/android/location/data/NetworkLocation;

    move-result-object v25

    .line 280
    :cond_e
    if-eqz v25, :cond_37

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    move-object/from16 v48, v0

    if-eqz v48, :cond_37

    const/16 v18, 0x1

    .line 281
    .local v18, haveLocation:Z
    :goto_11
    if-eqz v25, :cond_38

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/google/android/location/data/CellLocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v48, v0

    sget-object v49, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_38

    const/4 v12, 0x1

    .line 283
    .local v12, glsForCell:Z
    :goto_12
    if-eqz v25, :cond_39

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/google/android/location/data/WifiLocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v48, v0

    sget-object v49, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_39

    const/4 v13, 0x1

    .line 287
    .local v13, glsForWifi:Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v48, v0

    if-nez v48, :cond_3a

    if-nez v40, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    move/from16 v48, v0

    if-eqz v48, :cond_3a

    :cond_f
    if-eqz v12, :cond_10

    if-nez v10, :cond_11

    :cond_10
    if-eqz v13, :cond_3a

    if-eqz v11, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/WifiScan;->numDevices()I

    move-result v48

    if-lez v48, :cond_3a

    :cond_11
    const/16 v28, 0x1

    .line 290
    .local v28, queryGls:Z
    :goto_14
    if-nez v28, :cond_12

    if-eqz v18, :cond_3b

    :cond_12
    const/16 v22, 0x1

    .line 292
    .local v22, loseQueryTicket:Z
    :goto_15
    if-eqz v18, :cond_3c

    if-eqz v28, :cond_13

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/NetworkLocator;->shouldReportLocation(Lcom/google/android/location/data/LocatorResult;J)Z

    move-result v48

    if-eqz v48, :cond_3c

    :cond_13
    const/16 v31, 0x1

    .line 295
    .local v31, reportLocation:Z
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->isWakeLocked()Z

    move-result v20

    .line 296
    .local v20, isWakeLocked:Z
    if-nez v20, :cond_3d

    if-eqz v40, :cond_3d

    const/16 v16, 0x1

    .line 300
    .local v16, grabWakeLock:Z
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v48, v0

    if-eqz v48, :cond_14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->glsQueryTime:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-gez v48, :cond_15

    :cond_14
    if-eqz v28, :cond_3e

    :cond_15
    const/4 v14, 0x1

    .line 302
    .local v14, glsQueryPending:Z
    :goto_18
    if-nez v9, :cond_16

    if-nez v47, :cond_16

    if-eqz v14, :cond_3f

    :cond_16
    const/16 v44, 0x1

    .line 303
    .local v44, wakeLockUseful:Z
    :goto_19
    if-eqz v20, :cond_40

    if-nez v40, :cond_40

    const-wide/16 v48, 0x1388

    cmp-long v48, v36, v48

    if-gez v48, :cond_17

    if-nez v44, :cond_40

    :cond_17
    const/16 v29, 0x1

    .line 307
    .local v29, releaseWakeLock:Z
    :goto_1a
    if-eqz v20, :cond_41

    if-eqz v40, :cond_41

    if-nez v29, :cond_41

    const/16 v30, 0x1

    .line 340
    .local v30, renewWakeLock:Z
    :goto_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    move/from16 v48, v0

    if-nez v48, :cond_18

    if-eqz v40, :cond_42

    :cond_18
    if-nez v34, :cond_42

    const/16 v48, 0x1

    :goto_1c
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/NetworkLocator;->locatorTicket:Z

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    move/from16 v48, v0

    if-nez v48, :cond_19

    if-eqz v40, :cond_43

    :cond_19
    if-nez v22, :cond_43

    const/16 v48, 0x1

    :goto_1d
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/NetworkLocator;->glsQueryTicket:Z

    .line 343
    if-eqz v16, :cond_1a

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->acquireWakeLock()J

    move-result-wide p1

    .line 346
    :cond_1a
    if-eqz v30, :cond_1b

    .line 347
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    .line 349
    :cond_1b
    if-eqz v40, :cond_1c

    .line 350
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->period:J

    move-wide/from16 v48, v0

    add-long v48, v48, p1

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    .line 352
    :cond_1c
    if-eqz v32, :cond_1d

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/google/android/location/os/Os;->cellRequestScan()V

    .line 354
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    .line 356
    :cond_1d
    if-eqz v33, :cond_1e

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/google/android/location/os/Os;->wifiRequestScan()V

    .line 358
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastWifiScanRequestTime:J

    .line 360
    :cond_1e
    if-eqz v28, :cond_1f

    .line 361
    if-eqz v10, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v21, v0

    .line 362
    .local v21, locatorCellStatus:Lcom/google/android/location/data/CellStatus;
    :goto_1e
    if-eqz v11, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/location/data/WifiScan;->numDevices()I

    move-result v48

    if-lez v48, :cond_45

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    .line 363
    .local v15, glsWifiScan:Lcom/google/android/location/data/WifiScan;
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v15}, Lcom/google/android/location/NetworkLocator;->createGlsQueryRequest(Lcom/google/android/location/data/CellStatus;Lcom/google/android/location/data/WifiScan;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    .line 364
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->glsQueryTime:J

    .line 365
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/location/NetworkLocator;->glsQueryWifiScan:Lcom/google/android/location/data/WifiScan;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v49, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/location/data/CellStatus;->createCellularPlatformProfile(Lcom/google/android/location/data/CellStatus;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v50

    invoke-interface/range {v48 .. v50}, Lcom/google/android/location/os/Os;->glsQuery(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 368
    .end local v15           #glsWifiScan:Lcom/google/android/location/data/WifiScan;
    .end local v21           #locatorCellStatus:Lcom/google/android/location/data/CellStatus;
    :cond_1f
    if-eqz v31, :cond_20

    .line 369
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    move-object/from16 v48, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/google/android/location/cache/PersistentState;->lastKnown:Lcom/google/android/location/data/LocatorResult;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->lastNetworkLocation:Lcom/google/android/location/data/NetworkLocation;

    move-object/from16 v49, v0

    invoke-interface/range {v48 .. v49}, Lcom/google/android/location/os/Os;->locationReport(Lcom/google/android/location/data/NetworkLocation;)V

    .line 375
    :cond_20
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    move-wide/from16 v26, v0

    .line 376
    .local v26, nextAlarm:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->isWakeLocked()Z

    move-result v48

    if-eqz v48, :cond_21

    if-nez v29, :cond_21

    .line 377
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x1388

    add-long v48, v48, v50

    move-wide/from16 v0, v26

    move-wide/from16 v2, v48

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    .line 379
    :cond_21
    const-wide v48, 0x7fffffffffffffffL

    cmp-long v48, v26, v48

    if-gez v48, :cond_22

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/location/os/Os;->alarmReset(IJ)V

    .line 386
    :cond_22
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocator;->lastStateCheckpointTime:J

    move-wide/from16 v48, v0

    sub-long v38, p1, v48

    .line 387
    .local v38, sinceCheckpoint:J
    const-wide/32 v48, 0x6ddd00

    cmp-long v48, v38, v48

    if-gtz v48, :cond_23

    const-wide/32 v48, 0x36ee80

    cmp-long v48, v38, v48

    if-lez v48, :cond_24

    sub-long v48, v26, p1

    const-wide/16 v50, 0x2710

    cmp-long v48, v48, v50

    if-lez v48, :cond_24

    if-nez v9, :cond_24

    if-nez v47, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->glsQuery:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v48, v0

    if-nez v48, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/NetworkLocator;->isWakeLocked()Z

    move-result v48

    if-eqz v48, :cond_24

    .line 391
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    move-object/from16 v49, v0

    invoke-interface/range {v48 .. v49}, Lcom/google/android/location/os/Os;->stateCheckpoint(Lcom/google/android/location/cache/PersistentState;)V

    .line 392
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocator;->lastStateCheckpointTime:J

    .line 395
    :cond_24
    if-eqz v29, :cond_25

    .line 396
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/NetworkLocator;->releaseWakeLock(J)V

    .line 398
    :cond_25
    return-void

    .line 225
    .end local v8           #cellPrimary:Lcom/google/android/location/data/CellState;
    .end local v9           #cellScanPending:Z
    .end local v10           #freshCellScan:Z
    .end local v11           #freshWifiScan:Z
    .end local v12           #glsForCell:Z
    .end local v13           #glsForWifi:Z
    .end local v14           #glsQueryPending:Z
    .end local v16           #grabWakeLock:Z
    .end local v17           #haveCellScan:Z
    .end local v18           #haveLocation:Z
    .end local v19           #haveWifiScan:Z
    .end local v20           #isWakeLocked:Z
    .end local v22           #loseQueryTicket:Z
    .end local v25           #netLoc:Lcom/google/android/location/data/NetworkLocation;
    .end local v26           #nextAlarm:J
    .end local v28           #queryGls:Z
    .end local v29           #releaseWakeLock:Z
    .end local v30           #renewWakeLock:Z
    .end local v31           #reportLocation:Z
    .end local v32           #requestCellScan:Z
    .end local v33           #requestWifiScan:Z
    .end local v34           #runLocator:Z
    .end local v35           #scansReady:Z
    .end local v38           #sinceCheckpoint:J
    .end local v40           #trigger:Z
    .end local v41           #waitForCell:Z
    .end local v42           #waitForScans:Z
    .end local v43           #waitForWifi:Z
    .end local v44           #wakeLockUseful:Z
    .end local v45           #wifiScanAge:J
    .end local v47           #wifiScanPending:Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocator;->wifiScan:Lcom/google/android/location/data/WifiScan;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    move-wide/from16 v48, v0

    sub-long v45, p1, v48

    goto/16 :goto_0

    .line 228
    .restart local v8       #cellPrimary:Lcom/google/android/location/data/CellState;
    .restart local v45       #wifiScanAge:J
    :cond_27
    const/16 v40, 0x0

    goto/16 :goto_1

    .line 230
    .restart local v40       #trigger:Z
    :cond_28
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 232
    .restart local v17       #haveCellScan:Z
    :cond_29
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 236
    .restart local v19       #haveWifiScan:Z
    :cond_2a
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 238
    .restart local v10       #freshCellScan:Z
    :cond_2b
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 244
    .restart local v11       #freshWifiScan:Z
    :cond_2c
    const/16 v32, 0x0

    goto/16 :goto_6

    .line 245
    .restart local v32       #requestCellScan:Z
    :cond_2d
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 250
    .restart local v33       #requestWifiScan:Z
    :cond_2e
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 254
    .restart local v9       #cellScanPending:Z
    :cond_2f
    const/16 v47, 0x0

    goto/16 :goto_9

    .line 259
    .restart local v47       #wifiScanPending:Z
    :cond_30
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 262
    .restart local v41       #waitForCell:Z
    :cond_31
    const/16 v43, 0x0

    goto/16 :goto_b

    .line 265
    .restart local v43       #waitForWifi:Z
    :cond_32
    const/16 v42, 0x0

    goto/16 :goto_c

    .line 271
    .restart local v42       #waitForScans:Z
    :cond_33
    const/16 v35, 0x0

    goto/16 :goto_d

    .line 273
    .restart local v35       #scansReady:Z
    :cond_34
    const/16 v34, 0x0

    goto/16 :goto_e

    .line 276
    .restart local v25       #netLoc:Lcom/google/android/location/data/NetworkLocation;
    .restart local v34       #runLocator:Z
    :cond_35
    sget-object v48, Lcom/google/android/location/NetworkLocator;->EMPTY_CELL_STATUS:Lcom/google/android/location/data/CellStatus;

    move-object/from16 v49, v48

    goto/16 :goto_f

    :cond_36
    const/16 v48, 0x0

    goto/16 :goto_10

    .line 280
    :cond_37
    const/16 v18, 0x0

    goto/16 :goto_11

    .line 281
    .restart local v18       #haveLocation:Z
    :cond_38
    const/4 v12, 0x0

    goto/16 :goto_12

    .line 283
    .restart local v12       #glsForCell:Z
    :cond_39
    const/4 v13, 0x0

    goto/16 :goto_13

    .line 287
    .restart local v13       #glsForWifi:Z
    :cond_3a
    const/16 v28, 0x0

    goto/16 :goto_14

    .line 290
    .restart local v28       #queryGls:Z
    :cond_3b
    const/16 v22, 0x0

    goto/16 :goto_15

    .line 292
    .restart local v22       #loseQueryTicket:Z
    :cond_3c
    const/16 v31, 0x0

    goto/16 :goto_16

    .line 296
    .restart local v20       #isWakeLocked:Z
    .restart local v31       #reportLocation:Z
    :cond_3d
    const/16 v16, 0x0

    goto/16 :goto_17

    .line 300
    .restart local v16       #grabWakeLock:Z
    :cond_3e
    const/4 v14, 0x0

    goto/16 :goto_18

    .line 302
    .restart local v14       #glsQueryPending:Z
    :cond_3f
    const/16 v44, 0x0

    goto/16 :goto_19

    .line 303
    .restart local v44       #wakeLockUseful:Z
    :cond_40
    const/16 v29, 0x0

    goto/16 :goto_1a

    .line 307
    .restart local v29       #releaseWakeLock:Z
    :cond_41
    const/16 v30, 0x0

    goto/16 :goto_1b

    .line 340
    .restart local v30       #renewWakeLock:Z
    :cond_42
    const/16 v48, 0x0

    goto/16 :goto_1c

    .line 341
    :cond_43
    const/16 v48, 0x0

    goto/16 :goto_1d

    .line 361
    :cond_44
    const/16 v21, 0x0

    goto/16 :goto_1e

    .line 362
    .restart local v21       #locatorCellStatus:Lcom/google/android/location/data/CellStatus;
    :cond_45
    const/4 v15, 0x0

    goto/16 :goto_1f
.end method


# virtual methods
.method public airplaneModeChanged(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/location/NetworkLocator;->setCellWifiEnabled(JZZ)V

    .line 478
    return-void

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public alarmRing()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 481
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 482
    return-void
.end method

.method public cellScanResults(Lcom/google/android/location/data/CellState;)V
    .locals 6
    .parameter "cellState"

    .prologue
    const/4 v3, 0x0

    .line 485
    if-nez p1, :cond_0

    .line 486
    const-string v0, "NetworkLocator"

    const-string v1, "null cell state delivered"

    invoke-static {v0, v1}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastCellScanRequestTime:J

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 493
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v0, p1}, Lcom/google/android/location/data/CellStatus;->setPrimary(Lcom/google/android/location/data/CellState;)V

    goto :goto_0
.end method

.method public cellSignalStrength(I)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v0, p1}, Lcom/google/android/location/data/CellStatus;->setSignalStrength(I)V

    .line 497
    return-void
.end method

.method public glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    .line 501
    .local v1, now:J
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->glsQueryWifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/location/data/GlsLocatorResult;->fromGLocReply(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/location/data/WifiScan;J)Lcom/google/android/location/data/GlsLocatorResult;

    move-result-object v4

    .line 502
    .local v4, glsResult:Lcom/google/android/location/data/GlsLocatorResult;
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->state:Lcom/google/android/location/cache/PersistentState;

    iget-object v3, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v3}, Lcom/google/android/location/os/Os;->millisSinceEpoch()J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lcom/google/android/location/cache/PersistentState;->updateCachesFromGlsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;J)V

    .line 503
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 504
    return-void
.end method

.method isWakeLocked()Z
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockAcquireTime:J

    iget-wide v2, p0, Lcom/google/android/location/NetworkLocator;->lastWakeLockReleaseTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPeriod(IZ)V
    .locals 13
    .parameter "periodSecs"
    .parameter "trigger"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 466
    int-to-long v9, p1

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/location/NetworkLocator;->period:J

    .line 467
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    .line 468
    .local v1, now:J
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocator;->wifiEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 469
    .local v6, enabled:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 470
    if-eqz p2, :cond_3

    const-wide/16 v7, 0x0

    .line 471
    .local v7, newTriggerTime:J
    :goto_1
    iget-wide v9, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/location/NetworkLocator;->nextTriggerTime:J

    .end local v7           #newTriggerTime:J
    :cond_1
    move-object v0, p0

    move-object v4, v3

    .line 473
    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    .line 474
    return-void

    .end local v6           #enabled:Z
    :cond_2
    move v6, v5

    .line 468
    goto :goto_0

    .line 470
    .restart local v6       #enabled:Z
    :cond_3
    iget-wide v9, p0, Lcom/google/android/location/NetworkLocator;->period:J

    add-long v7, v1, v9

    goto :goto_1
.end method

.method public wifiScanResults(Lcom/google/android/location/data/WifiScan;)V
    .locals 6
    .parameter "wifiScan"

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/NetworkLocator;->updateState(JLcom/google/android/location/data/WifiScan;Lcom/google/android/location/data/GlsLocatorResult;Z)V

    goto :goto_0
.end method

.method public wifiStateChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/location/NetworkLocator;->os:Lcom/google/android/location/os/Os;

    invoke-interface {v0}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/location/NetworkLocator;->cellEnabled:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/location/NetworkLocator;->setCellWifiEnabled(JZZ)V

    .line 515
    return-void
.end method
