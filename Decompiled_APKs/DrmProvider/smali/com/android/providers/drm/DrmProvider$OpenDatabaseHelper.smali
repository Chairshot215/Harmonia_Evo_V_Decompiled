.class final Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DrmProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/drm/DrmProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "drm.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final DRM_DATABASE_DEFAULT_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.providers.drm/databases"

.field private static final DRM_DEFAULT_DIRECTORY_1:Ljava/lang/String; = "/data/local/rights"

.field private static final DRM_DEFAULT_DIRECTORY_2:Ljava/lang/String; = "/data/drm/rights"

.field private static final DRM_PROVIDER_DEFAULT_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.providers.drm"

.field private static final DRM_PROVIDER_NEW_RIGHTS_FOLDER:Ljava/lang/String; = "rights"


# instance fields
.field final synthetic this$0:Lcom/android/providers/drm/DrmProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/drm/DrmProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    .line 110
    const-string v0, "drm.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 111
    return-void
.end method

.method private changeContentIdValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 13
    .parameter "db"
    .parameter "table"

    .prologue
    .line 203
    const/4 v9, 0x1

    .line 204
    .local v9, result:Z
    const/4 v0, 0x0

    .line 205
    .local v0, c:Landroid/database/Cursor;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 213
    .local v8, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "select _id,content_id from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, sqlCommand:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    :cond_0
    :try_start_0
    const-string v11, "_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 229
    .local v5, idColumnIndex:I
    const-string v11, "content_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, contentIdColumnIndex:I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, id:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, originalValue:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 235
    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 236
    const-string v11, "/"

    const-string v12, "\\"

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, newValue:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " set "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "content_id"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' where "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_id"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 241
    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    .end local v6           #newValue:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_0

    .line 266
    .end local v1           #contentIdColumnIndex:I
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #idColumnIndex:I
    .end local v7           #originalValue:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 268
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :cond_3
    :goto_1
    return v9

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, " @@@@@  ERROR: update database failed!!! (onUpgrade)"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, " @@@@@  ERROR: Handle Exception Complete!!! (onUpgrade)"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v9, 0x0

    goto :goto_0

    .line 269
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 271
    .restart local v2       #e:Ljava/lang/Exception;
    const-wide/16 v11, 0x12c

    :try_start_2
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 273
    :catch_2
    move-exception v3

    .line 274
    .local v3, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, " @@@@@  ERROR: close cursor failed!!! (onUpgrade)"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, " @@@@@  ERROR: Handle Exception Complete!!! (onUpgrade)-5"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private checkOriginalDrmDirectory()Z
    .locals 6

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, result:Z
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/local/rights/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, checkDirectory:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    const-string v4, "tmp111"

    const-string v5, "111"

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 328
    .local v3, tempFile:Ljava/io/File;
    const/4 v2, 0x1

    .line 329
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v3           #tempFile:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private copyFilesToNewDrmDirectory()V
    .locals 22

    .prologue
    .line 339
    new-instance v19, Ljava/io/File;

    const-string v4, "/data/local/rights/"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v19, srcDirectory:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v4, "/data/data/com.android.providers.drm/rights/"

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v8, DestDirectory:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 345
    .local v14, fileList:[Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 346
    .local v18, srcDirPath:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, desDirPath:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    array-length v4, v14

    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    .line 349
    aget-object v4, v14, v16

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    aget-object v4, v14, v16

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 351
    .local v15, fileName:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v17, src:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v9, des:Ljava/io/File;
    const/16 v20, 0x0

    .line 355
    .local v20, srcFileStream:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 356
    .local v11, desFileStream:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 357
    .local v3, srcFileChannel:Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 360
    .local v2, desFileChannel:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v20           #srcFileStream:Ljava/io/FileInputStream;
    .local v21, srcFileStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 363
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v12, v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 364
    .end local v11           #desFileStream:Ljava/io/FileOutputStream;
    .local v12, desFileStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 366
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 374
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->changeFolderPermission(Ljava/io/File;)V
    invoke-static {v4, v9}, Lcom/android/providers/drm/DrmProvider;->access$300(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 400
    :goto_1
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 401
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 348
    .end local v2           #desFileChannel:Ljava/nio/channels/FileChannel;
    .end local v3           #srcFileChannel:Ljava/nio/channels/FileChannel;
    .end local v9           #des:Ljava/io/File;
    .end local v12           #desFileStream:Ljava/io/FileOutputStream;
    .end local v15           #fileName:Ljava/lang/String;
    .end local v17           #src:Ljava/io/File;
    .end local v21           #srcFileStream:Ljava/io/FileInputStream;
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 367
    .restart local v2       #desFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v3       #srcFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v9       #des:Ljava/io/File;
    .restart local v11       #desFileStream:Ljava/io/FileOutputStream;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v17       #src:Ljava/io/File;
    .restart local v20       #srcFileStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v13

    .line 368
    .local v13, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Cannot copy files!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Handle Exception Complete!!! (NewDrmDirectory)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 374
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->changeFolderPermission(Ljava/io/File;)V
    invoke-static {v4, v9}, Lcom/android/providers/drm/DrmProvider;->access$300(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 400
    :goto_4
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V

    .line 401
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 402
    :catch_1
    move-exception v13

    .line 403
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Close files Fail!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Handle Exception Complete!!! (NewDrmDirectory)-3"

    .end local v11           #desFileStream:Ljava/io/FileOutputStream;
    .end local v20           #srcFileStream:Ljava/io/FileInputStream;
    :goto_5
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 373
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v11       #desFileStream:Ljava/io/FileOutputStream;
    .restart local v20       #srcFileStream:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    .line 374
    :goto_6
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->changeFolderPermission(Ljava/io/File;)V
    invoke-static {v5, v9}, Lcom/android/providers/drm/DrmProvider;->access$300(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 400
    :goto_7
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V

    .line 401
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 373
    :goto_8
    throw v4

    .line 411
    .end local v2           #desFileChannel:Ljava/nio/channels/FileChannel;
    .end local v3           #srcFileChannel:Ljava/nio/channels/FileChannel;
    .end local v9           #des:Ljava/io/File;
    .end local v11           #desFileStream:Ljava/io/FileOutputStream;
    .end local v15           #fileName:Ljava/lang/String;
    .end local v17           #src:Ljava/io/File;
    .end local v20           #srcFileStream:Ljava/io/FileInputStream;
    :cond_1
    return-void

    .line 392
    .restart local v2       #desFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v3       #srcFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v9       #des:Ljava/io/File;
    .restart local v11       #desFileStream:Ljava/io/FileOutputStream;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v17       #src:Ljava/io/File;
    .restart local v20       #srcFileStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v13

    .line 393
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, " @@@@@  ERROR: Cannot Sync files!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, " @@@@@  ERROR: Handle Exception Complete!!! (NewDrmDirectory)-2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 402
    .end local v13           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v13

    .line 403
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, " @@@@@  ERROR: Close files Fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, " @@@@@  ERROR: Handle Exception Complete!!! (NewDrmDirectory)-3"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 392
    :catch_4
    move-exception v13

    .line 393
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Cannot Sync files!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Handle Exception Complete!!! (NewDrmDirectory)-2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 392
    .end local v11           #desFileStream:Ljava/io/FileOutputStream;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v20           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v12       #desFileStream:Ljava/io/FileOutputStream;
    .restart local v21       #srcFileStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v13

    .line 393
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Cannot Sync files!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Handle Exception Complete!!! (NewDrmDirectory)-2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 402
    .end local v13           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v13

    .line 403
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Close files Fail!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, " @@@@@  ERROR: Handle Exception Complete!!! (NewDrmDirectory)-3"

    goto/16 :goto_5

    .line 373
    .end local v12           #desFileStream:Ljava/io/FileOutputStream;
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v11       #desFileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v20, v21

    .end local v21           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v20       #srcFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v11           #desFileStream:Ljava/io/FileOutputStream;
    .end local v20           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v12       #desFileStream:Ljava/io/FileOutputStream;
    .restart local v21       #srcFileStream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v11, v12

    .end local v12           #desFileStream:Ljava/io/FileOutputStream;
    .restart local v11       #desFileStream:Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v20       #srcFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 367
    .end local v20           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v21       #srcFileStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v13

    move-object/from16 v20, v21

    .end local v21           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v20       #srcFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v11           #desFileStream:Ljava/io/FileOutputStream;
    .end local v20           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v12       #desFileStream:Ljava/io/FileOutputStream;
    .restart local v21       #srcFileStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v13

    move-object v11, v12

    .end local v12           #desFileStream:Ljava/io/FileOutputStream;
    .restart local v11       #desFileStream:Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21           #srcFileStream:Ljava/io/FileInputStream;
    .restart local v20       #srcFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private createDrmFolders(Ljava/lang/String;)Z
    .locals 5
    .parameter "folder"

    .prologue
    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, result:Z
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/com.android.providers.drm/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, drmProviderDirectory:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->changeFolderPermission(Ljava/io/File;)V
    invoke-static {v3, v0}, Lcom/android/providers/drm/DrmProvider;->access$300(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V

    .line 308
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->changeFolderGroup(Ljava/io/File;)V
    invoke-static {v3, v0}, Lcom/android/providers/drm/DrmProvider;->access$400(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v2, 0x1

    .line 318
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createNetworkSyncTimeFlagFile()V
    .locals 4

    .prologue
    .line 414
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.drm/rights/NetworkSyncTimeFlagFile"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, flagFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 436
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->changeFolderPermission(Ljava/io/File;)V
    invoke-static {v2, v1}, Lcom/android/providers/drm/DrmProvider;->access$300(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, " @@@@@  We can\'t flag files!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/providers/drm/DrmProvider;->access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    const-string v0, "rights"

    invoke-direct {p0, v0}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->createDrmFolders(Ljava/lang/String;)Z

    .line 121
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    const-string v0, "rights"

    invoke-direct {p0, v0}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->createDrmFolders(Ljava/lang/String;)Z

    .line 135
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 148
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading downloads database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move v0, p2

    .line 159
    .local v0, upgradeVersion:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 161
    const-string v1, "video"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->changeContentIdValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 162
    const-string v1, "audio"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->changeContentIdValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 163
    const-string v1, "images"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->changeContentIdValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 164
    const-string v1, "jar"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->changeContentIdValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 166
    const/4 v0, 0x3

    .line 177
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 178
    const-string v1, "rights"

    invoke-direct {p0, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->createDrmFolders(Ljava/lang/String;)Z

    .line 180
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->checkOriginalDrmDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->copyFilesToNewDrmDirectory()V

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->createNetworkSyncTimeFlagFile()V

    .line 191
    const/4 v0, 0x4

    .line 195
    :cond_2
    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, p1}, Lcom/android/providers/drm/DrmProvider;->access$200(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    iget-object v1, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, p1}, Lcom/android/providers/drm/DrmProvider;->access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    :cond_3
    return-void
.end method
