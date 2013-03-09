.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationFingerprintStreamFromMic"
.end annotation


# static fields
.field private static isCancelled:Z


# instance fields
.field private error:Ljava/lang/String;

.field length:I

.field samples:[B


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V
    .locals 1
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"

    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V

    .line 274
    const v0, 0x19640

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->length:I

    .line 275
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->samples:[B

    .line 276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->isCancelled:Z

    .line 277
    return-void
.end method

.method static cancelMic()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->isCancelled:Z

    .line 286
    return-void
.end method

.method private recordFromMic()Z
    .locals 14

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 294
    const/16 v2, 0x1f40

    .line 295
    .local v2, SAMPLE_RATE_IN_HERTZ:I
    iget v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->length:I

    .line 296
    .local v5, BUFFER_SIZE_IN_BYTES:I
    div-int/lit8 v6, v5, 0xa

    .line 298
    .local v6, bufferIncrements:I
    new-instance v0, Landroid/media/AudioRecord;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 302
    .local v0, audioRecord:Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 303
    const-string v1, "An exception occurred while recording from the microphone. The audio record state returned uninitialized"

    iput-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->error:Ljava/lang/String;

    move v1, v11

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 308
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    const/4 v10, 0x0

    .line 316
    .local v10, totalBytesRead:I
    :goto_1
    if-lt v10, v5, :cond_2

    .line 337
    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 338
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 340
    if-ge v10, v5, :cond_0

    move v1, v11

    .line 341
    goto :goto_0

    .line 310
    .end local v10           #totalBytesRead:I
    :catch_0
    move-exception v7

    .line 311
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "An exception occurred while recording from the microphone: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->error:Ljava/lang/String;

    move v1, v11

    .line 312
    goto :goto_0

    .line 318
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #totalBytesRead:I
    :cond_2
    sget-boolean v3, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->isCancelled:Z

    if-eqz v3, :cond_3

    .line 319
    const-string v3, "Cancelled during recording."

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->error:Ljava/lang/String;

    goto :goto_2

    .line 323
    :cond_3
    add-int v3, v10, v6

    if-ge v3, v5, :cond_4

    .line 327
    :goto_3
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->samples:[B

    invoke-virtual {v0, v3, v10, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v9

    .line 328
    .local v9, readBytes:I
    const/4 v3, -0x1

    if-ne v9, v3, :cond_5

    .line 329
    const-string v3, "Error reading audio buffer. No bytes read."

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->error:Ljava/lang/String;

    goto :goto_2

    .line 325
    .end local v9           #readBytes:I
    :cond_4
    sub-int v6, v5, v10

    goto :goto_3

    .line 332
    .restart local v9       #readBytes:I
    :cond_5
    add-int/2addr v10, v9

    .line 333
    const-wide/high16 v3, 0x4059

    int-to-double v12, v10

    mul-double/2addr v3, v12

    int-to-double v12, v5

    div-double/2addr v3, v12

    double-to-int v8, v3

    .line 334
    .local v8, percent:I
    sget-object v3, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->RECORDING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v4, "Recording"

    invoke-virtual {p0, v3, v4, v8}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private saveRecordedPcmToDebugLog(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 10
    .parameter "sampleBuffer"

    .prologue
    .line 349
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    if-nez v7, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v8, "debugEnabled"

    invoke-virtual {v7, v8}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 357
    const-string v0, "Gracenote MobileSDK"

    .line 359
    .local v0, LOG_TAG:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v9, "debugLog"

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/recorded.pcm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, debugPcm:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, debugPcmFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 364
    .local v6, parentDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 365
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 368
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    .line 371
    const/4 v4, 0x0

    .line 374
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 375
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 379
    if-eqz v5, :cond_0

    .line 381
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v3

    .line 383
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 388
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #parentDir:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 389
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "Gracenote MobileSDK"

    const-string v8, "Can\'t write PCM data to log file."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #parentDir:Ljava/io/File;
    :catch_2
    move-exception v3

    .line 377
    .local v3, e:Ljava/io/IOException;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    if-eqz v4, :cond_0

    .line 381
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 382
    :catch_3
    move-exception v3

    .line 383
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 378
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 379
    :goto_2
    if-eqz v4, :cond_3

    .line 381
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 386
    :cond_3
    :goto_3
    :try_start_9
    throw v7

    .line 382
    :catch_4
    move-exception v3

    .line 383
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 378
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 376
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected doInBackground()V
    .locals 13

    .prologue
    const/16 v12, 0xbb8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 398
    sget-boolean v7, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->isCancelled:Z

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->recordFromMic()Z

    move-result v7

    if-nez v7, :cond_2

    .line 399
    :cond_0
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->error:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 400
    const-string v7, "Cancelled during recording."

    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->error:Ljava/lang/String;

    .line 402
    :cond_1
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v7, v12}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 403
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->error:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    .line 441
    :goto_0
    return-void

    .line 407
    :cond_2
    new-instance v6, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->samples:[B

    const/4 v8, 0x2

    const/16 v9, 0x1f40

    invoke-direct {v6, v7, v8, v11, v9}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;-><init>([BIII)V

    .line 409
    .local v6, sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;
    new-instance v7, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v7}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 411
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v7, v6, p0, v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->classifyMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, results:[Ljava/lang/String;
    aget-object v0, v5, v10

    .line 413
    .local v0, classificationError:Ljava/lang/String;
    aget-object v1, v5, v11

    .line 415
    .local v1, classificationXml:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 416
    invoke-direct {p0, v6}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->saveRecordedPcmToDebugLog(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 417
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    const/16 v8, 0xbbb

    invoke-virtual {v7, v8}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 418
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_3
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v7, v6, p0, v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v5

    .line 422
    aget-object v2, v5, v10

    .line 423
    .local v2, fpError:Ljava/lang/String;
    aget-object v3, v5, v11

    .line 425
    .local v3, fpXml:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;->saveRecordedPcmToDebugLog(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 427
    if-eqz v2, :cond_4

    .line 429
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v7, v12}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 430
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v7, v2}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_4
    const-string v7, "<AUDIO>"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 437
    .local v4, index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;->result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-virtual {v7, v3}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setFingerprintData(Ljava/lang/String;)V

    goto :goto_0
.end method
