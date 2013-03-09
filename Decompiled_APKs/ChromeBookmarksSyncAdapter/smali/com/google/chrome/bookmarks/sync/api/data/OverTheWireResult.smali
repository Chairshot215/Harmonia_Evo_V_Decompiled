.class public abstract Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;
.super Ljava/lang/Object;
.source "OverTheWireResult.java"


# instance fields
.field protected final overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;


# direct methods
.method public constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)V
    .locals 0
    .parameter "overTheWireResp"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    .line 17
    return-void
.end method


# virtual methods
.method public getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoreBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStoreBirthday()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/OverTheWireResult;->overTheWireResp:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStoreBirthday()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
