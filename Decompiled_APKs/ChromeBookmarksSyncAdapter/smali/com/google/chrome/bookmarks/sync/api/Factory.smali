.class public Lcom/google/chrome/bookmarks/sync/api/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/chrome/bookmarks/sync/api/Factory$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/chrome/bookmarks/sync/api/Factory$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/chrome/bookmarks/sync/api/Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/chrome/bookmarks/sync/api/Factory;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/Factory$Holder;->access$100()Lcom/google/chrome/bookmarks/sync/api/Factory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createSyncClient(Landroid/content/Context;ILjava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;
    .locals 2
    .parameter "context"
    .parameter "protocolVersion"
    .parameter "userAgent"

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;

    new-instance v1, Lcom/google/chrome/bookmarks/sync/api/Factory$1;

    invoke-direct {v1, p0, p1}, Lcom/google/chrome/bookmarks/sync/api/Factory$1;-><init>(Lcom/google/chrome/bookmarks/sync/api/Factory;Landroid/content/Context;)V

    invoke-direct {v0, v1, p2}, Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl;-><init>(Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
