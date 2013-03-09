.class public Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException;
.super Ljava/lang/Exception;
.source "ClosableBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueClosedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "Queue already closed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method
