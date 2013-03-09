.class public Lcom/futuredial/SyncMLMOTReadThread;
.super Lcom/futuredial/ReadThread;
.source "SyncMLMOTReadThread.java"


# instance fields
.field protected syncML:Lcom/futuredial/syncml/SyncML_MOT;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter "tParam"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    .line 23
    return-void
.end method


# virtual methods
.method protected DoComm()V
    .locals 14

    .prologue
    .line 124
    const/4 v6, 0x0

    .line 127
    .local v6, resCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/futuredial/SyncMLMOTReadThread;->GetSyncMLObject()Lcom/futuredial/syncml/SyncML_MOT;

    move-result-object v9

    iput-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    .line 128
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v10, p0, Lcom/futuredial/SyncMLMOTReadThread;->context:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/futuredial/syncml/SyncML_MOT;->setActivity(Landroid/content/Context;)V

    .line 129
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget v10, p0, Lcom/futuredial/SyncMLMOTReadThread;->contentType:I

    invoke-virtual {v9, v10}, Lcom/futuredial/syncml/SyncML_MOT;->setModelInfo(I)V

    .line 130
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v10, p0, Lcom/futuredial/SyncMLMOTReadThread;->commuPolicy:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/futuredial/syncml/SyncML_MOT;->setPolicy(Ljava/lang/String;)Z

    move-result v7

    .line 131
    .local v7, state:Z
    if-nez v7, :cond_1

    .line 133
    new-instance v9, Lcom/futuredial/SyncMLException;

    invoke-direct {v9}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v9
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .end local v7           #state:Z
    :catch_0
    move-exception v8

    .line 193
    .local v8, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->bPopResume:Z

    .line 194
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(I)V

    .line 195
    const/16 v9, 0x67

    iput v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->ThreadErrorCode:I

    .line 205
    .end local v8           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_0
    iget v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->ThreadErrorCode:I

    const/16 v10, 0x67

    if-eq v9, v10, :cond_0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Lcom/futuredial/SyncMLMOTReadThread;->disconnect()V
    :try_end_1
    .catch Lcom/futuredial/SyncMLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 213
    :cond_0
    :goto_1
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/futuredial/SyncMLMOTReadThread;->Close(Ljava/lang/Boolean;)V

    .line 214
    return-void

    .line 135
    .restart local v7       #state:Z
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/futuredial/SyncMLMOTReadThread;->OpenPort()I

    .line 136
    invoke-virtual {p0}, Lcom/futuredial/SyncMLMOTReadThread;->InitObexCmd()V

    .line 137
    invoke-virtual {p0}, Lcom/futuredial/SyncMLMOTReadThread;->SetIsCompleted()V

    .line 140
    new-instance v1, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v1}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 141
    .local v1, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v1, v10}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v6

    .line 142
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(II)V

    .line 143
    if-eqz v6, :cond_2

    .line 145
    new-instance v9, Lcom/futuredial/SyncMLException;

    invoke-direct {v9}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v9
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 197
    .end local v1           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v7           #state:Z
    :catch_1
    move-exception v3

    .line 199
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(I)V

    .line 201
    const/4 v9, 0x1

    iput v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 147
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v7       #state:Z
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/futuredial/SyncMLMOTReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v11, 0x196

    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v10, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v9, v10}, Lcom/futuredial/syncml/SyncML_MOT;->setConnectRequestStream([B)Z

    move-result v4

    .line 150
    .local v4, flag:Z
    if-nez v4, :cond_3

    .line 152
    new-instance v9, Lcom/futuredial/SyncMLException;

    invoke-direct {v9}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v9

    .line 156
    :cond_3
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v9}, Lcom/futuredial/syncml/SyncML_MOT;->getConnectResponseStream()[B

    move-result-object v5

    .line 157
    .local v5, res:[B
    if-eqz v5, :cond_4

    array-length v9, v5

    if-nez v9, :cond_5

    .line 159
    :cond_4
    new-instance v9, Lcom/futuredial/SyncMLException;

    invoke-direct {v9}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v9

    .line 161
    :cond_5
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v5, v10}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v6

    .line 162
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(II)V

    .line 163
    if-eqz v6, :cond_6

    .line 165
    new-instance v9, Lcom/futuredial/SyncMLException;

    invoke-direct {v9}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v9

    .line 168
    :cond_6
    const/4 v0, 0x0

    .line 176
    .local v0, b:[B
    :cond_7
    invoke-virtual {p0}, Lcom/futuredial/SyncMLMOTReadThread;->getObject()[B

    move-result-object v0

    .line 177
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v9, v0}, Lcom/futuredial/syncml/SyncML_MOT;->ParseSyncML([B)[B

    move-result-object v2

    .line 178
    .local v2, buf:[B
    if-nez v2, :cond_8

    .line 180
    new-instance v9, Lcom/futuredial/SyncMLException;

    invoke-direct {v9}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v9

    .line 182
    :cond_8
    invoke-virtual {p0, v2}, Lcom/futuredial/SyncMLMOTReadThread;->putObject([B)V

    .line 183
    iget-object v9, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v9}, Lcom/futuredial/syncml/SyncML_MOT;->IsSyncMLFinished()Z
    :try_end_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    if-eqz v9, :cond_7

    goto/16 :goto_0

    .line 209
    .end local v0           #b:[B
    .end local v1           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v2           #buf:[B
    .end local v4           #flag:Z
    .end local v5           #res:[B
    .end local v7           #state:Z
    :catch_2
    move-exception v3

    .line 210
    .local v3, e:Lcom/futuredial/SyncMLException;
    invoke-virtual {v3}, Lcom/futuredial/SyncMLException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected GetSyncMLObject()Lcom/futuredial/syncml/SyncML_MOT;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/futuredial/syncml/SyncML_MOT;

    invoke-direct {v0}, Lcom/futuredial/syncml/SyncML_MOT;-><init>()V

    return-object v0
.end method

.method protected InitObexCmd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7d0

    const/16 v3, 0x3e8

    .line 49
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v2, Lcom/futuredial/SyncMLMOTReadThread$2;

    invoke-direct {v2, p0}, Lcom/futuredial/SyncMLMOTReadThread$2;-><init>(Lcom/futuredial/SyncMLMOTReadThread;)V

    invoke-virtual {v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 67
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 68
    .local v0, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v1, "AT\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLMOTReadThread;->send([BI)I

    .line 69
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLMOTReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 70
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v2, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/SyncML_MOT;->PrintLog([B)V

    .line 72
    const-string v1, "ATE0\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLMOTReadThread;->send([BI)I

    .line 73
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLMOTReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 74
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v2, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/SyncML_MOT;->PrintLog([B)V

    .line 76
    const-string v1, "AT+MSYNC\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLMOTReadThread;->send([BI)I

    .line 77
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLMOTReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 78
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v2, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/SyncML_MOT;->PrintLog([B)V

    .line 79
    return-void
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/SyncMLMOTReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/SyncMLMOTReadThread$1;-><init>(Lcom/futuredial/SyncMLMOTReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 45
    return-void
.end method

.method protected UnInitObexCmd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7d0

    const/16 v3, 0x3e8

    .line 83
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v2, Lcom/futuredial/SyncMLMOTReadThread$3;

    invoke-direct {v2, p0}, Lcom/futuredial/SyncMLMOTReadThread$3;-><init>(Lcom/futuredial/SyncMLMOTReadThread;)V

    invoke-virtual {v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 101
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 102
    .local v0, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v1, "AT\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLMOTReadThread;->send([BI)I

    .line 103
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLMOTReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 104
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v2, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/SyncML_MOT;->PrintLog([B)V

    .line 106
    const-string v1, "ATE0V1&D2\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLMOTReadThread;->send([BI)I

    .line 107
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLMOTReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 108
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v2, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/SyncML_MOT;->PrintLog([B)V

    .line 110
    const-string v1, "AT\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLMOTReadThread;->send([BI)I

    .line 111
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLMOTReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 112
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v2, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/SyncML_MOT;->PrintLog([B)V

    .line 114
    const-string v1, "ATS0=0\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLMOTReadThread;->send([BI)I

    .line 115
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLMOTReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 116
    iget-object v1, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v2, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/SyncML_MOT;->PrintLog([B)V

    .line 117
    return-void
.end method

.method disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/SyncMLException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 310
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v0, v4}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 311
    iget-object v3, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v3, v4}, Lcom/futuredial/syncml/SyncML_MOT;->setDisconnectResponseStream([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    iget-object v3, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v3}, Lcom/futuredial/syncml/SyncML_MOT;->getDisconnectStream()[B

    move-result-object v1

    .line 314
    .local v1, b:[B
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 328
    .end local v1           #b:[B
    :cond_0
    :goto_0
    return-void

    .line 318
    .restart local v1       #b:[B
    :cond_1
    iget-object v3, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    .line 320
    invoke-virtual {p0}, Lcom/futuredial/SyncMLMOTReadThread;->UnInitObexCmd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1           #b:[B
    :catch_0
    move-exception v2

    .line 325
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    new-instance v3, Lcom/futuredial/SyncMLException;

    invoke-direct {v3}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v3
.end method

.method getObject()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x4e20

    const/4 v6, 0x1

    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, resCode:I
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_MOT;->initGetObject()Z

    .line 220
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 228
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v4, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    .line 229
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(II)V

    .line 230
    if-eqz v3, :cond_1

    .line 232
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 234
    :cond_1
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v5, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v4, v5}, Lcom/futuredial/syncml/SyncML_MOT;->setGetObjectResponseStream([B)Z

    move-result v2

    .line 235
    .local v2, bool:Z
    if-nez v2, :cond_2

    .line 237
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 239
    :cond_2
    iget-object v5, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_MOT;->IsObexFinished()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    :goto_0
    invoke-virtual {v5, v4}, Lcom/futuredial/syncml/SyncML_MOT;->getGetObjectStream(B)[B

    move-result-object v1

    .line 240
    .local v1, b:[B
    if-eqz v1, :cond_3

    array-length v4, v1

    if-nez v4, :cond_5

    .line 242
    :cond_3
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 239
    .end local v1           #b:[B
    :cond_4
    const/16 v4, 0x10

    goto :goto_0

    .line 245
    .restart local v1       #b:[B
    :cond_5
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v4, v1, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v3

    .line 246
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(II)V

    .line 247
    if-eqz v3, :cond_6

    .line 249
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 253
    :cond_6
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_MOT;->IsObexFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_MOT;->getResult()[B

    move-result-object v4

    return-object v4
.end method

.method putObject([B)V
    .locals 8
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x4e20

    const/4 v6, 0x1

    .line 263
    const/4 v3, 0x0

    .line 264
    .local v3, resCode:I
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v4, p1}, Lcom/futuredial/syncml/SyncML_MOT;->initGetPutObject([B)V

    .line 265
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 273
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v4, v0, v7}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    .line 274
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(II)V

    .line 275
    if-eqz v3, :cond_1

    .line 277
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    iget-object v5, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v4, v5}, Lcom/futuredial/syncml/SyncML_MOT;->setPutObjectRespStream([B)Z

    move-result v1

    .line 281
    .local v1, bool:Z
    if-nez v1, :cond_2

    .line 283
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 286
    :cond_2
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_MOT;->getPutObjectStream()[B

    move-result-object v2

    .line 287
    .local v2, buf:[B
    if-nez v2, :cond_3

    .line 289
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 291
    :cond_3
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v4, v2, v7}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v3

    .line 292
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLMOTReadThread;->ASSERT(II)V

    .line 293
    if-eqz v3, :cond_4

    .line 295
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 298
    :cond_4
    iget-object v4, p0, Lcom/futuredial/SyncMLMOTReadThread;->syncML:Lcom/futuredial/syncml/SyncML_MOT;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_MOT;->IsObexFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    return-void
.end method
