.class public Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcCOTAClient/DownloadReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CWPkgDownloadCompletedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deleteExtractedFiles()V
    .locals 6

    .prologue
    .line 330
    sget-object v3, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v4, "delete the extracted files..."

    invoke-static {v3, v4}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :try_start_0
    const-string v2, "/data/data/cwtemp/cwpkg.zip"

    .line 335
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 340
    :cond_0
    const-string v2, "/data/data/cwtemp/cw.prop"

    .line 341
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filePath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in deleteExtractedFiles(), Err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private extractCWFiles(Ljava/lang/String;)Z
    .locals 16
    .parameter "fileCWZip"

    .prologue
    .line 360
    const/4 v4, 0x0

    .line 363
    .local v4, bSuccess:Z
    const/4 v6, 0x0

    .line 364
    .local v6, fileInputStream:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 365
    .local v10, zipEntry:Ljava/util/zip/ZipEntry;
    const/4 v11, 0x0

    .line 366
    .local v11, zipFile:Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .local v1, bCheckCRC:Z
    const/4 v3, 0x0

    .line 369
    .local v3, bSaveFile:Z
    const/4 v2, 0x0

    .line 371
    .local v2, bOpenZip:Z
    :try_start_0
    new-instance v11, Ljava/util/zip/ZipFile;

    .end local v11           #zipFile:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .restart local v11       #zipFile:Ljava/util/zip/ZipFile;
    const/4 v2, 0x1

    .line 378
    :goto_0
    if-eqz v2, :cond_0

    if-nez v11, :cond_1

    .line 379
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t open CW.zip, path:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 383
    const/4 v12, 0x0

    .line 481
    :goto_1
    return v12

    .line 373
    .end local v11           #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v5

    .line 374
    .local v5, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 375
    .restart local v11       #zipFile:Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 376
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in unzip CW.zip: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v13, "CW.zip can be unzipped! Start procedure."

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v12, "cw.crc"

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 393
    if-nez v10, :cond_2

    .line 394
    const-string v12, "Can\'t extract cw.crc from the zip file."

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v12, 0x2

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 398
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {v11, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 401
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->getCRC(Ljava/io/InputStream;)Ljava/util/TreeMap;

    move-result-object v7

    .line 402
    .local v7, mapCRC:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 405
    const-string v12, "cw.crc"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v12}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->saveZip2File(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v3

    .line 406
    if-nez v3, :cond_3

    .line 407
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v13, "Can\'t save file:cw.crc"

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v12, 0x5

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 410
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto :goto_1

    .line 413
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 415
    .local v8, nStartTime:J
    const-string v12, "cwpkg.zip"

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 416
    if-nez v10, :cond_4

    .line 417
    const-string v12, "Can\'t find file in zip:cwpkg.zip"

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v12, 0x3

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 421
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 424
    :cond_4
    const-string v12, "cwpkg.zip"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v12}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->isCRCCorrect(Ljava/util/zip/ZipEntry;Ljava/util/TreeMap;Ljava/lang/String;)Z

    move-result v1

    .line 425
    if-nez v1, :cond_5

    .line 426
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v12, 0x4

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 429
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 432
    :cond_5
    const-string v12, "cwpkg.zip"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v12}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->saveZip2File(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v3

    .line 433
    if-nez v3, :cond_6

    .line 434
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v13, "Can\'t save file:cwpkg.zip"

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v12, 0x5

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 437
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 439
    :cond_6
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Time consume:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 443
    const-string v12, "cw.prop"

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 444
    if-nez v10, :cond_7

    .line 445
    const-string v12, "Can\'t find file in zip:cw.prop"

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v12, 0x3

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 449
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 452
    :cond_7
    const-string v12, "cw.prop"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v12}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->isCRCCorrect(Ljava/util/zip/ZipEntry;Ljava/util/TreeMap;Ljava/lang/String;)Z

    move-result v1

    .line 453
    if-nez v1, :cond_8

    .line 454
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v12, 0x4

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 457
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 460
    :cond_8
    const-string v12, "cw.prop"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v12}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->saveZip2File(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v3

    .line 461
    if-nez v3, :cond_9

    .line 462
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v13, "Can\'t save file:cw.prop"

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v12, 0x5

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I

    .line 465
    const/4 v12, 0x0

    .line 478
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 467
    :cond_9
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Time consume:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v4, 0x1

    .line 470
    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    const/4 v6, 0x0

    .end local v7           #mapCRC:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #nStartTime:J
    :goto_2
    move v12, v4

    .line 481
    goto/16 :goto_1

    .line 472
    :catch_1
    move-exception v5

    .line 473
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in extractCWFiles(), Err:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$202(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    const/4 v4, 0x0

    .line 478
    const/4 v6, 0x0

    .line 479
    goto :goto_2

    .line 478
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    const/4 v6, 0x0

    throw v12
.end method

.method private getCRC(Ljava/io/InputStream;)Ljava/util/TreeMap;
    .locals 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    sget-object v6, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v7, "Get CRC !!"

    invoke-static {v6, v7}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 584
    .local v4, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 585
    sget-object v6, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v7, "zip input stram is null"

    invoke-static {v6, v7}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_0
    return-object v4

    .line 589
    :cond_0
    const/4 v0, 0x0

    .line 591
    .local v0, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 592
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .local v1, bufferReader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 593
    .local v5, strTemp:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 594
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 596
    const-string v6, "cwpkg.zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 597
    const-string v6, "cwpkg.zip"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, crc:Ljava/lang/String;
    const-string v6, "cwpkg.zip"

    invoke-virtual {v4, v6, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v6, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add item:[cwpkg.zip, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .end local v2           #crc:Ljava/lang/String;
    :cond_2
    const-string v6, "cw.prop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 603
    const-string v6, "cw.prop"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 604
    .restart local v2       #crc:Ljava/lang/String;
    const-string v6, "cw.prop"

    invoke-virtual {v4, v6, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v6, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add item:[cw.prop, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 609
    .end local v2           #crc:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 610
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v5           #strTemp:Ljava/lang/String;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    sget-object v6, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In getCRC(), Error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    const/4 v0, 0x0

    .line 613
    goto/16 :goto_0

    .line 608
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v5       #strTemp:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 612
    const/4 v0, 0x0

    .line 613
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 612
    .end local v5           #strTemp:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    const/4 v0, 0x0

    throw v6

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v5       #strTemp:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 609
    .end local v5           #strTemp:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private isCRCCorrect(Ljava/util/zip/ZipEntry;Ljava/util/TreeMap;Ljava/lang/String;)Z
    .locals 10
    .parameter "zipEntry"
    .parameter
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, mapCRC:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check CRC, target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, bResult:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    .line 496
    .local v4, nFileCRC:J
    invoke-virtual {p2, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 497
    .local v6, strCorrectCRC:Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 498
    .local v2, nCorrectCRC:J
    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    const/4 v0, 0x1

    .line 499
    :goto_0
    sget-object v7, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Target file CRC:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v7, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CorrectCRC(String):["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], CorrectCRC(long):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v7, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " CRC verify result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-nez v0, :cond_0

    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Verify CRC failed. File:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Target file CRC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", CorrectCRC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v2           #nCorrectCRC:J
    .end local v4           #nFileCRC:J
    .end local v6           #strCorrectCRC:Ljava/lang/String;
    :cond_0
    :goto_1
    return v0

    .line 498
    .restart local v2       #nCorrectCRC:J
    .restart local v4       #nFileCRC:J
    .restart local v6       #strCorrectCRC:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 504
    .end local v2           #nCorrectCRC:J
    .end local v4           #nFileCRC:J
    .end local v6           #strCorrectCRC:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 505
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In isCRCCorrect(), Err:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    sget-object v7, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveZip2File(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 15
    .parameter "zipFile"
    .parameter "zipEntry"
    .parameter "target"

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, bSuccess:Z
    const/4 v5, 0x0

    .line 523
    .local v5, fileInputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 527
    .local v8, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 529
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/cwtemp/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 532
    .local v10, saveFilePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v7, newFile:Ljava/io/File;
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] exists: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_0

    .line 535
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can\'t delete old file:["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    const/4 v7, 0x0

    .line 538
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Save file to: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 540
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .local v9, outputStream:Ljava/io/OutputStream;
    const/16 v12, 0x800

    :try_start_1
    new-array v3, v12, [B

    .line 542
    .local v3, buffer:[B
    :goto_0
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, nReadCount:I
    if-lez v6, :cond_2

    .line 543
    const/4 v12, 0x0

    invoke-virtual {v9, v3, v12, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 548
    .end local v3           #buffer:[B
    .end local v6           #nReadCount:I
    :catch_0
    move-exception v4

    move-object v8, v9

    .line 549
    .end local v7           #newFile:Ljava/io/File;
    .end local v9           #outputStream:Ljava/io/OutputStream;
    .end local v10           #saveFilePath:Ljava/lang/String;
    .local v4, e:Ljava/lang/Exception;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :goto_1
    const/4 v2, 0x0

    .line 550
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In saveZip2File(), File:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]. Err:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 551
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    const/4 v5, 0x0

    .line 554
    const/4 v8, 0x0

    .line 559
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_1

    .line 560
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/cwtemp/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 561
    .restart local v10       #saveFilePath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v11, tempFile:Ljava/io/File;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    .line 563
    .local v1, bSetReadable:Z
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Set file can be read by other APP:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 572
    .end local v1           #bSetReadable:Z
    .end local v10           #saveFilePath:Ljava/lang/String;
    .end local v11           #tempFile:Ljava/io/File;
    :cond_1
    :goto_3
    return v2

    .line 544
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #buffer:[B
    .restart local v6       #nReadCount:I
    .restart local v7       #newFile:Ljava/io/File;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    .restart local v10       #saveFilePath:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 545
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 546
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 547
    const/4 v2, 0x1

    .line 553
    const/4 v5, 0x0

    .line 554
    const/4 v8, 0x0

    .line 555
    .end local v9           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 553
    .end local v3           #buffer:[B
    .end local v6           #nReadCount:I
    .end local v7           #newFile:Ljava/io/File;
    .end local v10           #saveFilePath:Ljava/lang/String;
    :catchall_0
    move-exception v12

    :goto_4
    const/4 v5, 0x0

    .line 554
    const/4 v8, 0x0

    throw v12

    .line 565
    :catch_1
    move-exception v4

    .line 566
    .restart local v4       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 567
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In saveZip2File() set file readable attribute, File:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]. Err:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 568
    sget-object v12, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 553
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #newFile:Ljava/io/File;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    .restart local v10       #saveFilePath:Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 548
    .end local v7           #newFile:Ljava/io/File;
    .end local v10           #saveFilePath:Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 247
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Get download complete intent!"

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 249
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 250
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CWPkgDownloadCompletedReceiver get ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->LOCAL_LOGV:Z

    if-eqz v4, :cond_2

    move-object v4, v3

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v10, 0x0

    .line 255
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$000()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 256
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_4

    .line 257
    :cond_0
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/htcCOTAClient/DownloadReceiver;->LOCAL_LOGV:Z

    if-eqz v6, :cond_3

    .end local v3           #uri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    if-eqz v10, :cond_1

    .line 320
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_1
    const/4 v10, 0x0

    .line 324
    :goto_2
    return-void

    .line 250
    .end local v10           #cursor:Landroid/database/Cursor;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_2
    const-string v4, ""

    goto :goto_0

    .line 257
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v3, ""

    goto :goto_1

    .line 261
    :cond_4
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 262
    .local v8, Id:I
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 263
    .local v19, url:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 264
    .local v17, status:I
    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 267
    .local v18, update:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads$Impl;->isStatusInformational(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 270
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 271
    sget-object v5, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed (code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->LOCAL_LOGV:Z

    if-eqz v4, :cond_9

    move-object/from16 v4, v19

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_6
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "COTA package Download information (code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.server.HTCCOTA.SHOW_DOWNLOAD_PROGRESS"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v14, infoIntent:Landroid/content/Intent;
    const-string v4, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v4, "_ID"

    invoke-virtual {v14, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v4, "URL"

    move-object/from16 v0, v19

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v4, "Status"

    move/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v4, "Update"

    move-object/from16 v0, v18

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    .end local v14           #infoIntent:Landroid/content/Intent;
    :cond_7
    :goto_4
    if-eqz v10, :cond_8

    .line 320
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_8
    const/4 v10, 0x0

    .line 323
    goto/16 :goto_2

    .line 271
    :cond_9
    :try_start_2
    const-string v4, ""

    goto :goto_3

    .line 283
    :cond_a
    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 284
    sget-object v5, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed (code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->LOCAL_LOGV:Z

    if-eqz v4, :cond_c

    move-object/from16 v4, v19

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    #calls: Lcom/htc/htcCOTAClient/DownloadReceiver;->removeAllCOTADownloads()V
    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$100()V

    .line 287
    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.server.HTCCOTA.DOWNLOAD_FAIL"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v13, failIntent:Landroid/content/Intent;
    const-string v4, "ErrCode"

    move/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v4, "ErrMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download cota package failed. ErrCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". URL:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 316
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #Id:I
    .end local v13           #failIntent:Landroid/content/Intent;
    .end local v17           #status:I
    .end local v18           #update:Ljava/lang/String;
    .end local v19           #url:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 317
    .local v12, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when query download provider. error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    if-eqz v10, :cond_b

    .line 320
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_b
    const/4 v10, 0x0

    .line 323
    goto/16 :goto_2

    .line 284
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #Id:I
    .restart local v17       #status:I
    .restart local v18       #update:Ljava/lang/String;
    .restart local v19       #url:Ljava/lang/String;
    :cond_c
    :try_start_4
    const-string v4, ""

    goto :goto_5

    .line 292
    :cond_d
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Download successfully. Start to extract cw files."

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->extractCWFiles(Ljava/lang/String;)Z

    move-result v9

    .line 295
    .local v9, bSuccess:Z
    if-eqz v9, :cond_f

    .line 296
    new-instance v16, Landroid/content/Intent;

    const-string v4, "android.server.HTCCOTA.CONFIRM_INSTALL"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v16, intentSuccess:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Extract COTA files successfully."

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .end local v16           #intentSuccess:Landroid/content/Intent;
    :goto_6
    #calls: Lcom/htc/htcCOTAClient/DownloadReceiver;->removeAllCOTADownloads()V
    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$100()V

    .line 311
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v11, cwzip:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_7

    .line 314
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 319
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #Id:I
    .end local v9           #bSuccess:Z
    .end local v11           #cwzip:Ljava/io/File;
    .end local v17           #status:I
    .end local v18           #update:Ljava/lang/String;
    .end local v19           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_e

    .line 320
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_e
    const/4 v10, 0x0

    throw v4

    .line 300
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #Id:I
    .restart local v9       #bSuccess:Z
    .restart local v17       #status:I
    .restart local v18       #update:Ljava/lang/String;
    .restart local v19       #url:Ljava/lang/String;
    :cond_f
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;->deleteExtractedFiles()V

    .line 302
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.server.HTCCOTA.EXTRACT_FAIL"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v15, intentFailed:Landroid/content/Intent;
    const-string v4, "ErrCode"

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$200()I

    move-result v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v4, "ErrMsg"

    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Extract COTA files FAILED!"

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6
.end method
