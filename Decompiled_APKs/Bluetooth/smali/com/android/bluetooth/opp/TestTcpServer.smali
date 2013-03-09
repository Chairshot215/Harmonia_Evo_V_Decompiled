.class Lcom/android/bluetooth/opp/TestTcpServer;
.super Ljavax/obex/ServerRequestHandler;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerRequestHandler"

.field private static final V:Z = false

.field static final port:I = 0x1964


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpServer;->a:Z

    .line 479
    const-string v0, "enter construtor of TcpServer"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 480
    return-void
.end method


# virtual methods
.method public onAuthenticationFailure([B)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 541
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 484
    const-string v0, "[server:] The client has created an OBEX session"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 486
    monitor-enter p0

    .line 488
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpServer;->a:Z

    if-nez v0, :cond_0

    .line 489
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 494
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    const-string v0, "[server:] we accpet the seesion"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 496
    const/16 v0, 0xa0

    return v0

    .line 494
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 549
    const/16 v0, 0xd1

    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 1
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 533
    const-string v0, "[server:] The client has disconnected the OBEX session"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 1
    .parameter "op"

    .prologue
    .line 553
    const/16 v0, 0xd1

    return v0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 11
    .parameter "op"

    .prologue
    .line 500
    const/4 v4, 0x0

    .line 502
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 504
    .local v6, is:Ljava/io/InputStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got data bytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljavax/obex/Operation;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 507
    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v3, f:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 509
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x3e8

    :try_start_1
    new-array v0, v8, [B

    .line 512
    .local v0, b:[B
    :goto_0
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, len:I
    if-lez v7, :cond_1

    .line 513
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 519
    .end local v0           #b:[B
    .end local v7           #len:I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 520
    .end local v3           #f:Ljava/io/File;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #is:Ljava/io/InputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 522
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 527
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    .end local v1           #e:Ljava/lang/Exception;
    :goto_3
    const/16 v8, 0xa0

    return v8

    .line 516
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #b:[B
    .restart local v3       #f:Ljava/io/File;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 517
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[server:] Wrote data to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    .line 528
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 523
    .end local v0           #b:[B
    .end local v3           #f:Ljava/io/File;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 524
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 519
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 1
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    .line 545
    const/16 v0, 0xd1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 467
    :try_start_0
    const-string v2, "[server:] listen on port 6500"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 468
    new-instance v1, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;

    const/16 v2, 0x1964

    invoke-direct {v1, v2}, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;-><init>(I)V

    .line 470
    .local v1, rsn:Lcom/android/bluetooth/opp/TestTcpSessionNotifier;
    const-string v2, "[server:] Now waiting for a client to connect"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1, p0}, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->acceptAndOpen(Ljavax/obex/ServerRequestHandler;)Ljavax/obex/ServerSession;

    .line 472
    const-string v2, "[server:] A client is now connected"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v1           #rsn:Lcom/android/bluetooth/opp/TestTcpSessionNotifier;
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[server:] Caught the error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 537
    const-string v0, "ServerRequestHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method
