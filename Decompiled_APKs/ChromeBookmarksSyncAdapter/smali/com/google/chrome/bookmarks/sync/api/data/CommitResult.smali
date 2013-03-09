.class public Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;
.super Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;
.source "CommitResult.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)V
    .locals 0
    .parameter "overTheWireResp"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getEntryResponses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    .line 21
    .local v0, commitResponse:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getEntryResponseList()Ljava/util/List;

    move-result-object v1

    .line 24
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
