.class public Lcom/google/android/apps/uploader/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private date:Ljava/util/Date;

.field private id:J

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final resolver:Landroid/content/ContentResolver;

.field private size:J

.field private thumbnail:Landroid/graphics/Bitmap;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->resolver:Landroid/content/ContentResolver;

    .line 54
    return-void
.end method

.method private decodeThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 171
    iput-object v4, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 172
    iget-wide v0, p0, Lcom/google/android/apps/uploader/FileInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->resolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/apps/uploader/FileInfo;->id:J

    invoke-static {v0, v1, v2, v5, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 181
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->resolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/apps/uploader/FileInfo;->id:J

    invoke-static {v0, v1, v2, v5, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/android/apps/uploader/FileInfo;->size:J

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/google/android/apps/uploader/FileInfo;->decodeThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public retrieveFileProperties(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 97
    if-nez p1, :cond_0

    move v0, v9

    .line 167
    :goto_0
    return v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/uploader/FileInfo;->uri:Landroid/net/Uri;

    .line 102
    iput-object p2, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    .line 103
    iput-object v3, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 106
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    const-string v1, "_display_name"

    aput-object v1, v2, v10

    const/4 v1, 0x2

    const-string v4, "_size"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "mime_type"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const-string v4, "datetaken"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_7

    .line 116
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 117
    const-string v2, "_display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 118
    const-string v3, "_size"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 119
    const-string v4, "mime_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 120
    const-string v5, "datetaken"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 122
    if-le v1, v8, :cond_1

    .line 123
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/apps/uploader/FileInfo;->id:J

    .line 125
    :cond_1
    if-le v2, v8, :cond_2

    .line 126
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->name:Ljava/lang/String;

    .line 128
    :cond_2
    if-le v3, v8, :cond_3

    .line 129
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/uploader/FileInfo;->size:J

    .line 131
    :cond_3
    if-le v4, v8, :cond_4

    .line 132
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    .line 134
    :cond_4
    if-le v5, v8, :cond_5

    .line 135
    new-instance v1, Ljava/util/Date;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->date:Ljava/util/Date;

    .line 138
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 157
    :goto_1
    if-nez v0, :cond_6

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    iget-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->name:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 160
    if-lez v1, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/uploader/FileInfo;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_a

    iget-object v4, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    .line 167
    :cond_6
    if-nez v0, :cond_b

    move v0, v10

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v0, "MediaUploader"

    const-string v1, "Failed to retrieve file metadata."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 141
    goto :goto_1

    .line 144
    :cond_8
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->resolver:Landroid/content/ContentResolver;

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->name:Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/uploader/FileInfo;->size:J

    .line 150
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 154
    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "MediaUploader"

    const-string v2, "Failed to open/close file descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 153
    goto/16 :goto_1

    .line 160
    :cond_9
    const-string v1, ""

    goto :goto_2

    .line 162
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    goto :goto_3

    :cond_b
    move v0, v9

    .line 167
    goto/16 :goto_0

    :cond_c
    move v0, v9

    goto/16 :goto_1
.end method

.method public toUploadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/UploadInfo;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/FileInfo;->getThumbnail()Landroid/graphics/Bitmap;

    .line 87
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/uploader/FileInfo;->thumbnail:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 92
    :cond_0
    new-instance v0, Lcom/google/android/apps/uploader/UploadInfo;

    iget-object v1, p0, Lcom/google/android/apps/uploader/FileInfo;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/uploader/FileInfo;->mimeType:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/uploader/FileInfo;->name:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/apps/uploader/FileInfo;->size:J

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/uploader/UploadInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    return-object v0
.end method
