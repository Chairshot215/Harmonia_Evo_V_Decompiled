.class public Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClientGuid:Ljava/lang/String;

.field private mProgressMarkerToken:[B

.field private mServerBday:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)V
    .locals 1
    .parameter "clone"

    .prologue
    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->access$000(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mClientGuid:Ljava/lang/String;

    .line 1403
    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->access$100(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mServerBday:Ljava/lang/String;

    .line 1404
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1394
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;
    .locals 5

    .prologue
    .line 1422
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mProgressMarkerToken:[B

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mClientGuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mServerBday:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;-><init>([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    return-object v0
.end method

.method public setClientGuid(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;
    .locals 0
    .parameter "clientGuid"

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mClientGuid:Ljava/lang/String;

    .line 1413
    return-object p0
.end method

.method public setProgressMarkerToken([B)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;
    .locals 0
    .parameter "progressMarker"

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mProgressMarkerToken:[B

    .line 1408
    return-object p0
.end method

.method public setServerBday(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;
    .locals 0
    .parameter "serverBday"

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->mServerBday:Ljava/lang/String;

    .line 1418
    return-object p0
.end method
