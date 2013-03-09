.class Lcom/htc/opensense2/album/util/ImageManager$DrmImage;
.super Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImage"
.end annotation


# instance fields
.field private mbGetFrameCount:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "ctx"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 3883
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 3884
    invoke-direct/range {p0 .. p7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 3887
    return-void
.end method

.method private createToFile(Ljava/io/InputStream;)V
    .locals 8
    .parameter "is"

    .prologue
    .line 4028
    if-nez p1, :cond_1

    .line 4056
    :cond_0
    :goto_0
    return-void

    .line 4031
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v6, "temp.dat"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4032
    .local v3, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 4034
    .local v4, fs:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4035
    const-string v6, "DRM-"

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 4037
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #fs:Ljava/io/FileOutputStream;
    .local v5, fs:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 4042
    .end local v5           #fs:Ljava/io/FileOutputStream;
    .restart local v4       #fs:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 4046
    const/16 v6, 0x400

    :try_start_1
    new-array v1, v6, [B

    .line 4048
    .local v1, data:[B
    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 4049
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 4053
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 4054
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4038
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4039
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4051
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 4052
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 4059
    if-nez p1, :cond_1

    .line 4078
    :cond_0
    :goto_0
    return-object v4

    .line 4061
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4064
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 4066
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 4067
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 4070
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 4071
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memeory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    if-eqz v3, :cond_0

    .line 4078
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 4069
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4072
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_1
    move-exception v2

    .line 4073
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getGifFrame([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3973
    iget-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mbGetFrameCount:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 3974
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 3975
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3976
    new-instance v1, Landroid/webkit/GIFImageParser;

    invoke-direct {v1}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 3977
    .local v1, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {v1, p1}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 3978
    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mFrameCount:I

    .line 3980
    .end local v1           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mbGetFrameCount:Z

    .line 3982
    .end local v0           #mimeType:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 4182
    const/4 v1, 0x0

    .line 4184
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 4186
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4191
    :cond_0
    :goto_0
    return-object v1

    .line 4188
    :catch_0
    move-exception v0

    .line 4189
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 4169
    const/4 v1, 0x0

    .line 4171
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 4173
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4178
    :cond_0
    :goto_0
    return-object v1

    .line 4175
    :catch_0
    move-exception v0

    .line 4176
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public forceMakeThumbBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 4082
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 4084
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 4085
    const/4 v0, 0x0

    .line 4116
    :cond_0
    :goto_0
    return-object v0

    .line 4087
    :cond_1
    const/4 v0, 0x0

    .line 4090
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4091
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 4092
    .local v3, ret:I
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4094
    const/16 v4, -0xff

    if-eq v3, v4, :cond_2

    .line 4096
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 4097
    const/4 v0, 0x0

    .line 4107
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4113
    .end local v3           #ret:I
    :goto_1
    if-nez v0, :cond_0

    .line 4114
    const-string v4, "ImageManager"

    const-string v5, "can not created DRM miniThumbBitmap"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4108
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 4109
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "close InputStream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4100
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 4102
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of memory. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4107
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 4108
    :catch_2
    move-exception v1

    .line 4109
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "close InputStream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4106
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 4107
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4110
    :goto_2
    throw v4

    .line 4108
    :catch_3
    move-exception v1

    .line 4109
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close InputStream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getDateTaken()J
    .locals 3

    .prologue
    .line 4223
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 4228
    :goto_0
    return-wide v1

    .line 4224
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4225
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 4226
    :cond_1
    monitor-enter v0

    .line 4227
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4228
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 4229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDrmType()I
    .locals 3

    .prologue
    .line 4208
    const/4 v1, -0x1

    .line 4209
    .local v1, drmType:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4210
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 4216
    :goto_0
    return v2

    .line 4211
    :cond_0
    monitor-enter v0

    .line 4212
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4213
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->indexDeliveryType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4215
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 4216
    goto :goto_0

    .line 4215
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getFrameCount()I
    .locals 6

    .prologue
    .line 3894
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mbGetFrameCount:Z

    if-nez v3, :cond_0

    .line 3895
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decryptDrmMediaWithoutDialog()Ljava/io/InputStream;

    move-result-object v2

    .line 3896
    .local v2, is:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 3897
    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getGifFrame([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3905
    .end local v0           #data:[B
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mFrameCount:I

    return v3

    .line 3900
    :catch_0
    move-exception v1

    .line 3902
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFrameCount fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3957
    const/4 v0, -0x1

    .line 3958
    .local v0, height:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 3959
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v1

    .line 3960
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 3961
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3962
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3963
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3964
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3965
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 3968
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4196
    const/4 v1, 0x0

    .line 4197
    .local v1, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4198
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 4204
    :goto_0
    return-object v2

    .line 4199
    :cond_0
    monitor-enter v0

    .line 4200
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4201
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->indexMimeType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4203
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 4204
    goto :goto_0

    .line 4203
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3942
    const/4 v2, -0x1

    .line 3943
    .local v2, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 3944
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    .line 3945
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 3946
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3947
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3948
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3949
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3950
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3953
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v2
.end method

.method protected makeBitmap(ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "targetWidthHeight"
    .parameter "is"

    .prologue
    const/4 v8, 0x0

    .line 3909
    const/4 v0, 0x0

    .line 3911
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3914
    .local v3, lt1:J
    if-nez p2, :cond_1

    .line 3938
    :cond_0
    :goto_0
    return-object v8

    .line 3918
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 3919
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 3923
    invoke-direct {p0, v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getGifFrame([B)V

    .line 3924
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3925
    .local v7, source:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 3926
    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/htc/opensense2/album/util/MediaUtils;->compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3935
    .local v5, lt2:J
    if-eqz v0, :cond_2

    :cond_2
    move-object v8, v0

    .line 3938
    goto :goto_0

    .line 3927
    .end local v1           #data:[B
    .end local v5           #lt2:J
    .end local v7           #source:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 3928
    .local v2, ex:Ljava/io/IOException;
    const-string v9, "ImageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got io exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 3985
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 3987
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 3988
    const/4 v4, 0x0

    .line 4024
    :cond_0
    :goto_0
    return-object v4

    .line 3990
    :cond_1
    const/4 v4, 0x0

    .line 3993
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3994
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 3996
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 3998
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3999
    const/4 v0, 0x0

    .line 4002
    :cond_2
    if-eqz v0, :cond_3

    .line 4004
    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4005
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 4015
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4021
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 4022
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM miniThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4016
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 4017
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close input stream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4008
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 4010
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4015
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 4016
    :catch_2
    move-exception v1

    .line 4017
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close input stream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4014
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 4015
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4018
    :goto_2
    throw v5

    .line 4016
    :catch_3
    move-exception v1

    .line 4017
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    const-string v7, "close input stream fail"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 4120
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 4122
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 4123
    const/4 v4, 0x0

    .line 4164
    :cond_0
    :goto_0
    return-object v4

    .line 4125
    :cond_1
    const/4 v4, 0x0

    .line 4128
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4129
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 4131
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 4133
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4134
    const/4 v0, 0x0

    .line 4138
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->getDrmType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v8, :cond_4

    .line 4140
    move-object v4, v0

    .line 4155
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4161
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_2
    if-nez v4, :cond_0

    .line 4162
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM ThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4142
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :cond_4
    if-eqz v0, :cond_3

    .line 4144
    :try_start_2
    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 4148
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :catch_0
    move-exception v1

    .line 4150
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4155
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 4156
    :catch_1
    move-exception v1

    .line 4157
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close input stream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4156
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_2
    move-exception v1

    .line 4157
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close input stream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4154
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catchall_0
    move-exception v5

    .line 4155
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4158
    :goto_3
    throw v5

    .line 4156
    :catch_3
    move-exception v1

    .line 4157
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    const-string v7, "close input stream fail"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
