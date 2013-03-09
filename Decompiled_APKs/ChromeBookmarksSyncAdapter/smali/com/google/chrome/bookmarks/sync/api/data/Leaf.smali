.class public Lcom/google/chrome/bookmarks/sync/api/data/Leaf;
.super Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
.source "Leaf.java"


# direct methods
.method public static newDeleteBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/Leaf$3;

    invoke-direct {v0}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf$3;-><init>()V

    return-object v0
.end method

.method public static newInsertBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/Leaf$1;

    invoke-direct {v0}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf$1;-><init>()V

    return-object v0
.end method

.method public static newModifyBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/data/Leaf$2;

    invoke-direct {v0}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf$2;-><init>()V

    return-object v0
.end method
