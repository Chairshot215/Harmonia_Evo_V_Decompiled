.class public Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
.super Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
.source "SyncableItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifyBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder",
        "<",
        "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    sget v2, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->MODIFY_TYPE:I

    invoke-direct {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;I)V

    return-object v0
.end method

.method public setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    .locals 1
    .parameter "tag"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 162
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    .locals 1
    .parameter "id"

    .prologue
    .line 140
    const-string v0, "The local id must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 142
    return-object p0
.end method

.method public setInsertAfterItemId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    .locals 1
    .parameter "id"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 157
    return-object p0
.end method

.method public setNonUniqueName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    .locals 1
    .parameter "nonUniqName"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 152
    return-object p0
.end method

.method public setVersion(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    .locals 1
    .parameter "version"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 167
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
    .line 172
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasName()Z

    move-result v0

    const-string v1, "unique name must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasIdString()Z

    move-result v0

    const-string v1, "local id must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasParentIdString()Z

    move-result v0

    const-string v1, "parent id must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasSpecifics()Z

    move-result v0

    const-string v1, "specifics must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 176
    return-void
.end method
