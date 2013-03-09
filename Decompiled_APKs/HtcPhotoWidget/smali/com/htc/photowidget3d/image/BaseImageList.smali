.class public abstract Lcom/htc/photowidget3d/image/BaseImageList;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/htc/photowidget3d/image/IImageList;


# static fields
.field private static final CACHE_CAPACITY:I = 0x200

.field private static final TAG:Ljava/lang/String; = "BaseImageList"

.field private static final sPathWithId:Ljava/util/regex/Pattern;


# instance fields
.field protected mBaseUri:Landroid/net/Uri;

.field protected mBucketId:Ljava/lang/String;

.field private final mCache:Lcom/htc/photowidget3d/image/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/photowidget3d/image/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/photowidget3d/image/BaseImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorDeactivated:Z

.field protected mSort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/image/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 75
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/photowidget3d/image/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)V
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "doCreateCursor"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Lcom/htc/photowidget3d/image/LruCache;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lcom/htc/photowidget3d/image/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCache:Lcom/htc/photowidget3d/image/LruCache;

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursorDeactivated:Z

    .line 49
    iput p3, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mSort:I

    .line 50
    iput-object p2, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 51
    iput-object p4, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBucketId:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    if-eqz p5, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->doCreateCursor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCache:Lcom/htc/photowidget3d/image/LruCache;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/image/LruCache;->clear()V

    .line 71
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "BaseImageList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A virtual folder found, bucket id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 136
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursorDeactivated:Z

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, path:Ljava/lang/String;
    sget-object v2, Lcom/htc/photowidget3d/image/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 193
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private isChildImageUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 202
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/image/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/image/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/image/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/photowidget3d/image/BaseImageList;->getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/image/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->invalidateCursor()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iput-object v3, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 98
    iput-object v3, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 100
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public contentUri(J)Landroid/net/Uri;
    .locals 5
    .parameter "id"

    .prologue
    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 109
    .local v1, existingId:J
    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const-string v3, "BaseImageList"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #existingId:J
    :goto_0
    return-object v3

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method protected abstract createCursor()Landroid/database/Cursor;
.end method

.method protected doCreateCursor()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 82
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "BaseImageList"

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 119
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 121
    :goto_0
    return v1

    .line 120
    :cond_0
    monitor-enter p0

    .line 121
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImageAt(I)Lcom/htc/photowidget3d/image/IImage;
    .locals 5
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v3, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCache:Lcom/htc/photowidget3d/image/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/image/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/photowidget3d/image/BaseImage;

    .line 142
    .local v1, result:Lcom/htc/photowidget3d/image/BaseImage;
    if-nez v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 144
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 152
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 145
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    monitor-enter p0

    .line 146
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/htc/photowidget3d/image/BaseImage;

    move-result-object v1

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCache:Lcom/htc/photowidget3d/image/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/htc/photowidget3d/image/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit p0

    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    move-object v2, v1

    .line 152
    goto :goto_0

    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    move-object v1, v2

    .line 146
    goto :goto_1

    .line 150
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/photowidget3d/image/IImage;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/image/BaseImageList;->isChildImageUri(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v3

    .line 213
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 219
    .local v4, matchId:J
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 220
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 221
    monitor-enter p0

    .line 222
    const/4 v6, -0x1

    :try_start_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 223
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 224
    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/BaseImageList;->getImageId(Landroid/database/Cursor;)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_3

    .line 225
    iget-object v6, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCache:Lcom/htc/photowidget3d/image/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/photowidget3d/image/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/photowidget3d/image/BaseImage;

    .line 226
    .local v3, image:Lcom/htc/photowidget3d/image/BaseImage;
    if-nez v3, :cond_2

    .line 227
    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/htc/photowidget3d/image/BaseImage;

    move-result-object v3

    .line 228
    iget-object v6, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCache:Lcom/htc/photowidget3d/image/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/htc/photowidget3d/image/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 234
    .end local v2           #i:I
    .end local v3           #image:Lcom/htc/photowidget3d/image/BaseImage;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 214
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v4           #matchId:J
    :catch_0
    move-exception v1

    .line 215
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v6, "BaseImageList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to get id in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #i:I
    .restart local v4       #matchId:J
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 233
    :cond_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract getImageId(Landroid/database/Cursor;)J
.end method

.method public getImageIndex(Lcom/htc/photowidget3d/image/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 238
    check-cast p1, Lcom/htc/photowidget3d/image/BaseImage;

    .end local p1
    iget v0, p1, Lcom/htc/photowidget3d/image/BaseImage;->mIndex:I

    return v0
.end method

.method protected invalidateCache()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCache:Lcom/htc/photowidget3d/image/LruCache;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/LruCache;->clear()V

    .line 186
    return-void
.end method

.method protected invalidateCursor()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mCursorDeactivated:Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadImageFromCursor(Landroid/database/Cursor;)Lcom/htc/photowidget3d/image/BaseImage;
.end method

.method public removeImage(Lcom/htc/photowidget3d/image/IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p1}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    check-cast p1, Lcom/htc/photowidget3d/image/BaseImage;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/photowidget3d/image/BaseImage;->onRemove()V

    .line 159
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->invalidateCursor()V

    .line 160
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImageList;->invalidateCache()V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/image/BaseImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/BaseImageList;->removeImage(Lcom/htc/photowidget3d/image/IImage;)Z

    move-result v0

    return v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    iget v2, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mSort:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v0, " ASC"

    .line 254
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 262
    .local v1, dateExpr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 247
    .end local v0           #ascending:Ljava/lang/String;
    .end local v1           #dateExpr:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method
