.class public Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils$GroupThumbnail;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public static deleteThumbnailFile(JLandroid/content/Context;)V
    .locals 5
    .parameter "photoId"
    .parameter "context"

    .prologue
    .line 104
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .line 106
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->getThumbnailFile(JLandroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 107
    .local v1, thumbnailFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #thumbnailFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ThumbnailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteThumbnailFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getThumbnailFile(JLandroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "photoId"
    .parameter "context"

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getThumbnailName(J)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, thumbnailFileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, thumbnailFile:Ljava/io/File;
    return-object v0
.end method

.method public static updatePeopleThumbnail(J[B[BLandroid/content/Context;)Z
    .locals 5
    .parameter "photoId"
    .parameter "data"
    .parameter "overlay"
    .parameter "context"

    .prologue
    .line 52
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gtz v3, :cond_0

    if-eqz p2, :cond_2

    .line 53
    :cond_0
    sget v1, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    .line 54
    .local v1, nTargetSize:I
    invoke-static {p2, v1, v1}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 56
    .local v2, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, p3, v1}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;[BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, centerBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 60
    invoke-static {p0, p1, v2, p4}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->updateThumbnail(JLandroid/graphics/Bitmap;Landroid/content/Context;)Z

    .line 65
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    :cond_1
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    .end local v0           #centerBitmap:Landroid/graphics/Bitmap;
    .end local v1           #nTargetSize:I
    .end local v2           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 62
    .restart local v0       #centerBitmap:Landroid/graphics/Bitmap;
    .restart local v1       #nTargetSize:I
    .restart local v2       #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p0, p1, v0, p4}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->updateThumbnail(JLandroid/graphics/Bitmap;Landroid/content/Context;)Z

    goto :goto_0
.end method

.method private static updateThumbnail(JLandroid/graphics/Bitmap;Landroid/content/Context;)Z
    .locals 2
    .parameter "photoId"
    .parameter "bp"
    .parameter "context"

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 81
    invoke-static {p0, p1, p3}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->deleteThumbnailFile(JLandroid/content/Context;)V

    .line 86
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 83
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->getThumbnailFile(JLandroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 84
    .local v0, thumbnailFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->updateToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_0
.end method

.method private static updateToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .parameter "bp"
    .parameter "fileName"
    .parameter "context"

    .prologue
    .line 117
    if-nez p0, :cond_1

    .line 118
    const/4 v3, 0x0

    .line 142
    :cond_0
    :goto_0
    return v3

    .line 121
    :cond_1
    const/4 v3, 0x0

    .line 122
    .local v3, result:Z
    const/4 v2, 0x0

    .line 124
    .local v2, output:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 126
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    const/4 v3, 0x1

    .line 133
    if-eqz v2, :cond_0

    .line 135
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e2:Ljava/io/IOException;
    const-string v4, "ThumbnailUtils"

    const-string v5, "fail to close output stream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v1           #e2:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, e1:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "ThumbnailUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file can not open for write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    if-eqz v2, :cond_0

    .line 135
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 137
    :catch_2
    move-exception v1

    .line 138
    .restart local v1       #e2:Ljava/io/IOException;
    const-string v4, "ThumbnailUtils"

    const-string v5, "fail to close output stream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0           #e1:Ljava/io/FileNotFoundException;
    .end local v1           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 135
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 139
    :cond_2
    :goto_1
    throw v4

    .line 137
    :catch_3
    move-exception v1

    .line 138
    .restart local v1       #e2:Ljava/io/IOException;
    const-string v5, "ThumbnailUtils"

    const-string v6, "fail to close output stream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
