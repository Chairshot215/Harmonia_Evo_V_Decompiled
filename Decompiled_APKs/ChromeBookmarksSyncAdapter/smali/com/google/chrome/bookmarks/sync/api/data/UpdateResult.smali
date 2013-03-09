.class public Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
.super Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;
.source "UpdateResult.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)V
    .locals 0
    .parameter "overTheWireResp"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getChangesRemaining()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasChangesRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getChangesRemaining()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getEntriesList()Ljava/util/List;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getNewProgressMarkerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getNewProgressMarkerList()Ljava/util/List;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nerror msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nstore_birthday:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getStoreBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nnew progress marker:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getProgressMarkers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nchanges remaining:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getChangesRemaining()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getEntries()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 54
    .local v1, entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n******************************* Entity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " *******************************"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/google/chrome/bookmarks/sync/api/impl/PrettyPrinter;->entityToString(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    .end local v1           #entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
