.class public Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;
.super Lcom/htc/MediaCacheService/gallery/FileCache;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaCacheService/gallery/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheEntry"
.end annotation


# static fields
.field public static final BUCKET_DISPLAY_NAME_I:I = 0x2

.field public static final BUCKET_ID_I:I = 0x1

.field public static final DATA_IMAGES_I:I = 0x0

.field public static final DATE_MODIFIED_I:I = 0x2

.field public static final DATE_TAKEN_I:I = 0x1

.field public static final ID_I:I = 0x0

.field public static final IMAGES_BUCKET_DISPLAY_NAME_COLUMN_INDEX:I = 0x3

.field public static final IMAGES_BUCKET_ID_COLUMN_INDEX:I = 0x2

.field public static final IMAGES_DATA_COLUMN_INDEX:I = 0x1

.field public static final IMAGES_DATE_MODIFIED_COLUMN_INDEX:I = 0x5

.field public static final IMAGES_DATE_TAKEN_COLUMN_INDEX:I = 0x4

.field public static final IMAGES_FAVORITE_COLUMN_INDEX:I = 0x6

.field public static final IMAGES_ID_COLUMN_INDEX:I = 0x0

.field public static final IMAGES_MEDIAPROVIDER_PROJECTION:[Ljava/lang/String; = null

.field public static final IMAGES_MIME_TYPE_COLUMN_INDEX:I = 0x7

.field public static final IMAGES_ORIENTATION_COLUMN_INDEX:I = 0x8

.field public static final IMAGES_SIZE_COLUMN_INDEX:I = 0x9

.field public static final L_MAX:I = 0x4

.field public static final MIME_TYPE_I:I = 0x3

.field public static final SIZE_I:I = 0x3

.field public static final S_MAX:I = 0x4


# instance fields
.field public mArrL:[J

.field public mArrS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 237
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->IMAGES_MEDIAPROVIDER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>([J[Ljava/lang/String;I)V
    .locals 6
    .parameter "arLong"
    .parameter "arStr"
    .parameter "nEtryDefualtSate"

    .prologue
    const/4 v5, 0x4

    .line 284
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/FileCache;-><init>()V

    .line 268
    new-array v2, v5, [J

    iput-object v2, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    .line 276
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrS:[Ljava/lang/String;

    .line 286
    if-eqz p1, :cond_0

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    if-ge v0, v5, :cond_0

    .line 288
    iget-object v2, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    aget-wide v3, p1, v0

    aput-wide v3, v2, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0           #i:I
    :cond_0
    if-eqz p2, :cond_1

    .line 293
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 294
    iget-object v2, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrS:[Ljava/lang/String;

    aget-object v3, p2, v1

    aput-object v3, v2, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    .end local v1           #j:I
    :cond_1
    iput p3, p0, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I

    .line 299
    return-void
.end method

.method public static CreateMediaCacheContentValue([J[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 8
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 338
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "_id"

    aget-wide v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    const-string v1, "_data"

    aget-object v2, p1, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "bucket_id"

    aget-object v2, p1, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "bucket_display_name"

    aget-object v2, p1, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "datetaken"

    aget-wide v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string v1, "date_modified"

    aget-wide v2, p0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string v1, "mime_type"

    aget-object v2, p1, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "_size"

    aget-wide v2, p0, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    return-object v0
.end method

.method public static GetLongValue(Landroid/database/Cursor;)[J
    .locals 5
    .parameter "imgcur"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 310
    new-array v0, v4, [J

    .line 312
    .local v0, res:[J
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 313
    const/4 v1, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 314
    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 315
    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 320
    return-object v0
.end method

.method public static GetStringValue(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 6
    .parameter "imgcur"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 325
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 327
    .local v0, res:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 328
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 329
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 330
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 332
    return-object v0
.end method

.method public static SetData(Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;[J[Ljava/lang/String;)Z
    .locals 1
    .parameter "img"
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    .line 304
    iput-object p2, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrS:[Ljava/lang/String;

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public static compareFileCacheEntry(Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;[J[Ljava/lang/String;)Z
    .locals 8
    .parameter "f"
    .parameter "arLong"
    .parameter "arStr"

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 404
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v2

    .line 408
    :cond_1
    array-length v3, p1

    if-ne v3, v7, :cond_0

    .line 412
    array-length v3, p2

    if-ne v3, v7, :cond_0

    .line 416
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_2

    .line 417
    iget-object v3, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    aget-wide v3, v3, v0

    aget-wide v5, p1, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_2
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v7, :cond_3

    .line 424
    iget-object v3, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrS:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 428
    aget-object v3, p2, v1

    if-eqz v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 437
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static insertToCacheProvider(Landroid/content/IContentProvider;[J[Ljava/lang/String;)V
    .locals 4
    .parameter "cacheProvider"
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    .line 357
    if-nez p0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 362
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->CreateMediaCacheContentValue([J[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 364
    .local v1, map:Landroid/content/ContentValues;
    sget-object v2, Lcom/htc/MediaCacheService/main/MediaCacheStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p0, v2, v1}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v1           #map:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FileCache"

    const-string v3, "[MediaCacheScanner][insertToCacheProvider]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateToCacheProvider(Landroid/content/IContentProvider;Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;[J[Ljava/lang/String;)V
    .locals 7
    .parameter "cacheProvider"
    .parameter "entry"
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    .line 376
    if-nez p0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 381
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->CreateMediaCacheContentValue([J[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 382
    .local v1, map:Landroid/content/ContentValues;
    const-string v4, "_thumbnail"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "_id=?"

    .line 385
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 387
    .local v3, wheres:[Ljava/lang/String;
    sget-object v4, Lcom/htc/MediaCacheService/main/MediaCacheStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p0, v4, v1, v2, v3}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #wheres:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FileCache"

    const-string v5, "[MediaCacheScanner][insertToCacheProvider]"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
