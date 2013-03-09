.class Lcom/htc/resetnotify/ResetNotifyService$Runner;
.super Ljava/lang/Object;
.source "ResetNotifyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/resetnotify/ResetNotifyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/resetnotify/ResetNotifyService$Runner$LogFileFilter;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/resetnotify/ResetNotifyService;


# direct methods
.method public constructor <init>(Lcom/htc/resetnotify/ResetNotifyService;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkNormalPattern(Ljava/lang/String;)Z
    .locals 4
    .parameter "sKlog"

    .prologue
    .line 243
    iget-object v2, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v2}, Lcom/htc/resetnotify/ResetNotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, normalPattern:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 246
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 247
    const/4 v2, 0x1

    .line 250
    :goto_1
    return v2

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkRadioPattern(Ljava/lang/String;)Z
    .locals 4
    .parameter "sKlog"

    .prologue
    .line 256
    iget-object v2, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v2}, Lcom/htc/resetnotify/ResetNotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, radioPattern:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 259
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 260
    const/4 v2, 0x1

    .line 263
    :goto_1
    return v2

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkRebootReason(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "sKlog"
    .parameter "checkNormalReason"

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v2}, Lcom/htc/resetnotify/ResetNotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, rebootReason:[Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    const-string v2, "ResetNotifyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive a specify reset reason, check normal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v2, 0x1

    .line 281
    :goto_2
    return v2

    .line 272
    .end local v0           #i:I
    .end local v1           #rebootReason:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v2}, Lcom/htc/resetnotify/ResetNotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f02

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #rebootReason:[Ljava/lang/String;
    goto :goto_0

    .line 274
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_2
    const-string v2, "ResetNotifyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not find specify reset reason, check normal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private checkSDMounted()V
    .locals 6

    .prologue
    .line 397
    const/4 v0, 0x3

    .line 398
    .local v0, MAX_CHECK_SD_COUNT:I
    const/16 v1, 0x4e20

    .line 400
    .local v1, SD_MOUNT_CHECK_INTERVAL:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 401
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    :cond_0
    return-void

    .line 406
    :cond_1
    const-wide/16 v4, 0x4e20

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :catch_0
    move-exception v2

    .line 408
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v4, "ResetNotifyService"

    const-string v5, "Error to wait sd mount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private dumpFiles(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, logFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 427
    .local v0, f:Ljava/io/File;
    const-string v2, "ResetNotifyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private generateLog()V
    .locals 30

    .prologue
    .line 290
    const-string v5, "islogging"

    .line 291
    .local v5, HTCSERVICE_ACTION_IS_LOGGING:Ljava/lang/String;
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v4, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    const-string v25, "/mnt/sdcard/htclog/"

    aput-object v25, v4, v24

    const/16 v24, 0x1

    const-string v25, "/mnt/sdcard/ext_sd/htclog/"

    aput-object v25, v4, v24

    const/16 v24, 0x2

    const-string v25, "/data/htclog/"

    aput-object v25, v4, v24

    .line 293
    .local v4, HTCLOG_DIR:[Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v3, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    const-string v25, "/devlog/"

    aput-object v25, v3, v24

    .line 294
    .local v3, EMBEDDEDLOG_DIR:[Ljava/lang/String;
    const-wide/32 v7, 0x400000

    .line 296
    .local v7, MAX_FILE_SIZE:J
    const/4 v6, 0x4

    .line 297
    .local v6, MAX_FILE_COUNT:I
    const/16 v20, 0x0

    .line 299
    .local v20, totalFileSize:I
    const/4 v11, 0x0

    .line 302
    .local v11, candiLog:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->runHtcLogCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 303
    .local v17, isLogging:Ljava/lang/String;
    const-string v24, "ResetNotifyService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "htclog isLogging ? ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v24, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->checkSDMounted()V

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->getAvailableFiles([Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 313
    :goto_0
    if-eqz v11, :cond_2

    .line 314
    new-instance v24, Lcom/htc/resetnotify/ResetNotifyService$Runner$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/resetnotify/ResetNotifyService$Runner$1;-><init>(Lcom/htc/resetnotify/ResetNotifyService$Runner;)V

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 322
    const/16 v24, 0x0

    new-instance v25, Ljava/io/File;

    const-string v26, "/proc/last_kmsg"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v11, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    const/4 v9, 0x0

    .line 327
    .local v9, bIn:Ljava/io/BufferedInputStream;
    const/16 v22, 0x0

    .line 330
    .local v22, zOut:Ljava/util/zip/ZipOutputStream;
    const/16 v24, 0x400

    :try_start_0
    move/from16 v0, v24

    new-array v12, v0, [B

    .line 331
    .local v12, data:[B
    const/16 v18, -0x1

    .line 333
    .local v18, readCount:I
    new-instance v23, Ljava/util/zip/ZipOutputStream;

    new-instance v24, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    move-object/from16 v25, v0

    const-string v26, "KernelFeedback.zip"

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lcom/htc/resetnotify/ResetNotifyService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v23 .. v24}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 336
    .end local v22           #zOut:Ljava/util/zip/ZipOutputStream;
    .local v23, zOut:Ljava/util/zip/ZipOutputStream;
    const/16 v16, 0x0

    .local v16, i:I
    move-object v10, v9

    .end local v9           #bIn:Ljava/io/BufferedInputStream;
    .local v10, bIn:Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 337
    move/from16 v0, v16

    if-gt v0, v6, :cond_0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x400000

    cmp-long v24, v24, v26

    if-ltz v24, :cond_4

    .line 338
    :cond_0
    const-string v24, "ResetNotifyService"

    const-string v25, "Exceed MaxFile, stop zip file"

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 394
    .end local v10           #bIn:Ljava/io/BufferedInputStream;
    .end local v12           #data:[B
    .end local v16           #i:I
    .end local v18           #readCount:I
    .end local v23           #zOut:Ljava/util/zip/ZipOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 309
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->getAvailableFiles([Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    goto :goto_0

    .line 342
    .restart local v10       #bIn:Ljava/io/BufferedInputStream;
    .restart local v12       #data:[B
    .restart local v16       #i:I
    .restart local v18       #readCount:I
    .restart local v23       #zOut:Ljava/util/zip/ZipOutputStream;
    :cond_4
    :try_start_2
    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 345
    .local v15, f:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v24

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->makeFileReadable(Ljava/io/File;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 346
    const-string v24, "ResetNotifyService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Fail to make log file readable "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .line 336
    .end local v10           #bIn:Ljava/io/BufferedInputStream;
    .restart local v9       #bIn:Ljava/io/BufferedInputStream;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    move-object v10, v9

    .end local v9           #bIn:Ljava/io/BufferedInputStream;
    .restart local v10       #bIn:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 353
    :cond_5
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 354
    .local v19, srcFile:Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 356
    .end local v10           #bIn:Ljava/io/BufferedInputStream;
    .restart local v9       #bIn:Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v21, Ljava/util/zip/ZipEntry;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 357
    .local v21, zEntry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 360
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v26

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v20, v0

    .line 361
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x400000

    cmp-long v24, v24, v26

    if-lez v24, :cond_6

    .line 362
    const-string v24, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 363
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x400000

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-virtual {v9, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 364
    const-string v24, "ResetNotifyService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cut log and skip first n byte "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x400000

    sub-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_6
    :goto_4
    invoke-virtual {v9, v12}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v18

    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 374
    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 380
    .end local v21           #zEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v13

    move-object/from16 v22, v23

    .line 381
    .end local v12           #data:[B
    .end local v15           #f:Ljava/io/File;
    .end local v16           #i:I
    .end local v18           #readCount:I
    .end local v19           #srcFile:Ljava/io/FileInputStream;
    .end local v23           #zOut:Ljava/util/zip/ZipOutputStream;
    .local v13, e:Ljava/io/FileNotFoundException;
    .restart local v22       #zOut:Ljava/util/zip/ZipOutputStream;
    :goto_5
    const-string v24, "ResetNotifyService"

    const-string v25, "Error when create out zip "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 368
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v22           #zOut:Ljava/util/zip/ZipOutputStream;
    .restart local v12       #data:[B
    .restart local v15       #f:Ljava/io/File;
    .restart local v16       #i:I
    .restart local v18       #readCount:I
    .restart local v19       #srcFile:Ljava/io/FileInputStream;
    .restart local v21       #zEntry:Ljava/util/zip/ZipEntry;
    .restart local v23       #zOut:Ljava/util/zip/ZipOutputStream;
    :cond_7
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 382
    .end local v21           #zEntry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v13

    move-object/from16 v22, v23

    .line 383
    .end local v12           #data:[B
    .end local v15           #f:Ljava/io/File;
    .end local v16           #i:I
    .end local v18           #readCount:I
    .end local v19           #srcFile:Ljava/io/FileInputStream;
    .end local v23           #zOut:Ljava/util/zip/ZipOutputStream;
    .local v13, e:Ljava/io/IOException;
    .restart local v22       #zOut:Ljava/util/zip/ZipOutputStream;
    :goto_6
    const-string v24, "ResetNotifyService"

    const-string v25, "Error when zip file "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    if-eqz v9, :cond_8

    .line 386
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 387
    :cond_8
    if-eqz v22, :cond_2

    .line 388
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 389
    :catch_2
    move-exception v14

    .line 390
    .local v14, e1:Ljava/io/IOException;
    const-string v24, "ResetNotifyService"

    const-string v25, "Error when stream close"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 376
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #e1:Ljava/io/IOException;
    .end local v22           #zOut:Ljava/util/zip/ZipOutputStream;
    .restart local v12       #data:[B
    .restart local v15       #f:Ljava/io/File;
    .restart local v16       #i:I
    .restart local v18       #readCount:I
    .restart local v19       #srcFile:Ljava/io/FileInputStream;
    .restart local v21       #zEntry:Ljava/util/zip/ZipEntry;
    .restart local v23       #zOut:Ljava/util/zip/ZipOutputStream;
    :cond_9
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 382
    .end local v12           #data:[B
    .end local v15           #f:Ljava/io/File;
    .end local v16           #i:I
    .end local v18           #readCount:I
    .end local v19           #srcFile:Ljava/io/FileInputStream;
    .end local v21           #zEntry:Ljava/util/zip/ZipEntry;
    .end local v23           #zOut:Ljava/util/zip/ZipOutputStream;
    .restart local v22       #zOut:Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v13

    goto :goto_6

    .end local v9           #bIn:Ljava/io/BufferedInputStream;
    .end local v22           #zOut:Ljava/util/zip/ZipOutputStream;
    .restart local v10       #bIn:Ljava/io/BufferedInputStream;
    .restart local v12       #data:[B
    .restart local v16       #i:I
    .restart local v18       #readCount:I
    .restart local v23       #zOut:Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v13

    move-object/from16 v22, v23

    .end local v23           #zOut:Ljava/util/zip/ZipOutputStream;
    .restart local v22       #zOut:Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10           #bIn:Ljava/io/BufferedInputStream;
    .restart local v9       #bIn:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 380
    .end local v12           #data:[B
    .end local v16           #i:I
    .end local v18           #readCount:I
    :catch_5
    move-exception v13

    goto :goto_5

    .end local v9           #bIn:Ljava/io/BufferedInputStream;
    .end local v22           #zOut:Ljava/util/zip/ZipOutputStream;
    .restart local v10       #bIn:Ljava/io/BufferedInputStream;
    .restart local v12       #data:[B
    .restart local v16       #i:I
    .restart local v18       #readCount:I
    .restart local v23       #zOut:Ljava/util/zip/ZipOutputStream;
    :catch_6
    move-exception v13

    move-object/from16 v22, v23

    .end local v23           #zOut:Ljava/util/zip/ZipOutputStream;
    .restart local v22       #zOut:Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10           #bIn:Ljava/io/BufferedInputStream;
    .restart local v9       #bIn:Ljava/io/BufferedInputStream;
    goto :goto_5
.end method

.method private getAvailableFiles([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "fileDirs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v1, deviceLogFile:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 435
    .local v2, fileDir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v4, htcLogDir:Ljava/io/File;
    if-eqz v4, :cond_0

    .line 437
    new-instance v7, Lcom/htc/resetnotify/ResetNotifyService$Runner$LogFileFilter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/htc/resetnotify/ResetNotifyService$Runner$LogFileFilter;-><init>(Lcom/htc/resetnotify/ResetNotifyService$Runner;Lcom/htc/resetnotify/ResetNotifyService$1;)V

    invoke-virtual {v4, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 438
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 439
    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 434
    .end local v3           #files:[Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 443
    .end local v2           #fileDir:Ljava/lang/String;
    .end local v4           #htcLogDir:Ljava/io/File;
    :cond_1
    return-object v1
.end method

.method private hasReported(Ljava/lang/String;)Z
    .locals 14
    .parameter "sKlog"

    .prologue
    .line 188
    const-string v6, "last_k_hashcode"

    .line 189
    .local v6, hashfile:Ljava/lang/String;
    const/16 v5, 0xc8

    .line 190
    .local v5, hashCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 191
    .local v10, sHashBegin:I
    const/4 v7, 0x0

    .line 192
    .local v7, newHashCode:I
    const/4 v8, 0x0

    .line 195
    .local v8, oldHashCode:I
    if-le v10, v5, :cond_2

    sub-int/2addr v10, v5

    .line 196
    :goto_0
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    .line 201
    :try_start_0
    iget-object v11, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v11, v6}, Lcom/htc/resetnotify/ResetNotifyService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 202
    .local v2, fd:Ljava/io/File;
    const/16 v11, 0x400

    new-array v0, v11, [C

    .line 203
    .local v0, buf:[C
    const/4 v9, 0x0

    .line 204
    .local v9, readLength:I
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 205
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 207
    .local v3, fr:Ljava/io/FileReader;
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    .line 208
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 210
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 213
    .end local v3           #fr:Ljava/io/FileReader;
    :cond_1
    if-ne v8, v7, :cond_3

    .line 214
    const/4 v11, 0x1

    .line 226
    .end local v0           #buf:[C
    .end local v2           #fd:Ljava/io/File;
    .end local v9           #readLength:I
    :goto_1
    return v11

    .line 195
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 217
    .restart local v0       #buf:[C
    .restart local v2       #fd:Ljava/io/File;
    .restart local v9       #readLength:I
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 218
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 219
    .local v4, fw:Ljava/io/FileWriter;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/FileWriter;->write([C)V

    .line 220
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/4 v11, 0x0

    goto :goto_1

    .line 223
    .end local v0           #buf:[C
    .end local v2           #fd:Ljava/io/File;
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v9           #readLength:I
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/io/IOException;
    const-string v11, "ResetNotifyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private isShutdownLog(Ljava/lang/String;)Z
    .locals 4
    .parameter "sKlog"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v2}, Lcom/htc/resetnotify/ResetNotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, rebootReason:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 234
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 235
    const/4 v2, 0x1

    .line 237
    :goto_1
    return v2

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private makeFileReadable(Ljava/io/File;)Z
    .locals 6
    .parameter "f"

    .prologue
    .line 416
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/xbin/su 0 chmod 666 %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    return v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ResetNotifyService"

    const-string v2, "Error to make file readable"

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private normalReset()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v0}, Lcom/htc/resetnotify/ResetNotifyService;->stopSelf()V

    .line 184
    return-void
.end method

.method private notifyReset()V
    .locals 6

    .prologue
    .line 157
    const-string v2, "ro.build.type"

    const-string v3, "user"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 160
    .local v1, isDebugBuild:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.updater.NOTIFY_SYSTEM_CRASH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, bi:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->generateLog()V

    .line 165
    const-string v2, "unique_msg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro.serialno"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "log_path"

    iget-object v3, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    const-string v4, "KernelFeedback.zip"

    invoke-virtual {v3, v4}, Lcom/htc/resetnotify/ResetNotifyService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "ResetNotifyService"

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-static {}, Lcom/htc/resetnotify/ResetNotifyService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v2, "reboot_type"

    const-string v3, "radio"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v2, v0}, Lcom/htc/resetnotify/ResetNotifyService;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    iget-object v2, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner;->this$0:Lcom/htc/resetnotify/ResetNotifyService;

    invoke-virtual {v2}, Lcom/htc/resetnotify/ResetNotifyService;->stopSelf()V

    .line 180
    return-void

    .line 176
    :cond_1
    const-string v2, "reboot_type"

    const-string v3, "kernel"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private runHtcLogCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "strAction"

    .prologue
    .line 458
    const-string v2, "/system/bin/htcservice"

    .line 459
    .local v2, cmdSocket:Ljava/lang/String;
    const-string v4, ""

    .local v4, line:Ljava/lang/String;
    const-string v7, ""

    .line 460
    .local v7, strResponse:Ljava/lang/String;
    const/4 v0, 0x0

    .line 463
    .local v0, bCheckResponse:Z
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 464
    const-string v2, "/data/bin/htcservice"

    .line 467
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/xbin/su 0 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -s logctl :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, runCommand:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 471
    .local v5, process:Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 474
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 477
    const-string v8, "[STT:htcservice]: response:"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 478
    const/4 v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    if-eqz v0, :cond_3

    .line 481
    move-object v7, v4

    .line 491
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #runCommand:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v7

    .line 484
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v5       #process:Ljava/lang/Process;
    .restart local v6       #runCommand:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 487
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #runCommand:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 488
    .local v3, e:Ljava/io/IOException;
    const-string v8, "ResetNotifyService"

    const-string v9, "Error get htcLog command "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, checkNormalReason:Z
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/last_kmsg"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 98
    .local v3, sKlog:Ljava/lang/String;
    const-string v5, "[1-9][0-9]* Corrected bytes, \\d* unrecoverable blocks"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Corrected bytes, [1-9][0-9]* unrecoverable blocks"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    :cond_0
    const-string v5, "ResetNotifyService"

    const-string v6, "Lask damaged"

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    .line 153
    .end local v3           #sKlog:Ljava/lang/String;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    goto :goto_0

    .line 91
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 92
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ResetNotifyService"

    const-string v6, "Read last kernel message fail."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    goto :goto_0

    .line 106
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #sKlog:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->hasReported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string v5, "ResetNotifyService"

    const-string v6, "Crash reported"

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    goto :goto_0

    .line 112
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->checkNormalPattern(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    const-string v5, "ResetNotifyService"

    const-string v6, "Receive a normal reset case"

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    goto :goto_0

    .line 119
    :cond_3
    const-string v5, "parent:[a-z]*\\): Restarting system\\."

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    const-string v5, "ResetNotifyService"

    const-string v6, "Receive a normal Restarting case"

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    goto :goto_0

    .line 125
    :cond_4
    const-string v4, "Restarting system with command \'"

    .line 126
    .local v4, sRestartCommand:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, iResetCmd:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xdb

    if-ne v5, v6, :cond_5

    .line 131
    const/4 v0, 0x1

    .line 133
    :cond_5
    invoke-direct {p0, v3, v0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->checkRebootReason(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v0, :cond_6

    .line 134
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    goto :goto_0

    .line 137
    :cond_6
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->notifyReset()V

    goto :goto_0

    .line 143
    :cond_7
    invoke-direct {p0, v3}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->isShutdownLog(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 144
    const-string v5, "ResetNotifyService"

    const-string v6, "Normal shutdown"

    #calls: Lcom/htc/resetnotify/ResetNotifyService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/resetnotify/ResetNotifyService$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->normalReset()V

    goto/16 :goto_0

    .line 149
    :cond_8
    invoke-direct {p0, v3}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->checkRadioPattern(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 150
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/htc/resetnotify/ResetNotifyService;->access$102(Z)Z

    .line 152
    :cond_9
    invoke-direct {p0}, Lcom/htc/resetnotify/ResetNotifyService$Runner;->notifyReset()V

    goto/16 :goto_0
.end method
