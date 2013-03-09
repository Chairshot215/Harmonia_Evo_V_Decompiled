.class public Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BtOppObexServer"

.field private static final V:Z


# instance fields
.field private mAccepted:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterrupted:Z

.field private mLocalShareInfoId:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServerBlocking:Z

.field private mSession:Ljavax/obex/ServerSession;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 4
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 77
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 85
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 87
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 102
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 104
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 105
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BtOppObexServer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    const-string v1, "BtOppObexServer"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 3

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    .line 526
    .local v0, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    return-object v0
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I
    .locals 26
    .parameter "fileInfo"
    .parameter "op"

    .prologue
    .line 418
    const/16 v18, -0x1

    .line 419
    .local v18, status:I
    const/4 v5, 0x0

    .line 421
    .local v5, bos:Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 422
    .local v12, is:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 424
    .local v11, error:Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 431
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 433
    .local v6, contentUri:Landroid/net/Uri;
    if-nez v11, :cond_0

    .line 434
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 435
    .local v21, updateValues:Landroid/content/ContentValues;
    const-string v22, "_data"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 439
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_0
    const/16 v16, 0x0

    .line 440
    .local v16, position:I
    if-nez v11, :cond_1

    .line 441
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    const/high16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 444
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    :cond_1
    if-nez v11, :cond_3

    .line 445
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v15

    .line 446
    .local v15, outputBufferSize:I
    new-array v4, v15, [B

    .line 448
    .local v4, b:[B
    const-wide/16 v19, 0x0

    .line 449
    .local v19, timestamp:J
    const-wide/16 v13, 0x0

    .line 451
    .local v13, lastTime:J
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_3

    .line 455
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 457
    .local v17, readLength:I
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 491
    .end local v4           #b:[B
    .end local v13           #lastTime:J
    .end local v15           #outputBufferSize:I
    .end local v17           #readLength:I
    .end local v19           #timestamp:J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 493
    const/16 v18, 0x1ea

    .line 506
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .line 508
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 513
    :cond_5
    :goto_4
    return v18

    .line 425
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v16           #position:I
    :catch_0
    move-exception v10

    .line 426
    .local v10, e1:Ljava/io/IOException;
    const-string v22, "BtOppObexServer"

    const-string v23, "Error when openInputStream"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v18, 0x1f0

    .line 428
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 462
    .end local v10           #e1:Ljava/io/IOException;
    .restart local v4       #b:[B
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v13       #lastTime:J
    .restart local v15       #outputBufferSize:I
    .restart local v16       #position:I
    .restart local v17       #readLength:I
    .restart local v19       #timestamp:J
    :cond_6
    const/16 v22, 0x0

    :try_start_3
    move/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v5, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 463
    add-int v16, v16, v17

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 472
    .local v7, currentTime:J
    sub-long v22, v7, v13

    const-wide/16 v24, 0x3e8

    cmp-long v22, v22, v24

    if-ltz v22, :cond_2

    .line 473
    move-wide v13, v7

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 479
    .end local v7           #currentTime:J
    .end local v17           #readLength:I
    :catch_1
    move-exception v10

    .line 480
    .restart local v10       #e1:Ljava/io/IOException;
    const-string v22, "BtOppObexServer"

    const-string v23, "Error when receiving file"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v22, "Abort Received"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 483
    const/16 v18, 0x1ea

    goto :goto_2

    .line 485
    :cond_7
    const/16 v18, 0x1f0

    goto/16 :goto_2

    .line 495
    .end local v4           #b:[B
    .end local v10           #e1:Ljava/io/IOException;
    .end local v13           #lastTime:J
    .end local v15           #outputBufferSize:I
    .end local v19           #timestamp:J
    :cond_8
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_9

    .line 497
    const/16 v18, 0xc8

    goto/16 :goto_3

    .line 500
    :cond_9
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 501
    const/16 v18, 0x1eb

    goto/16 :goto_3

    .line 509
    :catch_2
    move-exception v9

    .line 510
    .local v9, e:Ljava/io/IOException;
    const-string v22, "BtOppObexServer"

    const-string v23, "Error when closing stream after send"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private declared-synchronized releaseWakeLocks()V
    .locals 1

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_1
    monitor-exit p0

    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 164
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .line 165
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->releaseWakeLocks()V

    .line 569
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 571
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 572
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 575
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 5
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 535
    const/16 v3, 0x46

    :try_start_0
    invoke-virtual {p1, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .local v2, uuid:[B
    if-eqz v2, :cond_0

    .line 538
    const/16 v3, 0xc6

    .line 545
    .end local v2           #uuid:[B
    :goto_0
    return v3

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, e:Ljava/io/IOException;
    const-string v3, "BtOppObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/16 v3, 0xd0

    goto :goto_0

    .line 544
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #uuid:[B
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    .line 545
    const/16 v3, 0xa0

    goto :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 1
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 551
    const/16 v0, 0xa0

    iput v0, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 552
    return-void
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 27
    .parameter "op"

    .prologue
    .line 174
    const/16 v16, 0xa0

    .line 180
    .local v16, obexResponse:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 181
    const/16 v23, 0xc3

    .line 411
    :goto_0
    return v23

    .line 185
    :cond_0
    const/16 v17, 0x0

    .line 186
    .local v17, pre_reject:Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v18

    .line 188
    .local v18, request:Ljavax/obex/HeaderSet;
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 189
    .local v14, name:Ljava/lang/String;
    const/16 v23, 0xc3

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 190
    .local v10, length:Ljava/lang/Long;
    const/16 v23, 0x42

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 192
    .local v12, mimeType:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-nez v23, :cond_1

    .line 194
    const/16 v17, 0x1

    .line 195
    const/16 v16, 0xcb

    .line 198
    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_3

    .line 200
    :cond_2
    const/16 v17, 0x1

    .line 201
    const/16 v16, 0xc0

    .line 204
    :cond_3
    if-nez v17, :cond_4

    .line 207
    const-string v23, "."

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 208
    .local v6, dotIndex:I
    if-gez v6, :cond_6

    .line 210
    const/16 v17, 0x1

    .line 211
    const/16 v16, 0xc0

    .line 235
    .end local v6           #dotIndex:I
    :cond_4
    :goto_1
    if-nez v17, :cond_5

    if-nez v12, :cond_5

    .line 238
    const/16 v17, 0x1

    .line 239
    const/16 v16, 0xcf

    .line 242
    :cond_5
    if-eqz v17, :cond_9

    const/16 v23, 0xa0

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    move/from16 v23, v16

    .line 244
    goto :goto_0

    .line 213
    .restart local v6       #dotIndex:I
    :cond_6
    add-int/lit8 v23, v6, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    .line 215
    .local v11, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v11, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 217
    .local v20, type:Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 218
    move-object/from16 v12, v20

    .line 227
    :cond_7
    :goto_2
    if-eqz v12, :cond_4

    .line 228
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 221
    :cond_8
    if-nez v12, :cond_7

    .line 223
    const/16 v17, 0x1

    .line 224
    const/16 v16, 0xcf

    goto :goto_2

    .line 247
    .end local v6           #dotIndex:I
    .end local v8           #extension:Ljava/lang/String;
    .end local v10           #length:Ljava/lang/Long;
    .end local v11           #map:Landroid/webkit/MimeTypeMap;
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v14           #name:Ljava/lang/String;
    .end local v18           #request:Ljavax/obex/HeaderSet;
    .end local v20           #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 248
    .local v7, e:Ljava/io/IOException;
    const-string v23, "BtOppObexServer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "get getReceivedHeaders error "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v23, 0xc0

    goto/16 :goto_0

    .line 252
    .end local v7           #e:Ljava/io/IOException;
    .restart local v10       #length:Ljava/lang/Long;
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v14       #name:Ljava/lang/String;
    .restart local v18       #request:Ljavax/obex/HeaderSet;
    :cond_9
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "hint"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v23, "total_bytes"

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v23, "mimetype"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-virtual/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, a:Ljava/lang/String;
    const-string v23, "destination"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v4           #a:Ljava/lang/String;
    :goto_3
    const-string v23, "direction"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v23, "timestamp"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const/4 v15, 0x1

    .line 270
    .local v15, needConfirm:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v23, v0

    if-nez v23, :cond_a

    .line 271
    const-string v23, "confirm"

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const/4 v15, 0x0

    .line 276
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 277
    .local v5, contentUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    .line 279
    if-eqz v15, :cond_b

    .line 280
    new-instance v9, Landroid/content/Intent;

    const-string v23, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v9, in:Landroid/content/Intent;
    const-string v23, "com.android.bluetooth"

    const-class v24, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    .end local v9           #in:Landroid/content/Intent;
    :cond_b
    monitor-enter p0

    .line 292
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 296
    :cond_c
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :cond_d
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 300
    const-wide/16 v23, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    const-wide/32 v25, 0xc350

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 305
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 309
    :catch_1
    move-exception v23

    .line 312
    :cond_e
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    monitor-enter p0

    .line 315
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    :cond_f
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 327
    const-string v23, "BtOppObexServer"

    const-string v24, "Unexpected error!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 332
    const/16 v19, 0xc8

    .line 334
    .local v19, status:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 338
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_12

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v19, v0

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 343
    const/16 v16, 0xd0

    .line 347
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    .line 349
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v21, updateValues:Landroid/content/ContentValues;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 351
    const-string v23, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v23, "status"

    const/16 v24, 0xc0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I

    move-result v19

    .line 359
    const/16 v23, 0xc8

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    .line 360
    const/16 v16, 0xd0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 367
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 368
    const/16 v23, 0xc8

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v13

    .line 370
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .end local v13           #msg:Landroid/os/Message;
    :cond_14
    :goto_6
    move/from16 v23, v16

    .line 411
    goto/16 :goto_0

    .line 262
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v15           #needConfirm:Z
    .end local v19           #status:I
    :cond_15
    const-string v23, "destination"

    const-string v24, "FF:FF:FF:00:00:00"

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 312
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v15       #needConfirm:Z
    :catchall_0
    move-exception v23

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v23

    .line 318
    :catchall_1
    move-exception v23

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v23

    .line 363
    .restart local v19       #status:I
    .restart local v21       #updateValues:Landroid/content/ContentValues;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/opp/Constants;->updateCompleteShare(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto :goto_5

    .line 373
    .end local v21           #updateValues:Landroid/content/ContentValues;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v13

    .line 375
    .restart local v13       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 380
    .end local v13           #msg:Landroid/os/Message;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 390
    :cond_19
    const-string v23, "BtOppObexServer"

    const-string v24, "Rejected incoming request"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 393
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 397
    :goto_7
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 400
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x1ea

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 402
    const/16 v16, 0xc3

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v13

    .line 406
    .restart local v13       #msg:Landroid/os/Message;
    const/16 v23, 0x3

    move/from16 v0, v23

    iput v0, v13, Landroid/os/Message;->what:I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    .line 394
    .end local v13           #msg:Landroid/os/Message;
    :catch_2
    move-exception v7

    .line 395
    .restart local v7       #e:Ljava/io/IOException;
    const-string v23, "BtOppObexServer"

    const-string v24, "error close file stream"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public preStart()V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 123
    :try_start_0
    new-instance v1, Ljavax/obex/ServerSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create server session error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 149
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 152
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 158
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    .line 159
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 112
    return-void
.end method
