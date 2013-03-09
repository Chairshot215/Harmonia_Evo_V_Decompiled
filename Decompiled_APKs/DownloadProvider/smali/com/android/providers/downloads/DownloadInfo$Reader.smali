.class public Lcom/android/providers/downloads/DownloadInfo$Reader;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0
    .parameter "resolver"
    .parameter "cursor"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    .line 68
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    .line 69
    return-void
.end method

.method private addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "header"
    .parameter "value"

    .prologue
    .line 168
    #getter for: Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method private getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "column"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "column"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, index:I
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .end local v1           #s:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 134
    #getter for: Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "headers"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, headerUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 141
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    const-string v0, "header"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 144
    .local v8, headerIndex:I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 146
    .local v9, valueIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v8           #headerIndex:I
    .end local v9           #valueIndex:I
    :catch_0
    move-exception v7

    .line 151
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "downloadinfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump catch java exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    if-eqz v6, :cond_0

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "Cookie"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "Referer"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_2
    return-void

    .line 154
    .restart local v8       #headerIndex:I
    .restart local v9       #valueIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 154
    .end local v8           #headerIndex:I
    .end local v9           #valueIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)Lcom/android/providers/downloads/DownloadInfo;
    .locals 2
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    .line 72
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V

    .line 73
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 74
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 75
    return-object v0
.end method

.method public updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    const-string v2, "_id"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 80
    const-string v2, "uri"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    .line 81
    const-string v2, "no_integrity"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    .line 82
    const-string v2, "hint"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    .line 83
    const-string v2, "_data"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 84
    const-string v2, "mimetype"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 85
    const-string v2, "destination"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    .line 86
    const-string v2, "visibility"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    .line 87
    const-string v2, "status"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 88
    const-string v2, "numfailed"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    .line 89
    const-string v2, "method"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 90
    .local v1, retryRedirect:I
    const v2, 0xfffffff

    and-int/2addr v2, v1

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    .line 91
    const-string v2, "lastmod"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    .line 92
    const-string v2, "notificationpackage"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 93
    const-string v2, "notificationclass"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    .line 94
    const-string v2, "notificationextras"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    .line 95
    const-string v2, "cookiedata"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    .line 96
    const-string v2, "useragent"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 97
    const-string v2, "referer"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 98
    const-string v2, "total_bytes"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 99
    const-string v2, "current_bytes"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 100
    const-string v2, "etag"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    .line 101
    const-string v2, "uid"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    .line 102
    const-string v2, "scanned"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    .line 103
    const-string v2, "deleted"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    .line 104
    const-string v2, "mediaprovider_uri"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    .line 105
    const-string v2, "is_public_api"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    .line 106
    const-string v2, "allowed_network_types"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    .line 107
    const-string v2, "allow_roaming"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 108
    const-string v2, "title"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 109
    const-string v2, "description"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 110
    const-string v2, "bypass_recommended_size_limit"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    .line 115
    const-string v2, "otaupdate"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    :goto_4
    iput-boolean v3, p1, Lcom/android/providers/downloads/DownloadInfo;->mIsOTAUpdate:Z

    .line 116
    const-string v2, "restriction"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    .local v0, oriRestriction:I
    const v2, 0xffff

    and-int/2addr v2, v0

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    .line 119
    iget v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    const/high16 v2, 0xf

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    .line 124
    :goto_5
    const-string v2, "auth_header_name"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mAuthHeaderName:Ljava/lang/String;

    .line 125
    const-string v2, "auth_header_value"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mAuthHeaderValue:Ljava/lang/String;

    .line 126
    iput-boolean v4, p1, Lcom/android/providers/downloads/DownloadInfo;->mStorageInsufficient:Z

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    const-string v2, "control"

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    return-void

    .end local v0           #oriRestriction:I
    .end local v1           #retryRedirect:I
    :cond_0
    move v2, v4

    .line 81
    goto/16 :goto_0

    .restart local v1       #retryRedirect:I
    :cond_1
    move v2, v4

    .line 103
    goto/16 :goto_1

    :cond_2
    move v2, v4

    .line 105
    goto/16 :goto_2

    :cond_3
    move v2, v4

    .line 107
    goto :goto_3

    :cond_4
    move v3, v4

    .line 115
    goto :goto_4

    .line 122
    .restart local v0       #oriRestriction:I
    :cond_5
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    goto :goto_5

    .line 130
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
