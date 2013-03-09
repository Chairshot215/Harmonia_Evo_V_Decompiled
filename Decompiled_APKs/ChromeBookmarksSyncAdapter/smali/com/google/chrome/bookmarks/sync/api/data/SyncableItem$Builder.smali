.class public abstract Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
.super Ljava/lang/Object;
.source "SyncableItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, this:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 42
    return-void
.end method


# virtual methods
.method protected assertTrue(ZLjava/lang/String;)V
    .locals 1
    .parameter "mustBeTrue"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<TT;>;"
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method public abstract build()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setCreationTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    .locals 1
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<TT;>;"
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setCtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 67
    return-object p0
.end method

.method public setModifyTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    .locals 1
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<TT;>;"
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setMtime(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 61
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<TT;>;"
    const-string v0, "name must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 55
    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    .locals 1
    .parameter "parentId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<TT;>;"
    const-string v0, "The parent id must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setParentIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 48
    return-object p0
.end method

.method public setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    .locals 1
    .parameter "specifics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<TT;>;"
    const-string v0, "specifics must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    invoke-virtual {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    .line 74
    return-object p0
.end method

.method public abstract validate()V
.end method
