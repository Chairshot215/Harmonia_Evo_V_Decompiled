.class public Lcom/htc/photowidget3d/image/ImageList;
.super Lcom/htc/photowidget3d/image/BaseImageList;
.source "ImageList.java"

# interfaces
.implements Lcom/htc/photowidget3d/image/IImageList;


# static fields
.field public static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String; = null

.field static final IMAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final INDEX_DATA_PATH:I = 0x1

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x2

.field private static final INDEX_FILE_SIZE:I = 0x8

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MIME_TYPE:I = 0x6

.field private static final INDEX_MINI_THUMB_MAGIC:I = 0x3

.field private static final INDEX_ORIENTATION:I = 0x4

.field private static final INDEX_TITLE:I = 0x5

.field public static final MIME_3D_TYPES:[Ljava/lang/String; = null

.field public static final MIME_IMAGE_JPS:Ljava/lang/String; = "image/jps"

.field public static final MIME_IMAGE_MPO:Ljava/lang/String; = "image/mpo"

.field public static final SQL_ALBUMART_FILTER:Ljava/lang/String; = "( (NOT _display_name LIKE \'cover%\') AND (_size> 0)  AND (NOT _display_name LIKE \'front.jpg\') AND (NOT _display_name LIKE \'back.jpg\') AND (NOT _display_name LIKE \'CD.jpg\') AND (NOT _display_name LIKE \'Cover.jpg\') AND (NOT _display_name LIKE \'~htc%\') AND (NOT _data LIKE \'%/My Music/%\') AND (NOT _data LIKE \'%/Music/%\') AND (NOT _display_name LIKE \'folder%\') AND (NOT _display_name LIKE \'AlbumArt%\'))"

.field private static final TAG:Ljava/lang/String; = "ImageList"

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "((mime_type in (?, ?, ?, ?, ?, ?, ?, ?)) AND ( (NOT _display_name LIKE \'cover%\') AND (_size> 0)  AND (NOT _display_name LIKE \'front.jpg\') AND (NOT _display_name LIKE \'back.jpg\') AND (NOT _display_name LIKE \'CD.jpg\') AND (NOT _display_name LIKE \'Cover.jpg\') AND (NOT _display_name LIKE \'~htc%\') AND (NOT _data LIKE \'%/My Music/%\') AND (NOT _data LIKE \'%/Music/%\') AND (NOT _display_name LIKE \'folder%\') AND (NOT _display_name LIKE \'AlbumArt%\')))"

.field private static final WHERE_CLAUSE_WITH_BUCKET_ID:Ljava/lang/String; = "((mime_type in (?, ?, ?, ?, ?, ?, ?, ?)) AND ( (NOT _display_name LIKE \'cover%\') AND (_size> 0)  AND (NOT _display_name LIKE \'front.jpg\') AND (NOT _display_name LIKE \'back.jpg\') AND (NOT _display_name LIKE \'CD.jpg\') AND (NOT _display_name LIKE \'Cover.jpg\') AND (NOT _display_name LIKE \'~htc%\') AND (NOT _data LIKE \'%/My Music/%\') AND (NOT _data LIKE \'%/Music/%\') AND (NOT _display_name LIKE \'folder%\') AND (NOT _display_name LIKE \'AlbumArt%\'))) AND bucket_id = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "image/mpo"

    aput-object v1, v0, v3

    const-string v1, "image/jps"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/photowidget3d/image/ImageList;->MIME_3D_TYPES:[Ljava/lang/String;

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v3

    const-string v1, "image/png"

    aput-object v1, v0, v4

    const-string v1, "image/gif"

    aput-object v1, v0, v5

    const-string v1, "image/bmp"

    aput-object v1, v0, v6

    const-string v1, "image/vnd.wap.wbmp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image/x-ms-bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image/jps"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image/mpo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/photowidget3d/image/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    .line 124
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "datetaken"

    aput-object v1, v0, v5

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v6

    const-string v1, "orientation"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/photowidget3d/image/ImageList;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/photowidget3d/image/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)V
    .locals 0
    .parameter "resolver"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "doCreateCoursor"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/htc/photowidget3d/image/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)V

    .line 79
    return-void
.end method


# virtual methods
.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/htc/photowidget3d/image/ImageList;->IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v4

    const-string v3, "bucket_id"

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 57
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v7, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    .end local v7           #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7
.end method

.method protected getImageId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected loadImageFromCursor(Landroid/database/Cursor;)Lcom/htc/photowidget3d/image/BaseImage;
    .locals 18
    .parameter "cursor"

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    .line 155
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 156
    .local v4, id:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, dataPath:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 158
    .local v10, dateTaken:J
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    mul-long v12, v1, v6

    .line 159
    .local v12, dateModified:J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-nez v1, :cond_1

    .line 160
    move-wide v10, v12

    .line 162
    :cond_1
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 163
    .local v17, orientation:I
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 164
    .local v16, title:Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, mimeType:Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 166
    :cond_2
    move-object/from16 v16, v8

    .line 168
    :cond_3
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v14, v1

    .line 169
    .local v14, fileSize:J
    new-instance v1, Lcom/htc/photowidget3d/image/Image;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/photowidget3d/image/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/photowidget3d/image/ImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v17}, Lcom/htc/photowidget3d/image/Image;-><init>(Lcom/htc/photowidget3d/image/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V

    goto :goto_0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "((mime_type in (?, ?, ?, ?, ?, ?, ?, ?)) AND ( (NOT _display_name LIKE \'cover%\') AND (_size> 0)  AND (NOT _display_name LIKE \'front.jpg\') AND (NOT _display_name LIKE \'back.jpg\') AND (NOT _display_name LIKE \'CD.jpg\') AND (NOT _display_name LIKE \'Cover.jpg\') AND (NOT _display_name LIKE \'~htc%\') AND (NOT _data LIKE \'%/My Music/%\') AND (NOT _data LIKE \'%/Music/%\') AND (NOT _display_name LIKE \'folder%\') AND (NOT _display_name LIKE \'AlbumArt%\')))"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "((mime_type in (?, ?, ?, ?, ?, ?, ?, ?)) AND ( (NOT _display_name LIKE \'cover%\') AND (_size> 0)  AND (NOT _display_name LIKE \'front.jpg\') AND (NOT _display_name LIKE \'back.jpg\') AND (NOT _display_name LIKE \'CD.jpg\') AND (NOT _display_name LIKE \'Cover.jpg\') AND (NOT _display_name LIKE \'~htc%\') AND (NOT _data LIKE \'%/My Music/%\') AND (NOT _data LIKE \'%/Music/%\') AND (NOT _display_name LIKE \'folder%\') AND (NOT _display_name LIKE \'AlbumArt%\'))) AND bucket_id = ?"

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/htc/photowidget3d/image/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    array-length v0, v2

    .line 108
    .local v0, count:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 109
    .local v1, result:[Ljava/lang/String;
    sget-object v2, Lcom/htc/photowidget3d/image/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImageList;->mBucketId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 113
    .end local v0           #count:I
    .end local v1           #result:[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/photowidget3d/image/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    goto :goto_0
.end method
