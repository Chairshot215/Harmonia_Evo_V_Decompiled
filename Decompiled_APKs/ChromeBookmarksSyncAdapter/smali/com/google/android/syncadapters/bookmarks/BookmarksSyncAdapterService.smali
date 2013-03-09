.class public Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;
.super Landroid/app/Service;
.source "BookmarksSyncAdapterService.java"


# static fields
.field private static sSyncAdapter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    return-void
.end method

.method public static getOrMakeSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
    .locals 5
    .parameter "appContext"

    .prologue
    .line 29
    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 30
    :try_start_0
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;

    if-nez v1, :cond_0

    .line 31
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/Factory;->getInstance()Lcom/google/chrome/bookmarks/sync/api/Factory;

    move-result-object v1

    const/16 v3, 0x18

    const-string v4, "Android/1.0"

    invoke-virtual {v1, p0, v3, v4}, Lcom/google/chrome/bookmarks/sync/api/Factory;->createSyncClient(Landroid/content/Context;ILjava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    move-result-object v0

    .line 35
    .local v0, syncClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;
    new-instance v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;

    invoke-direct {v1, p0, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;)V

    sput-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;

    .line 37
    .end local v0           #syncClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;
    :cond_0
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;

    monitor-exit v2

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapterService;->getOrMakeSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
