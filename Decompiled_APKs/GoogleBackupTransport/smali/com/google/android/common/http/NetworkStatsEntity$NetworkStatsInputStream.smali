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
    .parameter "wrapped"

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J
    invoke-static {v8}, Lcom/google/android/common/http/NetworkStatsEntity;->access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 46
    .local v0, processingTime:J
    iget-object v6, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v6}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v6

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 47
    .local v4, tx:J
    iget-object v6, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v6}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v6

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 49
    .local v2, rx:J
    const v6, 0xcb21

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/common/http/NetworkStatsEntity;->access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J
    invoke-static {v9}, Lcom/google/android/common/http/NetworkStatsEntity;->access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J
    invoke-static {v9}, Lcom/google/android/common/http/NetworkStatsEntity;->access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v9

    sub-long v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J
    invoke-static {v9}, Lcom/google/android/common/http/NetworkStatsEntity;->access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v9

    sub-long v9, v2, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 52
    return-void

    .line 45
    .end local v0           #processingTime:J
    .end local v2           #rx:J
    .end local v4           #tx:J
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mProcessingStartTime:J
    invoke-static {v9}, Lcom/google/android/common/http/NetworkStatsEntity;->access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v9

    sub-long v0, v7, v9

    .line 46
    .restart local v0       #processingTime:J
    iget-object v7, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v7}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v7

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 47
    .restart local v4       #tx:J
    iget-object v7, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUid:I
    invoke-static {v7}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v7

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 49
    .restart local v2       #rx:J
    const v7, 0xcb21

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mUa:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/common/http/NetworkStatsEntity;->access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mResponseLatency:J
    invoke-static {v10}, Lcom/google/android/common/http/NetworkStatsEntity;->access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartTx:J
    invoke-static {v10}, Lcom/google/android/common/http/NetworkStatsEntity;->access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v10

    sub-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    #getter for: Lcom/google/android/common/http/NetworkStatsEntity;->mStartRx:J
    invoke-static {v10}, Lcom/google/android/common/http/NetworkStatsEntity;->access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v10

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 45
    throw v6
.end method
