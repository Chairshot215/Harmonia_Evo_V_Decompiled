.class Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;
.super Lcom/sqn/dcc/DeviceController$dcThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dcSocketDisconnect"
.end annotation


# instance fields
.field _dc:Lcom/sqn/dcc/DeviceController;

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0, p1, v0}, Lcom/sqn/dcc/DeviceController$dcThread;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController$1;)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object p2, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    if-eqz v1, :cond_c

    :cond_0
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "<DC> Disconnect."

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_socketOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    if-eqz v1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object v4, v1, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object v4, v1, Lcom/sqn/dcc/DeviceController;->_socketOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object v4, v1, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    if-eqz v1, :cond_6

    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-virtual {v1}, Lcom/sqn/dcc/DeviceController$dcSocketReader;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-virtual {v1}, Lcom/sqn/dcc/DeviceController$dcSocketReader;->terminate()V

    :try_start_3
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sqn/dcc/DeviceController$dcSocketReader;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_6
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    if-eqz v1, :cond_8

    :cond_7
    :goto_4
    iget-boolean v1, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    invoke-virtual {v1}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    invoke-virtual {v1}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->terminate()V

    :try_start_4
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->join(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_8
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    if-eqz v1, :cond_a

    :cond_9
    :goto_5
    iget-boolean v1, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-virtual {v1}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-virtual {v1}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->terminate()V

    :try_start_5
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "<DC DISCONNECT> Thread was interrupted"

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<DC DISCONNECT> OutStream IO error: msg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<DC DISCONNECT> InStream IO error: msg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<DC DISCONNECT> Socket IO error: msg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "<DC DISCONNECT> Thread was interrupted"

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "<DC DISCONNECT> Thread was interrupted"

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object v4, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object v4, v1, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object v4, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-boolean v5, v1, Lcom/sqn/dcc/DeviceController;->_discoverMessageReceived:Z

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-boolean v5, v1, Lcom/sqn/dcc/DeviceController;->_discoverMessageMsReceived:Z

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-boolean v5, v1, Lcom/sqn/dcc/DeviceController;->_targetConnected:Z

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_services:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-boolean v1, v1, Lcom/sqn/dcc/DeviceController;->_dccConnected:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-boolean v1, v1, Lcom/sqn/dcc/DeviceController;->_targetConnected:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget-object v1, v1, Lcom/sqn/dcc/DccInitConfig;->use:Lcom/sqn/dcc/DccUsing;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget-object v1, v1, Lcom/sqn/dcc/DccInitConfig;->use:Lcom/sqn/dcc/DccUsing;

    invoke-virtual {v1}, Lcom/sqn/dcc/DccUsing;->disconnected()V

    :cond_b
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-boolean v5, v1, Lcom/sqn/dcc/DeviceController;->_dccConnected:Z

    :cond_c
    return-void
.end method
