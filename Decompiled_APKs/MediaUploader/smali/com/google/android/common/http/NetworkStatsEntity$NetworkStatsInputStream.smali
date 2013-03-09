.class Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;
.super Ljava/io/FilterInputStream;
.source "NetworkStatsEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/NetworkStatsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/http/NetworkStatsEntity;


# direct methods
.method public constructor <init>(Lcom/google/android/common/http/NetworkStatsEntity;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    .line 37
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 43
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J
    invoke-static {v2}, Lcom/google/android/common/http/NetworkStatsEntity;->access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 46
    iget-object v2, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v2}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 47
    iget-object v4, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v4}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 49
    const v6, 0xcb21

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/common/http/NetworkStatsEntity;->access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J
    invoke-static {v8}, Lcom/google/android/common/http/NetworkStatsEntity;->access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v12

    iget-object v0, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J
    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v13

    iget-object v0, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J
    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v14

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 52
    return-void

    .line 45
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J
    invoke-static {v3}, Lcom/google/android/common/http/NetworkStatsEntity;->access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 46
    iget-object v3, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v3}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    .line 47
    iget-object v5, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v5}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    .line 49
    const v7, 0xcb21

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/common/http/NetworkStatsEntity;->access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J
    invoke-static {v9}, Lcom/google/android/common/http/NetworkStatsEntity;->access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v12

    iget-object v1, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J
    invoke-static {v1}, Lcom/google/android/common/http/NetworkStatsEntity;->access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v1

    sub-long v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v13

    iget-object v1, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J
    invoke-static {v1}, Lcom/google/android/common/http/NetworkStatsEntity;->access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v1

    sub-long v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v14

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 45
    throw v0
.end method
