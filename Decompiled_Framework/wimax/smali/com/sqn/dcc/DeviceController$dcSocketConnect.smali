.class Lcom/sqn/dcc/DeviceController$dcSocketConnect;
.super Lcom/sqn/dcc/DeviceController$dcThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dcSocketConnect"
.end annotation


# instance fields
.field _dc:Lcom/sqn/dcc/DeviceController;

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0, p1, v0}, Lcom/sqn/dcc/DeviceController$dcThread;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController$1;)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object p2, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    if-ne v6, v7, :cond_4

    :goto_1
    iget-boolean v6, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    #getter for: Lcom/sqn/dcc/DeviceController;->_connect:Z
    invoke-static {v6}, Lcom/sqn/dcc/DeviceController;->access$100(Lcom/sqn/dcc/DeviceController;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v6}, Lcom/sqn/dcc/DeviceController;->connect()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    iget-boolean v6, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v6}, Lcom/sqn/dcc/DeviceController;->connect()Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v1, Lcom/sqn/dcc/OutArray;

    invoke-direct {v1}, Lcom/sqn/dcc/OutArray;-><init>()V

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-direct {v2}, Lcom/sqn/dcc/OutValue;-><init>()V

    :goto_2
    iget-boolean v6, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-boolean v6, v6, Lcom/sqn/dcc/DeviceController;->_discoverMessageReceived:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sqn/dcc/DeviceController;->_dccConnected:Z

    invoke-static {v1}, Lcom/sqn/dcc/Internal;->GetAvailableMs(Lcom/sqn/dcc/OutArray;)I

    move-result v3

    if-nez v3, :cond_9

    iget-object v6, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v6, [Lcom/sqn/dcc/MsDescriptor;

    array-length v6, v6

    if-eqz v6, :cond_9

    const/16 v4, 0xf

    :cond_2
    :goto_3
    iget-boolean v6, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v6, :cond_c

    if-lez v4, :cond_c

    iget-object v6, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v6, [Lcom/sqn/dcc/MsDescriptor;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-wide v6, v6, Lcom/sqn/dcc/MsDescriptor;->mac:J

    invoke-static {v6, v7, v2}, Lcom/sqn/dcc/Internal;->ConnectToMs(JLcom/sqn/dcc/OutValue;)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v5, 0x5

    :cond_3
    :goto_4
    iget-boolean v6, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v6, :cond_2

    if-lez v5, :cond_2

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-boolean v6, v6, Lcom/sqn/dcc/DeviceController;->_discoverMessageMsReceived:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    new-instance v7, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    iget-object v8, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v9, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-direct {v7, v8, v9}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    iput-object v7, v6, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    invoke-virtual {v6}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->start()V

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget-object v6, v6, Lcom/sqn/dcc/DccInitConfig;->use:Lcom/sqn/dcc/DccUsing;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget-object v6, v6, Lcom/sqn/dcc/DccInitConfig;->use:Lcom/sqn/dcc/DccUsing;

    invoke-virtual {v6}, Lcom/sqn/dcc/DccUsing;->connected()V

    :cond_4
    :goto_5
    return-void

    :cond_5
    const-wide/16 v6, 0x7d0

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_3

    const-wide/16 v6, 0x7d0

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v7, "<DCP CONNECT> Can\'t connect to MS"

    invoke-virtual {v6, v7}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_2

    const-wide/16 v6, 0x7d0

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_9
    if-nez v3, :cond_a

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v7, "<DCP CONNECT> MS list is empty"

    invoke-virtual {v6, v7}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_a
    :goto_6
    const-wide/16 v6, 0xbb8

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_b
    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v7, "<DCP CONNECT> Error getting list of the MS"

    invoke-virtual {v6, v7}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    iget-boolean v6, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-virtual {v6}, Lcom/sqn/dcc/DeviceController$dcSocketReader;->terminate()V

    :try_start_4
    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v6, v6, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-virtual {v6}, Lcom/sqn/dcc/DeviceController$dcSocketReader;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_d
    :goto_7
    iget-object v6, p0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v6}, Lcom/sqn/dcc/DeviceController;->attemptToReconnect()V

    goto :goto_5

    :cond_e
    const-wide/16 v6, 0x7d0

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v6

    goto/16 :goto_0

    :catch_5
    move-exception v6

    goto :goto_7
.end method
