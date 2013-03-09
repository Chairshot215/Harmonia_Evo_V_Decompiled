.class public Lcom/google/android/googlequicksearchbox/util/ExpiringSum;
.super Ljava/lang/Object;
.source "ExpiringSum.java"


# instance fields
.field private mBuckets:[I

.field private mChanged:Z

.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private final mGranularity:J

.field private final mMaxAgeMillis:J

.field private mMostRecentBucket:J

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Clock;JJ)V
    .locals 4
    .parameter "clock"
    .parameter "maxAgeMillis"
    .parameter "granularity"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 48
    iput-wide p2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMaxAgeMillis:J

    .line 49
    iput-wide p4, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mGranularity:J

    .line 50
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMaxAgeMillis:J

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mGranularity:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Clock;JJLjava/lang/String;)V
    .locals 0
    .parameter "clock"
    .parameter "maxAgeMillis"
    .parameter "granularity"
    .parameter "statsJson"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;-><init>(Lcom/google/android/googlequicksearchbox/Clock;JJ)V

    .line 55
    invoke-direct {p0, p6}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->loadJson(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private expireBuckets()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 80
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mGranularity:J

    div-long v3, v5, v7

    .line 81
    .local v3, newMostRecentBucket:J
    iget-wide v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMostRecentBucket:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 82
    iput v9, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I

    .line 83
    iget-wide v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMostRecentBucket:J

    sub-long v0, v3, v5

    .line 84
    .local v0, expiredBuckets:J
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 85
    int-to-long v5, v2

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 86
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    aput v9, v5, v2

    .line 84
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    int-to-long v7, v2

    sub-long/2addr v7, v0

    long-to-int v7, v7

    aget v6, v6, v7

    aput v6, v5, v2

    .line 89
    iget v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I

    goto :goto_1

    .line 92
    :cond_1
    iput-wide v3, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMostRecentBucket:J

    .line 94
    .end local v0           #expiredBuckets:J
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private loadJson(Ljava/lang/String;)V
    .locals 6
    .parameter "statsJson"

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, array:Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMostRecentBucket:J

    .line 100
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    aput v4, v3, v2

    .line 102
    iget v3, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Lorg/json/JSONException;
    const-string v3, "QSB.ExpiringSum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading expiring sum from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->expireBuckets()V

    .line 108
    return-void
.end method


# virtual methods
.method public declared-synchronized get()I
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->expireBuckets()V

    .line 66
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJsonIfChanged()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mChanged:Z

    if-eqz v2, :cond_2

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mChanged:Z

    .line 113
    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I

    if-nez v2, :cond_0

    .line 114
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-object v2

    .line 116
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 117
    .local v0, array:Lorg/json/JSONArray;
    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMostRecentBucket:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 124
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized incrementAtTime(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->expireBuckets()V

    .line 71
    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mMostRecentBucket:J

    iget-wide v4, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mGranularity:J

    div-long v4, p1, v4

    sub-long v0, v2, v4

    .line 72
    .local v0, bucket:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mBuckets:[I

    long-to-int v3, v0

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 74
    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mTotal:I

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->mChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    .end local v0           #bucket:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
