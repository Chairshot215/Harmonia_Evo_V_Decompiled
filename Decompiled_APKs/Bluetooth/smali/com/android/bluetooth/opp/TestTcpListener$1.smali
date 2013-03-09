.class Lcom/android/bluetooth/opp/TestTcpListener$1;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/TestTcpListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mServerSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/android/bluetooth/opp/TestTcpListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 394
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/16 v5, 0x1964

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    #getter for: Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z
    invoke-static {v4}, Lcom/android/bluetooth/opp/TestTcpListener;->access$100(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 401
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 402
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 403
    .local v0, clientSocket:Ljava/net/Socket;
    if-nez v0, :cond_1

    .line 422
    .end local v0           #clientSocket:Ljava/net/Socket;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    #getter for: Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z
    invoke-static {v4}, Lcom/android/bluetooth/opp/TestTcpListener;->access$100(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    const-string v4, "BtOppRfcommListener"

    const-string v5, "socketAcceptThread thread was interrupted (2), exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BtOppRfcommListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error listing on channel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    #getter for: Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I
    invoke-static {v6}, Lcom/android/bluetooth/opp/TestTcpListener;->access$000(Lcom/android/bluetooth/opp/TestTcpListener;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    #setter for: Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z
    invoke-static {v4, v7}, Lcom/android/bluetooth/opp/TestTcpListener;->access$102(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z

    goto :goto_0

    .line 407
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #clientSocket:Ljava/net/Socket;
    :cond_1
    :try_start_2
    const-string v4, "BtOppRfcommListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote addr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v3, Lcom/android/bluetooth/opp/TestTcpTransport;

    invoke-direct {v3, v0}, Lcom/android/bluetooth/opp/TestTcpTransport;-><init>(Ljava/net/Socket;)V

    .line 410
    .local v3, transport:Lcom/android/bluetooth/opp/TestTcpTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 411
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    #getter for: Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/TestTcpListener;->access$200(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 412
    const/16 v4, 0x64

    iput v4, v2, Landroid/os/Message;->what:I

    .line 413
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 416
    .end local v0           #clientSocket:Ljava/net/Socket;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #transport:Lcom/android/bluetooth/opp/TestTcpTransport;
    :catch_1
    move-exception v1

    .line 417
    .local v1, e:Ljava/net/SocketException;
    const-string v4, "BtOppRfcommListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accept connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 418
    .end local v1           #e:Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 419
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BtOppRfcommListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accept connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 427
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    return-void
.end method
