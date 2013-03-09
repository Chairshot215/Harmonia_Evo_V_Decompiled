.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getLocalIdFromRemoteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(JLandroid/content/ContentProviderClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-static {p0, p1, p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getRemoteIdFromLocalId(JLandroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalIdFromRemoteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;
    .locals 8
    .parameter "remoteId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2194
    const/4 v6, 0x0

    .line 2196
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "account_name=? AND account_type=? AND sourceid=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 2207
    :cond_0
    if-eqz v6, :cond_1

    .line 2208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    :cond_2
    :goto_0
    return-object v0

    .line 2205
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2207
    if-eqz v6, :cond_2

    .line 2208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2207
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getRemoteIdFromLocalId(JLandroid/content/ContentProviderClient;)Ljava/lang/String;
    .locals 8
    .parameter "localId"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2215
    const/4 v6, 0x0

    .line 2217
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "sourceid"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 2227
    :cond_0
    if-eqz v6, :cond_1

    .line 2228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    :cond_2
    :goto_0
    return-object v0

    .line 2225
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2227
    if-eqz v6, :cond_2

    .line 2228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2227
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
