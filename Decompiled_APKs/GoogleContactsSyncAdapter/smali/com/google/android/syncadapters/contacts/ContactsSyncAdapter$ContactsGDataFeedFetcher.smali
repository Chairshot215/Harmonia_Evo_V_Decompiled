.class Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$ContactsGDataFeedFetcher;
.super Lcom/google/android/syncadapters/GDataFeedFetcher;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContactsGDataFeedFetcher"
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
    .line 1396
    .local p3, entryQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    .local p4, entryEndMarker:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    const-string v2, "ContactsSyncAdapter"

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

    .line 1398
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$ContactsGDataFeedFetcher;->trafficTag:I

    .line 1399
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1404
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$ContactsGDataFeedFetcher;->trafficTag:I

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1405
    invoke-super {p0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->run()V

    .line 1406
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$ContactsGDataFeedFetcher;->trafficTag:I

    or-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1407
    return-void
.end method
