.class public Lcom/android/mms/model/VideoModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "VideoModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoModel"


# instance fields
.field private mBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 61
    invoke-direct {p0, p2}, Lcom/android/mms/model/VideoModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 8
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v2, "video"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 55
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 70
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/android/mms/model/VideoModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p3, :cond_1

    const-string v0, "cid:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 72
    const-string v0, "$"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 73
    .local v7, pos:I
    if-lez v7, :cond_0

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 75
    :cond_0
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 80
    .end local v7           #pos:I
    :cond_1
    invoke-static {p4}, Lcom/android/mms/model/VideoModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {p1, p4}, Lcom/android/mms/ui/MessageUtils;->getPartName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    .line 82
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v2, "video"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 55
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/VideoModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 87
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 12
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 91
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 95
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 100
    .local v11, pos:I
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getAttachmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/android/mms/model/VideoModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->getCID(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/mms/model/VideoModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_0
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, filePath:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pos:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 127
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #pos:I
    :cond_1
    :try_start_3
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v8

    .line 131
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pos:I
    :cond_2
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #pos:I
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->initMediaDuration()V

    .line 163
    return-void

    .line 159
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pos:I
    :cond_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 196
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/mms/model/VideoModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 229
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020177

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/VideoModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 237
    :cond_1
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/mms/model/VideoModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 208
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020177

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/VideoModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 216
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .parameter "evt"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, evtType:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 173
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 175
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 190
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/VideoModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 191
    invoke-virtual {p0, v4}, Lcom/android/mms/model/VideoModel;->notifyModelChanged(Z)V

    .line 192
    return-void

    .line 176
    :cond_1
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 178
    iget-short v2, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v2, v3, :cond_0

    .line 179
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 181
    :cond_2
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 183
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 184
    :cond_3
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 186
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    .line 187
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method
