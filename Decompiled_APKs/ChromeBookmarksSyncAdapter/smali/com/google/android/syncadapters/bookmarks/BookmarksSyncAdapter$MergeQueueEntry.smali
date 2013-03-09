.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;
.super Landroid/util/Pair;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergeQueueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;",
        "Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V
    .locals 0
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 1522
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1523
    return-void
.end method
