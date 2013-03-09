.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;
.super Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergeQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue",
        "<",
        "Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 1529
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue;-><init>(I)V

    .line 1530
    return-void
.end method
