.class Lcom/sqn/dcc/DeviceController$dcSocketReader;
.super Lcom/sqn/dcc/DeviceController$dcThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dcSocketReader"
.end annotation


# instance fields
.field _dc:Lcom/sqn/dcc/DeviceController;

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0, p1, v0}, Lcom/sqn/dcc/DeviceController$dcThread;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController$1;)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object p2, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v10, 0x10

    const/4 v9, -0x1

    new-array v4, v10, [B

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    if-ne v7, v8, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v10, :cond_5

    :try_start_0
    iget-boolean v7, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v7, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v6, 0x0

    :try_start_1
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    rsub-int/lit8 v8, v5, 0x10

    invoke-virtual {v7, v4, v5, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :goto_3
    if-eq v6, v9, :cond_3

    add-int/2addr v5, v6

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v7}, Lcom/sqn/dcc/DeviceController;->riseSocketReadError()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    iget-boolean v7, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<DC SOCKET READER> IO error: host=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v9, v9, Lcom/sqn/dcc/DeviceController;->_serverIp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' msg=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v7}, Lcom/sqn/dcc/DeviceController;->riseSocketReadError()V

    goto :goto_2

    :cond_5
    :try_start_3
    new-instance v3, Lcom/sqn/dcc/DeviceController$dcpHeader;

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {v3, v7}, Lcom/sqn/dcc/DeviceController$dcpHeader;-><init>(Lcom/sqn/dcc/DeviceController;)V

    invoke-virtual {v3, v4}, Lcom/sqn/dcc/DeviceController$dcpHeader;->processHeader([B)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v1, v3, Lcom/sqn/dcc/DeviceController$dcpHeader;->_size:I

    new-array v0, v1, [B

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_8

    iget-boolean v7, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    :try_start_4
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    sub-int v8, v1, v5

    invoke-virtual {v7, v0, v5, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v6

    :goto_5
    if-eq v6, v9, :cond_6

    add-int/2addr v5, v6

    goto :goto_4

    :cond_6
    :try_start_5
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v7}, Lcom/sqn/dcc/DeviceController;->riseSocketReadError()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    iget-boolean v7, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v7, v7, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<DC SOCKET READER> Error: host=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v9, v9, Lcom/sqn/dcc/DeviceController;->_serverIp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' msg=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_7
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v7}, Lcom/sqn/dcc/DeviceController;->riseSocketReadError()V

    goto/16 :goto_2

    :cond_8
    :try_start_6
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController$dcSocketReader;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v7, v3, v0}, Lcom/sqn/dcc/DeviceController;->processRxCommand(Lcom/sqn/dcc/DeviceController$dcpHeader;[B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v7

    goto :goto_5

    :catch_3
    move-exception v7

    goto/16 :goto_3
.end method
