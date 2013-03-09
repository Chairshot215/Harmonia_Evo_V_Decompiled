.class public interface abstract Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;
.super Ljava/lang/Object;
.source "ChromeSyncClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;
    }
.end annotation


# virtual methods
.method public abstract getServerUpdates(Lcom/google/chrome/bookmarks/sync/api/AuthInfo;Ljava/lang/Long;Ljava/lang/String;I[B)Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract postLocalCommits(Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;Ljava/util/List;ZLcom/google/chrome/bookmarks/sync/api/AuthInfo;Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;",
            ">;Z",
            "Lcom/google/chrome/bookmarks/sync/api/AuthInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
