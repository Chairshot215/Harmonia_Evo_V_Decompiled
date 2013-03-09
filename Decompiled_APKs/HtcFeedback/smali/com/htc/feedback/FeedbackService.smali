.class public Lcom/htc/feedback/FeedbackService;
.super Landroid/app/IntentService;
.source "FeedbackService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FeedbackService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "FeedbackService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private Encrypt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 225
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v14, src:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v6, dst:Ljava/io/File;
    const/4 v11, 0x0

    .line 229
    .local v11, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 231
    .local v3, bos:Ljava/io/BufferedOutputStream;
    const/4 v9, 0x0

    .line 232
    .local v9, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 235
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 236
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 237
    .local v13, os:Ljava/io/OutputStream;
    const/4 v15, 0x1

    :try_start_1
    sget-object v16, Lcom/htc/feedback/PreviewInfoActivity;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    move-object/from16 v0, v16

    invoke-static {v12, v15, v0}, Lcom/htc/utils/ulog/io/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v13

    .line 238
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 240
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .local v4, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 241
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 243
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/16 v15, 0x1000

    :try_start_4
    new-array v5, v15, [B

    .line 244
    .local v5, buffer:[B
    const/4 v8, 0x0

    .line 245
    .local v8, endLength:I
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v15, -0x1

    if-eq v8, v15, :cond_2

    .line 246
    const/4 v15, 0x0

    invoke-virtual {v4, v5, v15, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 255
    .end local v5           #buffer:[B
    .end local v8           #endLength:I
    :catch_0
    move-exception v7

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .line 256
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #os:Ljava/io/OutputStream;
    .local v7, e:Ljava/lang/Exception;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_5
    const-string v15, "FeedbackService"

    const-string v16, "error encryption"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    if-eqz v3, :cond_0

    .line 260
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 261
    :cond_0
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 263
    :cond_1
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 269
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 248
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #buffer:[B
    .restart local v8       #endLength:I
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/OutputStream;
    :cond_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 250
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 251
    const/4 v3, 0x0

    .line 252
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 253
    const/4 v1, 0x0

    .line 259
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    if-eqz v3, :cond_3

    .line 260
    :try_start_9
    throw v3

    .line 261
    :cond_3
    if-eqz v1, :cond_4

    .line 262
    throw v1

    .line 263
    :cond_4
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .line 266
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 264
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v15

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .line 267
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 258
    .end local v5           #buffer:[B
    .end local v8           #endLength:I
    .end local v13           #os:Ljava/io/OutputStream;
    :catchall_0
    move-exception v15

    .line 259
    :goto_3
    if-eqz v3, :cond_5

    .line 260
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 261
    :cond_5
    if-eqz v1, :cond_6

    .line 262
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 263
    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 266
    :goto_4
    throw v15

    .line 264
    :catch_2
    move-exception v16

    goto :goto_4

    .line 258
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v15

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v15

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v15

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v8       #endLength:I
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v15

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 264
    .end local v5           #buffer:[B
    .end local v8           #endLength:I
    .end local v13           #os:Ljava/io/OutputStream;
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v15

    goto :goto_2

    .line 255
    .end local v7           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v7

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v8       #endLength:I
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v7

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private checkTombstone(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .parameter "tombstone"
    .parameter "target"

    .prologue
    .line 274
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 275
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 276
    .local v4, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 278
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 279
    .local v1, counter:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, str:Ljava/lang/String;
    if-eqz v5, :cond_1

    const/4 v6, 0x3

    if-ge v1, v6, :cond_1

    .line 280
    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    const/4 v6, 0x1

    .line 289
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #counter:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    .end local v5           #str:Ljava/lang/String;
    :goto_1
    return v6

    .line 283
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #counter:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    .restart local v5       #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #counter:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    .end local v5           #str:Ljava/lang/String;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "FeedbackService"

    const-string v7, "Exception in check tombstone exist "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private composeLog(Landroid/os/DropBoxManager;Ljava/lang/String;JLandroid/os/DropBoxManager$Entry;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "dbox"
    .parameter "tag"
    .parameter "time"
    .parameter "entry"
    .parameter "file"
    .parameter "name"
    .parameter "tombstoneProcess"

    .prologue
    .line 167
    const/4 v13, 0x0

    .line 168
    .local v13, path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 169
    .local v10, is:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 171
    .local v16, zip:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    const-string v18, "logs"

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/feedback/FeedbackService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 172
    .local v5, dir:Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/logs."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".zip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 173
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/tmp.zip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, tmp:Ljava/lang/String;
    new-instance v17, Ljava/util/zip/ZipOutputStream;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v17 .. v18}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    .end local v16           #zip:Ljava/util/zip/ZipOutputStream;
    .local v17, zip:Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    sget-object v19, Lcom/htc/feedback/PreviewInfoActivity;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static/range {v18 .. v19}, Lcom/htc/utils/ulog/io/LogStream;->concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;

    move-result-object v10

    .line 176
    const/4 v11, 0x0

    .line 177
    .local v11, isEncrypted:Z
    if-eqz v10, :cond_2

    .line 178
    const/4 v11, 0x1

    .line 179
    const-string v18, "Logfile"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v10}, Lcom/htc/feedback/FeedbackService;->compressLog(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 185
    :goto_0
    if-eqz p6, :cond_0

    .line 186
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p7

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/feedback/FeedbackService;->compressLog(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 188
    :cond_0
    if-eqz p8, :cond_4

    .line 189
    new-instance v15, Ljava/io/File;

    const-string v18, "/data/tombstones/"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v15, tombstoneDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 191
    .local v8, files:[Ljava/io/File;
    if-eqz v8, :cond_4

    .line 192
    move-object v4, v8

    .local v4, arr$:[Ljava/io/File;
    array-length v12, v4

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_4

    aget-object v7, v4, v9

    .line 193
    .local v7, f:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v7, v1}, Lcom/htc/feedback/FeedbackService;->checkTombstone(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 194
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/feedback/FeedbackService;->compressLog(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 192
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 181
    .end local v4           #arr$:[Ljava/io/File;
    .end local v7           #f:Ljava/io/File;
    .end local v8           #files:[Ljava/io/File;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v15           #tombstoneDir:Ljava/io/File;
    :cond_2
    invoke-virtual/range {p1 .. p4}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object p5

    .line 182
    const-string v18, "Logfile"

    invoke-virtual/range {p5 .. p5}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/feedback/FeedbackService;->compressLog(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 209
    .end local v11           #isEncrypted:Z
    :catch_0
    move-exception v6

    move-object/from16 v16, v17

    .line 210
    .end local v5           #dir:Ljava/io/File;
    .end local v14           #tmp:Ljava/lang/String;
    .end local v17           #zip:Ljava/util/zip/ZipOutputStream;
    .local v6, ex:Ljava/lang/Exception;
    .restart local v16       #zip:Ljava/util/zip/ZipOutputStream;
    :goto_2
    const-string v18, "FeedbackService"

    const-string v19, "error in send report "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    if-eqz v13, :cond_3

    .line 213
    :try_start_2
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 214
    if-eqz v16, :cond_3

    .line 215
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    :cond_3
    :goto_3
    const/4 v13, 0x0

    .line 221
    .end local v6           #ex:Ljava/lang/Exception;
    :goto_4
    return-object v13

    .line 199
    .end local v16           #zip:Ljava/util/zip/ZipOutputStream;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v11       #isEncrypted:Z
    .restart local v14       #tmp:Ljava/lang/String;
    .restart local v17       #zip:Ljava/util/zip/ZipOutputStream;
    :cond_4
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 200
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 202
    if-eqz v11, :cond_6

    .line 203
    const-string v18, "FeedbackService"

    const-string v19, "File is encrypted"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/htc/feedback/FeedbackService;->Encrypt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    move-object/from16 v16, v17

    .line 220
    .end local v17           #zip:Ljava/util/zip/ZipOutputStream;
    .restart local v16       #zip:Ljava/util/zip/ZipOutputStream;
    goto :goto_4

    .line 206
    .end local v16           #zip:Ljava/util/zip/ZipOutputStream;
    .restart local v17       #zip:Ljava/util/zip/ZipOutputStream;
    :cond_6
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v18

    if-nez v18, :cond_5

    .line 207
    move-object v13, v14

    goto :goto_5

    .line 216
    .end local v5           #dir:Ljava/io/File;
    .end local v11           #isEncrypted:Z
    .end local v14           #tmp:Ljava/lang/String;
    .end local v17           #zip:Ljava/util/zip/ZipOutputStream;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v16       #zip:Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v18

    goto :goto_3

    .line 209
    .end local v6           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method private compressLog(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .parameter "zip"
    .parameter "name"
    .parameter "in"

    .prologue
    .line 293
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, zipEntry:Ljava/util/zip/ZipEntry;
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 296
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 297
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 298
    .local v2, size:I
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x1000

    invoke-virtual {p3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 299
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v0           #buffer:[B
    .end local v2           #size:I
    :catch_0
    move-exception v1

    .line 304
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "FeedbackService"

    const-string v5, "error in compressLog "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v1           #ex:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 301
    .restart local v0       #buffer:[B
    .restart local v2       #size:I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 302
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 40
    .parameter "intent"

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 43
    .local v4, tag:Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 44
    .local v5, time:J
    const/16 v34, 0x0

    .line 45
    .local v34, radio:Ljava/lang/String;
    new-instance v36, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.BUGREPORT"

    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v36, reportIntent:Landroid/content/Intent;
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 48
    const-string v2, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    check-cast v35, Landroid/app/ApplicationErrorReport;

    .line 49
    .local v35, report:Landroid/app/ApplicationErrorReport;
    if-nez v35, :cond_4

    .line 50
    const-string v2, "log_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    .line 52
    .local v25, bundle:Landroid/os/Bundle;
    const-string v2, "file"

    const-string v9, "log_path"

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .end local v25           #bundle:Landroid/os/Bundle;
    :goto_0
    const-string v4, "LASTKMSG"

    .line 57
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 142
    :cond_0
    :goto_1
    const-string v2, "send_location"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->getLocationInformation()Ljava/lang/String;

    move-result-object v34

    .line 144
    const-string v2, "radio"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_1
    const-string v2, "tag"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "time"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    const-string v2, "com.htc.permission.FEEDBACK_PROTECT"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/htc/feedback/FeedbackService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 152
    const-string v2, "FeedbackService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send intent tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.updater.NOTIFY_SEND"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/feedback/FeedbackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    const-string v2, "runtime.tell_htc.sync_checkin"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 156
    .local v38, syncProp:Ljava/lang/String;
    const-string v2, "yes"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v32, 0x1

    .line 157
    .local v32, isSyncCheckin:Z
    :goto_2
    if-eqz v32, :cond_2

    if-eqz v35, :cond_2

    .line 158
    const-string v2, "FeedbackService"

    const-string v9, "get runtime.tell_htc.sync_checkin"

    invoke-static {v2, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    move-object/from16 v0, v35

    iget v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_11

    .line 160
    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_ANR_NUM:Lcom/htc/utils/ulog/ULogTags;

    move-object/from16 v0, v35

    iget-object v9, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    const-string v10, "1"

    invoke-static {v2, v9, v10}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v32           #isSyncCheckin:Z
    .end local v38           #syncProp:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 54
    :cond_3
    const-string v2, "file"

    const-string v9, "/proc/last_kmsg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 59
    :cond_4
    move-object/from16 v37, v35

    .line 60
    .local v37, reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    invoke-interface/range {v37 .. v37}, Landroid/app/HtcIfApplicationErrorReport;->getDropBoxTag()Ljava/lang/String;

    move-result-object v4

    .line 61
    move-object/from16 v0, v35

    iget-wide v5, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 63
    const-string v2, "dropbox"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/feedback/FeedbackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 64
    .local v3, dbox:Landroid/os/DropBoxManager;
    const/4 v7, 0x0

    .line 66
    .local v7, entry:Landroid/os/DropBoxManager$Entry;
    const/16 v26, 0x0

    .line 67
    .local v26, count:I
    :cond_5
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v7

    if-nez v7, :cond_6

    .line 69
    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_4
    add-int/lit8 v26, v26, 0x1

    const/16 v2, 0x78

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    .line 77
    :cond_6
    if-nez v7, :cond_7

    .line 79
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v7

    .line 80
    if-nez v7, :cond_7

    .line 81
    const-string v2, "FeedbackService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot get entry from dbox, skip. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 70
    :catch_0
    move-exception v29

    .line 71
    .local v29, e:Ljava/lang/InterruptedException;
    const-string v2, "FeedbackService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interrupt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 86
    .end local v29           #e:Ljava/lang/InterruptedException;
    :cond_7
    const/16 v33, 0x0

    .line 87
    .local v33, path:Ljava/lang/String;
    const-string v2, "extra"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 89
    .local v30, extraName:Ljava/lang/String;
    const/16 v31, 0x0

    .line 90
    .local v31, hprofFileName:Ljava/lang/String;
    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_8

    .line 91
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v27, v0

    .line 92
    .local v27, crashInfo:Landroid/app/HtcIfApplicationErrorReport$CrashInfo;
    invoke-interface/range {v27 .. v27}, Landroid/app/HtcIfApplicationErrorReport$CrashInfo;->getHprofFileName()Ljava/lang/String;

    move-result-object v31

    .line 94
    .end local v27           #crashInfo:Landroid/app/HtcIfApplicationErrorReport$CrashInfo;
    :cond_8
    const-string v2, "dumpstate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 98
    .local v28, dumpstateFile:Ljava/lang/String;
    move-object/from16 v0, v35

    iget v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_c

    .line 99
    new-instance v39, Ljava/io/File;

    const-string v2, "/data/tombstones/"

    move-object/from16 v0, v39

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v39, tombstoneDir:Ljava/io/File;
    if-nez v28, :cond_a

    const/4 v8, 0x0

    .line 101
    .local v8, bugreportFile:Ljava/io/File;
    :goto_5
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 102
    const-string v9, "dumpstate.txt.gz"

    move-object/from16 v0, v35

    iget-object v10, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/htc/feedback/FeedbackService;->composeLog(Landroid/os/DropBoxManager;Ljava/lang/String;JLandroid/os/DropBoxManager$Entry;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 106
    :goto_6
    if-eqz v28, :cond_9

    .line 107
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 119
    .end local v8           #bugreportFile:Ljava/io/File;
    .end local v39           #tombstoneDir:Ljava/io/File;
    :cond_9
    :goto_7
    if-eqz v33, :cond_f

    .line 120
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v33

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v11, zipFile:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 125
    .local v13, entryStartTime:J
    const/16 v12, 0x8

    move-object v9, v3

    move-object v10, v4

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    move-wide v5, v13

    .line 130
    :goto_8
    const-string v2, "file"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 131
    const-string v2, "fromDropBox"

    const/4 v9, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    .end local v11           #zipFile:Ljava/io/File;
    .end local v13           #entryStartTime:J
    :goto_9
    if-eqz v7, :cond_0

    .line 138
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_1

    .line 100
    .restart local v39       #tombstoneDir:Ljava/io/File;
    :cond_a
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 104
    .restart local v8       #bugreportFile:Ljava/io/File;
    :cond_b
    const-string v9, "dumpstate.txt.gz"

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/htc/feedback/FeedbackService;->composeLog(Landroid/os/DropBoxManager;Ljava/lang/String;JLandroid/os/DropBoxManager$Entry;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_6

    .line 108
    .end local v8           #bugreportFile:Ljava/io/File;
    .end local v39           #tombstoneDir:Ljava/io/File;
    :cond_c
    move-object/from16 v0, v35

    iget v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_d

    if-eqz v31, :cond_d

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "userdebug"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 110
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v31

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v15, hprofFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v4

    move-wide v12, v5

    move-object v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/htc/feedback/FeedbackService;->composeLog(Landroid/os/DropBoxManager;Ljava/lang/String;JLandroid/os/DropBoxManager$Entry;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 112
    goto :goto_7

    .end local v15           #hprofFile:Ljava/io/File;
    :cond_d
    move-object/from16 v0, v35

    iget v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    if-nez v2, :cond_e

    if-eqz v30, :cond_e

    .line 113
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v22, extraFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v24}, Lcom/htc/feedback/FeedbackService;->composeLog(Landroid/os/DropBoxManager;Ljava/lang/String;JLandroid/os/DropBoxManager$Entry;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 115
    goto/16 :goto_7

    .line 116
    .end local v22           #extraFile:Ljava/io/File;
    :cond_e
    const-string v2, "fromDropBox"

    const/4 v9, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_7

    .line 127
    .restart local v11       #zipFile:Ljava/io/File;
    .restart local v13       #entryStartTime:J
    :catch_1
    move-exception v29

    .line 128
    .local v29, e:Ljava/lang/Exception;
    const-string v2, "FeedbackService"

    const-string v9, "Can\'t be added to DropboxManager"

    move-object/from16 v0, v29

    invoke-static {v2, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 133
    .end local v11           #zipFile:Ljava/io/File;
    .end local v13           #entryStartTime:J
    .end local v29           #e:Ljava/lang/Exception;
    :cond_f
    const-string v2, "file"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 134
    const-string v2, "fromDropBox"

    const/4 v9, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_9

    .line 156
    .end local v3           #dbox:Landroid/os/DropBoxManager;
    .end local v7           #entry:Landroid/os/DropBoxManager$Entry;
    .end local v26           #count:I
    .end local v28           #dumpstateFile:Ljava/lang/String;
    .end local v30           #extraName:Ljava/lang/String;
    .end local v31           #hprofFileName:Ljava/lang/String;
    .end local v33           #path:Ljava/lang/String;
    .end local v37           #reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    .restart local v38       #syncProp:Ljava/lang/String;
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 161
    .restart local v32       #isSyncCheckin:Z
    :cond_11
    move-object/from16 v0, v35

    iget v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 162
    sget-object v2, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_CRASH_NUM:Lcom/htc/utils/ulog/ULogTags;

    move-object/from16 v0, v35

    iget-object v9, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    const-string v10, "1"

    invoke-static {v2, v9, v10}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
