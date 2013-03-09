.class Lcom/s0up/goomanager/download/DownloadService$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# instance fields
.field private downloadInformation:Lcom/s0up/goomanager/download/Download;

.field final synthetic this$0:Lcom/s0up/goomanager/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V
    .locals 0
    .parameter
    .parameter "download"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    .line 452
    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 456
    const/16 v19, 0x0

    .line 457
    .local v19, resumeDownload:Z
    const-wide/16 v20, 0x0

    .line 459
    .local v20, resumeFromLocation:J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v24

    const-string v25, "mounted"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 461
    const/16 v27, 0x5

    .line 460
    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z

    .line 678
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v4, actualDownloadDestination:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ".goodownload"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v15, ourDownloadDestination:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isFile()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 477
    const/16 v27, 0x6

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Could not remove file "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " to make a directory."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 476
    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/String;)Z
    invoke-static/range {v24 .. v28}, Lcom/s0up/goomanager/download/DownloadService;->access$9(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/String;)Z

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 483
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 485
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/s0up/goomanager/MD5Checksum;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    const/16 v27, 0x0

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 493
    :catch_0
    move-exception v24

    .line 498
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 501
    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 504
    const/16 v19, 0x1

    .line 509
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 516
    :cond_4
    const/16 v17, 0x0

    .line 518
    .local v17, remoteUrl:Ljava/net/URL;
    :try_start_1
    new-instance v18, Ljava/net/URL;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_7

    const-string v24, ""

    :goto_1
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 518
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v17           #remoteUrl:Ljava/net/URL;
    .local v18, remoteUrl:Ljava/net/URL;
    move-object/from16 v17, v18

    .line 526
    .end local v18           #remoteUrl:Ljava/net/URL;
    .restart local v17       #remoteUrl:Ljava/net/URL;
    :goto_2
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    .line 527
    .local v12, httpConnection:Ljava/net/HttpURLConnection;
    const/16 v24, 0x2710

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 528
    const v24, 0x1d4c0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 535
    :try_start_3
    const-string v24, "GET"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_4

    .line 540
    :goto_3
    if-eqz v19, :cond_5

    .line 541
    const-string v24, "Range"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "bytes="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 543
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 547
    :cond_5
    :try_start_4
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    .line 548
    .local v23, status:I
    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    const/16 v24, 0xce

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 549
    const/16 v24, 0x1a0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 550
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 551
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 552
    const/16 v27, 0x8

    .line 551
    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z

    .line 553
    const-string v24, "GooManager"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "non 200 error code="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 557
    .end local v23           #status:I
    :catch_1
    move-exception v7

    .line 558
    .local v7, e:Ljava/net/SocketTimeoutException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    invoke-static {v0, v1, v2, v3, v7}, Lcom/s0up/goomanager/download/DownloadService;->access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 520
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    .end local v12           #httpConnection:Ljava/net/HttpURLConnection;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    move-object/from16 v24, v0
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 521
    :catch_2
    move-exception v7

    .line 522
    .local v7, e:Ljava/net/MalformedURLException;
    const-string v24, "GooManager"

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 529
    .end local v7           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v7

    .line 530
    .local v7, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 531
    const/16 v27, 0x3

    .line 530
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    invoke-static {v0, v1, v2, v3, v7}, Lcom/s0up/goomanager/download/DownloadService;->access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 536
    .end local v7           #e:Ljava/io/IOException;
    .restart local v12       #httpConnection:Ljava/net/HttpURLConnection;
    :catch_4
    move-exception v9

    .line 538
    .local v9, e3:Ljava/net/ProtocolException;
    invoke-virtual {v9}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_3

    .line 556
    .end local v9           #e3:Ljava/net/ProtocolException;
    .restart local v23       #status:I
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/s0up/goomanager/download/Download;->fileLength:J
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 568
    new-instance v22, Landroid/os/StatFs;

    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 569
    .local v22, statfs:Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSize()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v10, v24, v26

    .line 570
    .local v10, freeSpace:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/s0up/goomanager/download/Download;->fileLength:J

    move-wide/from16 v24, v0

    cmp-long v24, v10, v24

    if-gez v24, :cond_9

    .line 571
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 573
    const/16 v27, 0x4

    const-string v28, "No free space."

    .line 572
    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/String;)Z
    invoke-static/range {v24 .. v28}, Lcom/s0up/goomanager/download/DownloadService;->access$9(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/String;)Z

    goto/16 :goto_0

    .line 560
    .end local v10           #freeSpace:J
    .end local v22           #statfs:Landroid/os/StatFs;
    .end local v23           #status:I
    :catch_5
    move-exception v7

    .line 561
    .restart local v7       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 562
    const/16 v27, 0x3

    .line 561
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    invoke-static {v0, v1, v2, v3, v7}, Lcom/s0up/goomanager/download/DownloadService;->access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 579
    .end local v7           #e:Ljava/io/IOException;
    .restart local v10       #freeSpace:J
    .restart local v22       #statfs:Landroid/os/StatFs;
    .restart local v23       #status:I
    :cond_9
    :try_start_7
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 586
    .local v13, inputStream:Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    .line 588
    .local v16, outputStream:Ljava/io/BufferedOutputStream;
    if-eqz v19, :cond_b

    .line 589
    :try_start_8
    new-instance v16, Ljava/io/BufferedOutputStream;

    .end local v16           #outputStream:Ljava/io/BufferedOutputStream;
    new-instance v24, Ljava/io/FileOutputStream;

    .line 590
    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 589
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 605
    .restart local v16       #outputStream:Ljava/io/BufferedOutputStream;
    :goto_4
    const v24, 0xfa000

    move/from16 v0, v24

    new-array v5, v0, [B

    .line 606
    .local v5, buffer:[B
    const/4 v6, 0x0

    .line 608
    .local v6, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z

    .line 612
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->continueDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 613
    invoke-virtual {v13, v5}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v6

    const/16 v24, -0x1

    move/from16 v0, v24

    if-gt v6, v0, :cond_c

    .line 638
    :cond_a
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 642
    :goto_6
    :try_start_b
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f

    .line 646
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->continueDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v24

    if-nez v24, :cond_d

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    const/16 v27, 0x0

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z

    goto/16 :goto_0

    .line 580
    .end local v5           #buffer:[B
    .end local v6           #count:I
    .end local v13           #inputStream:Ljava/io/BufferedInputStream;
    .end local v16           #outputStream:Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v8

    .line 581
    .local v8, e1:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 582
    const/16 v27, 0x3

    .line 581
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    invoke-static {v0, v1, v2, v3, v8}, Lcom/s0up/goomanager/download/DownloadService;->access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 592
    .end local v8           #e1:Ljava/io/IOException;
    .restart local v13       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v16       #outputStream:Ljava/io/BufferedOutputStream;
    :cond_b
    :try_start_c
    new-instance v16, Ljava/io/BufferedOutputStream;

    .end local v16           #outputStream:Ljava/io/BufferedOutputStream;
    new-instance v24, Ljava/io/FileOutputStream;

    .line 593
    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 592
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .restart local v16       #outputStream:Ljava/io/BufferedOutputStream;
    goto/16 :goto_4

    .line 595
    .end local v16           #outputStream:Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v7

    .line 596
    .restart local v7       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 597
    const/16 v27, 0x6

    .line 596
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    invoke-static {v0, v1, v2, v3, v7}, Lcom/s0up/goomanager/download/DownloadService;->access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z

    .line 599
    :try_start_d
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_0

    .line 600
    :catch_8
    move-exception v24

    goto/16 :goto_0

    .line 615
    .end local v7           #e:Ljava/io/IOException;
    .restart local v5       #buffer:[B
    .restart local v6       #count:I
    .restart local v16       #outputStream:Ljava/io/BufferedOutputStream;
    :cond_c
    const/16 v24, 0x0

    :try_start_e
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 626
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static {v0, v1, v2, v6}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_5

    .line 628
    :catch_9
    move-exception v8

    .line 629
    .restart local v8       #e1:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    invoke-static {v0, v1, v2, v3, v8}, Lcom/s0up/goomanager/download/DownloadService;->access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z

    .line 632
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_0

    .line 633
    :catch_a
    move-exception v24

    goto/16 :goto_0

    .line 616
    .end local v8           #e1:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 617
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 618
    const/16 v27, 0x6

    .line 617
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    invoke-static {v0, v1, v2, v3, v7}, Lcom/s0up/goomanager/download/DownloadService;->access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 620
    :try_start_12
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_0

    .line 621
    :catch_c
    move-exception v24

    goto/16 :goto_0

    .line 652
    .end local v7           #e:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x6

    const/16 v27, 0x0

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z

    .line 659
    const/4 v14, 0x0

    .line 661
    .local v14, md5Sum:Ljava/lang/String;
    :try_start_13
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/s0up/goomanager/MD5Checksum;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    move-result-object v14

    .line 665
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    .line 667
    const/16 v27, 0x2

    .line 666
    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z

    .line 668
    const-string v24, "GooManager"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "MD5 is "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " it should be "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 668
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 662
    :catch_d
    move-exception v7

    .line 663
    .local v7, e:Ljava/lang/Exception;
    const-string v24, "GooManager"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 674
    .end local v7           #e:Ljava/lang/Exception;
    .end local v14           #md5Sum:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;->downloadInformation:Lcom/s0up/goomanager/download/Download;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    const/16 v27, 0x0

    #calls: Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    invoke-static/range {v24 .. v27}, Lcom/s0up/goomanager/download/DownloadService;->access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z

    .line 675
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 676
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 677
    :cond_f
    invoke-virtual {v15, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 639
    :catch_e
    move-exception v24

    goto/16 :goto_6

    .line 643
    :catch_f
    move-exception v24

    goto/16 :goto_7
.end method
