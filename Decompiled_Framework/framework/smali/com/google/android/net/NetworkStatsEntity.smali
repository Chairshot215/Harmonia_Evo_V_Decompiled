.class public Lcom/google/android/net/NetworkStatsEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "NetworkStatsEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/net/NetworkStatsEntity$NetworkStatsInputStream;
    }
.end annotation


# static fields
.field private static final HTTP_STATS_EVENT:I = 0xcb21


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

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object p2, p0, Lcom/google/android/net/NetworkStatsEntity;->mUa:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/net/NetworkStatsEntity;->mUid:I

    iput-wide p4, p0, Lcom/google/android/net/NetworkStatsEntity;->mStartTx:J

    iput-wide p6, p0, Lcom/google/android/net/NetworkStatsEntity;->mStartRx:J

    iput-wide p8, p0, Lcom/google/android/net/NetworkStatsEntity;->mResponseLatency:J

    iput-wide p10, p0, Lcom/google/android/net/NetworkStatsEntity;->mProcessingStartTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/net/NetworkStatsEntity;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/net/NetworkStatsEntity;->mProcessingStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/net/NetworkStatsEntity;)I
    .locals 1

    iget v0, p0, Lcom/google/android/net/NetworkStatsEntity;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/net/NetworkStatsEntity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/net/NetworkStatsEntity;->mUa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/net/NetworkStatsEntity;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/net/NetworkStatsEntity;->mResponseLatency:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/net/NetworkStatsEntity;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/net/NetworkStatsEntity;->mStartTx:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/net/NetworkStatsEntity;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/net/NetworkStatsEntity;->mStartRx:J

    return-wide v0
.end method

.method public static shouldLogNetworkStats()Z
    .locals 2

    const-string v0, "1"

    const-string v1, "googlehttpclient.logstats"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/google/android/net/NetworkStatsEntity$NetworkStatsInputStream;

    invoke-direct {v1, p0, v0}, Lcom/google/android/net/NetworkStatsEntity$NetworkStatsInputStream;-><init>(Lcom/google/android/net/NetworkStatsEntity;Ljava/io/InputStream;)V

    return-object v1
.end method
