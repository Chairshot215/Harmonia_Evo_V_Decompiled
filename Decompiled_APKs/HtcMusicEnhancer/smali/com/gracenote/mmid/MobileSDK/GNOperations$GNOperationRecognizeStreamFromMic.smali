.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationRecognizeStreamFromMic"
.end annotation


# static fields
.field private static isCancelled:Z


# instance fields
.field private error:Ljava/lang/String;

.field length:I

.field samples:[B


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V
    .locals 2
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"

    .prologue
    .line 587
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 589
    const-string v1, "requiredFingerprintBlock"

    invoke-virtual {p1, v1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 590
    .local v0, fpBlock:I
    packed-switch v0, :pswitch_data_0

    .line 596
    const v1, 0x3c8c0

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->length:I

    .line 600
    :goto_0
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->length:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->samples:[B

    .line 601
    const/4 v1, 0x0

    sput-boolean v1, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->isCancelled:Z

    .line 602
    return-void

    .line 591
    :pswitch_0
    const v1, 0xdac0

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->length:I

    goto :goto_0

    .line 592
    :pswitch_1
    const v1, 0x19640

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->length:I

    goto :goto_0

    .line 593
    :pswitch_2
    const v1, 0x251c0

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->length:I

    goto :goto_0

    .line 594
    :pswitch_3
    const v1, 0x30d40

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->length:I

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static cancelMic()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->isCancelled:Z

    .line 606
    return-void
.end method

.method private recordFromMic()Z
    .locals 14

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 614
    const/16 v2, 0x1f40

    .line 615
    .local v2, SAMPLE_RATE_IN_HERTZ:I
    iget v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->length:I

    .line 616
    .local v5, BUFFER_SIZE_IN_BYTES:I
    div-int/lit8 v6, v5, 0xa

    .line 618
    .local v6, bufferIncrements:I
    new-instance v0, Landroid/media/AudioRecord;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 622
    .local v0, audioRecord:Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 623
    const-string v1, "An exception occurred while recording from the microphone. The audio record state returned uninitialized"

    iput-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->error:Ljava/lang/String;

    move v1, v11

    .line 664
    :cond_0
    :goto_0
    return v1

    .line 628
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    const/4 v10, 0x0

    .line 636
    .local v10, totalBytesRead:I
    :goto_1
    if-lt v10, v5, :cond_2

    .line 657
    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 658
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 660
    if-ge v10, v5, :cond_0

    move v1, v11

    .line 661
    goto :goto_0

    .line 630
    .end local v10           #totalBytesRead:I
    :catch_0
    move-exception v7

    .line 631
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

    iput-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->error:Ljava/lang/String;

    move v1, v11

    .line 632
    goto :goto_0

    .line 638
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #totalBytesRead:I
    :cond_2
    sget-boolean v3, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->isCancelled:Z

    if-eqz v3, :cond_3

    .line 639
    const-string v3, "Cancelled during recording."

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->error:Ljava/lang/String;

    goto :goto_2

    .line 643
    :cond_3
    add-int v3, v10, v6

    if-ge v3, v5, :cond_4

    .line 647
    :goto_3
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->samples:[B

    invoke-virtual {v0, v3, v10, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v9

    .line 648
    .local v9, readBytes:I
    const/4 v3, -0x1

    if-ne v9, v3, :cond_5

    .line 649
    const-string v3, "Error reading audio buffer. No bytes read."

    iput-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->error:Ljava/lang/String;

    goto :goto_2

    .line 645
    .end local v9           #readBytes:I
    :cond_4
    sub-int v6, v5, v10

    goto :goto_3

    .line 652
    .restart local v9       #readBytes:I
    :cond_5
    add-int/2addr v10, v9

    .line 653
    const-wide/high16 v3, 0x4059

    int-to-double v12, v10

    mul-double/2addr v3, v12

    int-to-double v12, v5

    div-double/2addr v3, v12

    double-to-int v8, v3

    .line 654
    .local v8, percent:I
    sget-object v3, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->RECORDING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v4, "Recording"

    invoke-virtual {p0, v3, v4, v8}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private saveRecordedPcmToDebugLog(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 10
    .parameter "sampleBuffer"

    .prologue
    .line 669
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    if-nez v7, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v8, "debugEnabled"

    invoke-virtual {v7, v8}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 677
    const-string v0, "Gracenote MobileSDK"

    .line 679
    .local v0, LOG_TAG:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

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

    .line 680
    .local v1, debugPcm:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 683
    .local v2, debugPcmFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 684
    .local v6, parentDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 685
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 688
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    .line 691
    const/4 v4, 0x0

    .line 694
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 695
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p1, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 699
    if-eqz v5, :cond_0

    .line 701
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 702
    :catch_0
    move-exception v3

    .line 703
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 708
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #parentDir:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 709
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "Gracenote MobileSDK"

    const-string v8, "Can\'t write PCM data to log file."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #parentDir:Ljava/io/File;
    :catch_2
    move-exception v3

    .line 697
    .local v3, e:Ljava/io/IOException;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 699
    if-eqz v4, :cond_0

    .line 701
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 702
    :catch_3
    move-exception v3

    .line 703
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 698
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 699
    :goto_2
    if-eqz v4, :cond_3

    .line 701
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 706
    :cond_3
    :goto_3
    :try_start_9
    throw v7

    .line 702
    :catch_4
    move-exception v3

    .line 703
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 698
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 696
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
    .locals 15

    .prologue
    const/16 v14, 0xbb8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 718
    sget-boolean v9, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->isCancelled:Z

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->recordFromMic()Z

    move-result v9

    if-nez v9, :cond_2

    .line 719
    :cond_0
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->error:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 720
    const-string v9, "Cancelled during recording."

    iput-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->error:Ljava/lang/String;

    .line 722
    :cond_1
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v9, v14}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 723
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 766
    :goto_0
    return-void

    .line 727
    :cond_2
    new-instance v8, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->samples:[B

    const/4 v10, 0x2

    const/16 v11, 0x1f40

    invoke-direct {v8, v9, v10, v13, v11}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;-><init>([BIII)V

    .line 729
    .local v8, sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;
    new-instance v9, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v9}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 731
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v9, v8, p0, v10}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->classifyMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v7

    .line 732
    .local v7, results:[Ljava/lang/String;
    aget-object v0, v7, v12

    .line 733
    .local v0, classificationError:Ljava/lang/String;
    aget-object v1, v7, v13

    .line 735
    .local v1, classificationXml:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 736
    invoke-direct {p0, v8}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->saveRecordedPcmToDebugLog(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 737
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v10, 0xbbb

    invoke-virtual {v9, v10}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 738
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v9, v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v9, v8, p0, v10}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v7

    .line 742
    aget-object v2, v7, v12

    .line 743
    .local v2, fpError:Ljava/lang/String;
    aget-object v3, v7, v13

    .line 745
    .local v3, fpXml:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->saveRecordedPcmToDebugLog(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 747
    if-eqz v2, :cond_4

    .line 749
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v9, v14}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 750
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v9, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_4
    const-string v9, "<AUDIO>"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 757
    .local v5, index:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v9, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setFingerprintData(Ljava/lang/String;)V

    .line 760
    sget-object v9, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v10, "Contacting Webservices"

    invoke-virtual {p0, v9, v10, v12}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 761
    new-instance v4, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;

    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v11, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v4, v9, v10, v11, p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 762
    .local v4, handler:Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
    invoke-virtual {v4}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v6

    .line 763
    .local v6, queryXML:Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->doPost(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
