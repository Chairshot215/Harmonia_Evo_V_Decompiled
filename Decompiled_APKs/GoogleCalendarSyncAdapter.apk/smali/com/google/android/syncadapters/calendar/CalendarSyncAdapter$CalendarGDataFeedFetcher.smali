.class Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;
.super Lcom/google/android/syncadapters/GDataFeedFetcher;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CalendarGDataFeedFetcher"
.end annotation


# instance fields
.field private final trafficTag:I


# direct methods
.method protected constructor <init>(Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;II)V
    .locals 11
    .parameter "client"
    .parameter "entryClass"
    .parameter
    .parameter
    .parameter "url"
    .parameter "authToken"
    .parameter "feedSyncState"
    .parameter "maxResults"
    .parameter "trafficTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/gdata2/client/GDataServiceClient;",
            "Ljava/lang/Class;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 2659
    .local p3, entryQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    .local p4, entryEndMarker:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    const-string v2, "CalendarSyncAdapter"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/android/syncadapters/GDataFeedFetcher;-><init>(Ljava/lang/String;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 2661
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;->trafficTag:I

    .line 2662
    return-void
.end method


# virtual methods
.method protected getQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;
    .locals 14

    .prologue
    .line 2670
    iget-object v10, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    const-string v11, "new_window_end"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2673
    .local v1, moveWindowEnd:J
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-nez v10, :cond_3

    .line 2675
    invoke-super {p0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v3

    .line 2676
    .local v3, params:Lcom/google/wireless/gdata2/client/QueryParams;
    new-instance v7, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v7, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2677
    .local v7, startMaxTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    const-string v11, "window_end"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2679
    .local v5, startMaxMs:J
    const-string v10, "CalendarSyncAdapter"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2680
    const-string v10, "CalendarSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mFeedSyncState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", startMaxMs: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-lez v10, :cond_1

    .line 2684
    invoke-virtual {v7, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 2685
    const-string v10, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2686
    .local v4, startMax:Ljava/lang/String;
    const-string v10, "start-max"

    invoke-virtual {v3, v10, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    .end local v4           #startMax:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/google/wireless/gdata2/client/QueryParams;->getUpdatedMin()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 2693
    new-instance v0, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v0, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2694
    .local v0, lastMonth:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 2695
    iget v10, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v0, Landroid/text/format/Time;->month:I

    .line 2696
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 2699
    const-string v10, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2700
    .local v8, startMin:Ljava/lang/String;
    const-string v10, "start-min"

    invoke-virtual {v3, v10, v8}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    .end local v0           #lastMonth:Landroid/text/format/Time;
    .end local v5           #startMaxMs:J
    .end local v8           #startMin:Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v10, "recurrence-expansion-start"

    const-string v11, "1970-01-01"

    invoke-virtual {v3, v10, v11}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const-string v10, "recurrence-expansion-end"

    const-string v11, "1970-01-01"

    invoke-virtual {v3, v10, v11}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    return-object v3

    .line 2708
    .end local v3           #params:Lcom/google/wireless/gdata2/client/QueryParams;
    .end local v7           #startMaxTime:Landroid/text/format/Time;
    :cond_3
    const/4 v10, 0x1

    invoke-super {p0, v10}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getQueryParams(Z)Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v3

    .line 2711
    .restart local v3       #params:Lcom/google/wireless/gdata2/client/QueryParams;
    const-string v10, "requirealldeleted"

    const-string v11, "false"

    invoke-virtual {v3, v10, v11}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    new-instance v9, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2713
    .local v9, startMinTime:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v7, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2714
    .restart local v7       #startMaxTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    const-string v11, "window_end"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 2716
    invoke-virtual {v7, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2717
    const-string v10, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2718
    .restart local v8       #startMin:Ljava/lang/String;
    const-string v10, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2719
    .restart local v4       #startMax:Ljava/lang/String;
    const-string v10, "start-min"

    invoke-virtual {v3, v10, v8}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    const-string v10, "start-max"

    invoke-virtual {v3, v10, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2737
    iget v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;->trafficTag:I

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2738
    invoke-super {p0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->run()V

    .line 2739
    iget v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$CalendarGDataFeedFetcher;->trafficTag:I

    or-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 2740
    return-void
.end method
