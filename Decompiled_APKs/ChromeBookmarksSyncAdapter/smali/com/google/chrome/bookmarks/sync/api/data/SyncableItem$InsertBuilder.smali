.class public Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
.super Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
.source "SyncableItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder",
        "<",
        "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setCtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 127
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 128
    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->validate()V

    .line 129
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    sget v2, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->INSERT_TYPE:I

    invoke-direct {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;I)V

    return-object v0
.end method

.method public setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .locals 1
    .parameter "tag"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 114
    return-object p0
.end method

.method public setInsertAfterItemId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .locals 1
    .parameter "id"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 108
    return-object p0
.end method

.method public setLocalId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .locals 1
    .parameter "id"

    .prologue
    .line 96
    const-string v0, "The local id must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 98
    return-object p0
.end method

.method public setNonUniqueName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .locals 1
    .parameter "nonUniqName"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 103
    return-object p0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasName()Z

    move-result v0

    const-string v1, "unique name must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasIdString()Z

    move-result v0

    const-string v1, "local id must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasParentIdString()Z

    move-result v0

    const-string v1, "parent id must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 122
    return-void
.end method
