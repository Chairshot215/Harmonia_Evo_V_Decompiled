.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;
.super Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue",
        "<",
        "Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue;-><init>(I)V

    .line 1516
    return-void
.end method
