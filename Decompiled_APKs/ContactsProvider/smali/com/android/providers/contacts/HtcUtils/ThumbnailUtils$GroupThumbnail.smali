.class public Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils$GroupThumbnail;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupThumbnail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteGroupThumbnail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, filepath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 152
    .local v0, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .restart local v0       #file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static renameThumbnailFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "oldTitle"
    .parameter "newTitle"

    .prologue
    .line 165
    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, oldfilepath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, oldfile:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-static {p2}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, newfilepath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, newfile:Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 171
    const/4 v4, 0x1

    .line 173
    .end local v0           #newfile:Ljava/io/File;
    .end local v1           #newfilepath:Ljava/lang/String;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static updateGroupThumbnailFile(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "jpegBytes"

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 234
    const/4 v3, 0x0

    .line 262
    :cond_0
    :goto_0
    return v3

    .line 236
    :cond_1
    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, filepath:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 238
    .local v2, index:I
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 244
    .local v3, result:Z
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 248
    :goto_1
    if-eqz v1, :cond_0

    .line 250
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 251
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    const/4 v3, 0x1

    .line 256
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 260
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v4

    .line 256
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 257
    :catch_1
    move-exception v4

    goto :goto_2

    .line 255
    :catchall_0
    move-exception v4

    .line 256
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 258
    :goto_3
    throw v4

    .line 245
    :catch_2
    move-exception v4

    goto :goto_1

    .line 257
    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_3
.end method

.method public static updateGroupThumbnailFileWithResize(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 10
    .parameter "context"
    .parameter "title"
    .parameter "jpegBytes"

    .prologue
    const/4 v8, 0x0

    .line 177
    if-nez p1, :cond_1

    move v6, v8

    .line 229
    :cond_0
    :goto_0
    return v6

    .line 180
    :cond_1
    const/4 v6, 0x0

    .line 181
    .local v6, result:Z
    sget v5, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    .line 182
    .local v5, nTargetSize:I
    invoke-static {p2, v5, v5}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 184
    .local v7, scaledBitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_2

    move v6, v8

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    const/4 v9, 0x0

    invoke-static {v7, v9, v5}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;[BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, centerBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move v6, v8

    .line 192
    goto :goto_0

    .line 195
    :cond_3
    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, filepath:Ljava/lang/String;
    const/16 v9, 0x2f

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 199
    .local v4, index:I
    add-int/lit8 v9, v4, 0x1

    :try_start_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 204
    const/4 v3, 0x0

    .line 207
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_4

    .line 209
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5f

    invoke-virtual {v0, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 214
    :cond_4
    if-eqz v3, :cond_5

    .line 216
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 220
    :goto_1
    const/4 v3, 0x0

    .line 223
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    .line 224
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    :cond_6
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 200
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v6, v8

    .line 201
    goto :goto_0

    .line 211
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    .line 214
    if-eqz v3, :cond_5

    .line 216
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 220
    :goto_3
    const/4 v3, 0x0

    goto :goto_2

    .line 214
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_7

    .line 216
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 220
    :goto_4
    const/4 v3, 0x0

    :cond_7
    throw v8

    .line 218
    :catch_2
    move-exception v9

    goto :goto_4

    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v8

    goto :goto_1
.end method
