.class public Lcom/google/android/common/http/NetworkStatsEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "NetworkStatsEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;
    }
.end annotation


# instance fields
.field private final mProcessingStartTime:J

.field private final mResponseLatency:J

.field private final mStartRx:J

.field private final mStartTx:J

.field private final mUa:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V
    .locals 0
    .parameter "orig"
    .parameter "ua"
    .parameter "uid"
    .parameter "startTx"
    .parameter "startRx"
    .parameter "responseLatency"
    .parameter "processingStartTime"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 70
    iput-object p2, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I

    .line 72
    iput-wide p4, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J

    .line 73
    iput-wide p6, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J

    .line 74
    iput-wide p8, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J

    .line 75
    iput-wide p10, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J

    return-wide v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .local v0, orig:Ljava/io/InputStream;
    new-instance v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;

    invoke-direct {v1, p0, v0}, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;-><init>(Lcom/google/android/common/http/NetworkStatsEntity;Ljava/io/InputStream;)V

    return-object v1
.end method
