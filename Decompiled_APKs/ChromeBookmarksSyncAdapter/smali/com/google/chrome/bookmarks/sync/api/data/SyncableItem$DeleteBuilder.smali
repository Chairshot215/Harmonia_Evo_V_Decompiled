.class public Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
.super Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
.source "SyncableItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder",
        "<",
        "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setDeleted(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 212
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    sget v2, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->DELETE_TYPE:I

    invoke-direct {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;I)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    .locals 1
    .parameter "id"

    .prologue
    .line 191
    const-string v0, "The local id must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 193
    return-object p0
.end method

.method public setVersion(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    .locals 1
    .parameter "version"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 198
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
    .line 203
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasName()Z

    move-result v0

    const-string v1, "unique name must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasIdString()Z

    move-result v0

    const-string v1, "local id must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasParentIdString()Z

    move-result v0

    const-string v1, "parent id must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->hasSpecifics()Z

    move-result v0

    const-string v1, "specifics must be defined"

    invoke-virtual {p0, v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->assertTrue(ZLjava/lang/String;)V

    .line 207
    return-void
.end method
