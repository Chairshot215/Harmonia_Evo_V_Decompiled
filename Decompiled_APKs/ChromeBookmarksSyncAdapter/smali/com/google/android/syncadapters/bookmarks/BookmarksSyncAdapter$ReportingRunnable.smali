.class abstract Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ReportingRunnable"
.end annotation


# instance fields
.field protected final mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-direct {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1552
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v0

    return-object v0
.end method

.method public waitUntilDone()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->await()V

    .line 1557
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    return-object v0
.end method
