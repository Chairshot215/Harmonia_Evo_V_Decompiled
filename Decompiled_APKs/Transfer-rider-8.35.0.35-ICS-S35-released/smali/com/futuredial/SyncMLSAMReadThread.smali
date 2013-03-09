.class public Lcom/futuredial/SyncMLSAMReadThread;
.super Lcom/futuredial/ReadThread;
.source "SyncMLSAMReadThread.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected sATCmd:Ljava/lang/String;

.field protected syncML:Lcom/futuredial/syncml/SyncML_SAM;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter "tParam"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 16
    const-string v0, "SyncMLSAMReadThread"

    iput-object v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->sATCmd:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected DoComm()V
    .locals 15

    .prologue
    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, resCode:I
    const/4 v1, 0x0

    .line 101
    .local v1, bDisconnect:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/futuredial/SyncMLSAMReadThread;->GetSyncMLObject()Lcom/futuredial/syncml/SyncML_SAM;

    move-result-object v10

    iput-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    .line 102
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget-object v11, p0, Lcom/futuredial/SyncMLSAMReadThread;->context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/futuredial/syncml/SyncML_SAM;->setActivity(Landroid/content/Context;)V

    .line 103
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget v11, p0, Lcom/futuredial/SyncMLSAMReadThread;->contentType:I

    invoke-virtual {v10, v11}, Lcom/futuredial/syncml/SyncML_SAM;->setModelInfo(I)V

    .line 104
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget-object v11, p0, Lcom/futuredial/SyncMLSAMReadThread;->commuPolicy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/futuredial/syncml/SyncML_SAM;->setPolicy(Ljava/lang/String;)Z

    move-result v8

    .line 105
    .local v8, state:Z
    if-nez v8, :cond_1

    .line 107
    new-instance v10, Lcom/futuredial/SyncMLException;

    invoke-direct {v10}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v10
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v8           #state:Z
    :catch_0
    move-exception v9

    .line 174
    .local v9, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->bPopResume:Z

    .line 175
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(I)V

    .line 176
    const/16 v10, 0x67

    iput v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->ThreadErrorCode:I

    .line 186
    .end local v9           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_0
    iget v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->ThreadErrorCode:I

    const/16 v11, 0x67

    if-eq v10, v11, :cond_0

    .line 189
    if-nez v1, :cond_0

    .line 190
    :try_start_1
    invoke-virtual {p0}, Lcom/futuredial/SyncMLSAMReadThread;->disconnect()V
    :try_end_1
    .catch Lcom/futuredial/SyncMLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 195
    :cond_0
    :goto_1
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/futuredial/SyncMLSAMReadThread;->Close(Ljava/lang/Boolean;)V

    .line 196
    return-void

    .line 109
    .restart local v8       #state:Z
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/futuredial/SyncMLSAMReadThread;->OpenPort()I

    .line 110
    invoke-virtual {p0}, Lcom/futuredial/SyncMLSAMReadThread;->InitObexCmd()V

    .line 111
    invoke-virtual {p0}, Lcom/futuredial/SyncMLSAMReadThread;->SetIsCompleted()V

    .line 113
    new-instance v2, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v2}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 115
    .local v2, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->sATCmd:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {p0, v10, v11}, Lcom/futuredial/SyncMLSAMReadThread;->send([BI)I

    .line 116
    const/16 v10, 0x4e20

    invoke-virtual {p0, v2, v10}, Lcom/futuredial/SyncMLSAMReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v7

    .line 117
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(II)V

    .line 118
    if-eqz v7, :cond_2

    .line 120
    new-instance v10, Lcom/futuredial/SyncMLException;

    invoke-direct {v10}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v10
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    .end local v2           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v8           #state:Z
    :catch_1
    move-exception v4

    .line 180
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(I)V

    .line 182
    const/4 v10, 0x1

    iput v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 122
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v8       #state:Z
    :cond_2
    :try_start_3
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/futuredial/SyncMLSAMReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v12, 0x196

    const/16 v13, 0x10

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget-object v11, v2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v10, v11}, Lcom/futuredial/syncml/SyncML_SAM;->setConnectRequestStream([B)Z

    move-result v5

    .line 125
    .local v5, flag:Z
    if-nez v5, :cond_3

    .line 127
    new-instance v10, Lcom/futuredial/SyncMLException;

    invoke-direct {v10}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v10

    .line 131
    :cond_3
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v10}, Lcom/futuredial/syncml/SyncML_SAM;->getConnectResponseStream()[B

    move-result-object v6

    .line 132
    .local v6, res:[B
    if-eqz v6, :cond_4

    array-length v10, v6

    if-nez v10, :cond_5

    .line 134
    :cond_4
    new-instance v10, Lcom/futuredial/SyncMLException;

    invoke-direct {v10}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v10

    .line 136
    :cond_5
    const/16 v10, 0x4e20

    invoke-virtual {p0, v6, v10}, Lcom/futuredial/SyncMLSAMReadThread;->send([BI)I

    move-result v7

    .line 137
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(II)V

    .line 138
    if-eqz v7, :cond_6

    .line 140
    new-instance v10, Lcom/futuredial/SyncMLException;

    invoke-direct {v10}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v10

    .line 143
    :cond_6
    const/4 v0, 0x0

    .line 147
    .local v0, b:[B
    :cond_7
    sget v10, Lcom/futuredial/SyncMLSAMReadThread;->CancelFlag:I

    if-nez v10, :cond_8

    .line 149
    new-instance v10, Lcom/futuredial/CancelException;

    invoke-direct {v10}, Lcom/futuredial/CancelException;-><init>()V

    throw v10

    .line 151
    :cond_8
    invoke-virtual {p0}, Lcom/futuredial/SyncMLSAMReadThread;->getObject()[B

    move-result-object v0

    .line 152
    if-eqz v0, :cond_9

    array-length v10, v0

    if-nez v10, :cond_a

    .line 154
    :cond_9
    const/4 v1, 0x1

    .line 155
    goto/16 :goto_0

    .line 157
    :cond_a
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v10, v0}, Lcom/futuredial/syncml/SyncML_SAM;->ParseSyncML([B)[B

    move-result-object v3

    .line 158
    .local v3, buf:[B
    if-nez v3, :cond_b

    .line 160
    new-instance v10, Lcom/futuredial/SyncMLException;

    invoke-direct {v10}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v10

    .line 162
    :cond_b
    invoke-virtual {p0, v3}, Lcom/futuredial/SyncMLSAMReadThread;->putObject([B)V

    .line 163
    iget-object v10, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v10}, Lcom/futuredial/syncml/SyncML_SAM;->IsSyncMLFinished()Z
    :try_end_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v10

    if-eqz v10, :cond_7

    goto/16 :goto_0

    .line 191
    .end local v0           #b:[B
    .end local v2           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v3           #buf:[B
    .end local v5           #flag:Z
    .end local v6           #res:[B
    .end local v8           #state:Z
    :catch_2
    move-exception v4

    .line 192
    .local v4, e:Lcom/futuredial/SyncMLException;
    invoke-virtual {v4}, Lcom/futuredial/SyncMLException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected GetSyncMLObject()Lcom/futuredial/syncml/SyncML_SAM;
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->contentType:I

    if-nez v0, :cond_0

    .line 83
    const-string v0, "AT+SYNCML=1081\r"

    iput-object v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->sATCmd:Ljava/lang/String;

    .line 93
    :goto_0
    new-instance v0, Lcom/futuredial/syncml/SyncML_SAM;

    invoke-direct {v0}, Lcom/futuredial/syncml/SyncML_SAM;-><init>()V

    return-object v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 87
    const-string v0, "AT+SYNCML=1082\r"

    iput-object v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->sATCmd:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_1
    const-string v0, "SyncMLSAMReadThread"

    const-string v1, "Not Support Module!!"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    .line 47
    iget-object v1, p0, Lcom/futuredial/SyncMLSAMReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v2, Lcom/futuredial/SyncMLSAMReadThread$2;

    invoke-direct {v2, p0}, Lcom/futuredial/SyncMLSAMReadThread$2;-><init>(Lcom/futuredial/SyncMLSAMReadThread;)V

    invoke-virtual {v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 65
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 66
    .local v0, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v1, "AT\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLSAMReadThread;->send([BI)I

    .line 67
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLSAMReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 70
    const-string v1, "ATE0\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLSAMReadThread;->send([BI)I

    .line 71
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLSAMReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 74
    const-string v1, "AT+SYNCML=FDN\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SyncMLSAMReadThread;->send([BI)I

    .line 75
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SyncMLSAMReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 77
    return-void
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/futuredial/SyncMLSAMReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/SyncMLSAMReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/SyncMLSAMReadThread$1;-><init>(Lcom/futuredial/SyncMLSAMReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 44
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
    .line 289
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 292
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/SyncMLSAMReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v0, v4}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 293
    iget-object v3, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget-object v4, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v3, v4}, Lcom/futuredial/syncml/SyncML_SAM;->setDisconnectResponseStream([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v3}, Lcom/futuredial/syncml/SyncML_SAM;->getDisconnectStream()[B

    move-result-object v1

    .line 296
    .local v1, b:[B
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 308
    .end local v1           #b:[B
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v1       #b:[B
    :cond_1
    iget-object v3, p0, Lcom/futuredial/SyncMLSAMReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v1           #b:[B
    :catch_0
    move-exception v2

    .line 305
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
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

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, resCode:I
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_SAM;->initGetObject()Z

    .line 202
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 206
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    sget v4, Lcom/futuredial/SyncMLSAMReadThread;->CancelFlag:I

    if-nez v4, :cond_1

    .line 208
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4

    .line 210
    :cond_1
    invoke-virtual {p0, v0, v7}, Lcom/futuredial/SyncMLSAMReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    .line 211
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(II)V

    .line 212
    if-eqz v3, :cond_2

    .line 214
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 216
    :cond_2
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget-object v5, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v4, v5}, Lcom/futuredial/syncml/SyncML_SAM;->setGetObjectResponseStream([B)Z

    move-result v2

    .line 217
    .local v2, bool:Z
    if-nez v2, :cond_3

    .line 219
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 221
    :cond_3
    iget-object v5, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_SAM;->IsObexFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    :goto_0
    invoke-virtual {v5, v4}, Lcom/futuredial/syncml/SyncML_SAM;->getGetObjectStream(B)[B

    move-result-object v1

    .line 222
    .local v1, b:[B
    if-eqz v1, :cond_4

    array-length v4, v1

    if-nez v4, :cond_6

    .line 224
    :cond_4
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 221
    .end local v1           #b:[B
    :cond_5
    const/16 v4, 0x10

    goto :goto_0

    .line 227
    .restart local v1       #b:[B
    :cond_6
    invoke-virtual {p0, v1, v7}, Lcom/futuredial/SyncMLSAMReadThread;->send([BI)I

    move-result v3

    .line 228
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(II)V

    .line 229
    if-eqz v3, :cond_7

    .line 231
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 235
    :cond_7
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_SAM;->IsObexFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_SAM;->getResult()[B

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

    .line 245
    const/4 v3, 0x0

    .line 246
    .local v3, resCode:I
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v4, p1}, Lcom/futuredial/syncml/SyncML_SAM;->initGetPutObject([B)V

    .line 247
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 251
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    sget v4, Lcom/futuredial/SyncMLSAMReadThread;->CancelFlag:I

    if-nez v4, :cond_1

    .line 253
    new-instance v4, Lcom/futuredial/CancelException;

    invoke-direct {v4}, Lcom/futuredial/CancelException;-><init>()V

    throw v4

    .line 255
    :cond_1
    invoke-virtual {p0, v0, v7}, Lcom/futuredial/SyncMLSAMReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v3

    .line 256
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(II)V

    .line 257
    if-eqz v3, :cond_2

    .line 259
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 262
    :cond_2
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    iget-object v5, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v4, v5}, Lcom/futuredial/syncml/SyncML_SAM;->setPutObjectRespStream([B)Z

    move-result v1

    .line 263
    .local v1, bool:Z
    if-nez v1, :cond_3

    .line 265
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 268
    :cond_3
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_SAM;->getPutObjectStream()[B

    move-result-object v2

    .line 269
    .local v2, buf:[B
    if-nez v2, :cond_4

    .line 271
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 273
    :cond_4
    invoke-virtual {p0, v2, v7}, Lcom/futuredial/SyncMLSAMReadThread;->send([BI)I

    move-result v3

    .line 274
    invoke-virtual {p0, v3, v6}, Lcom/futuredial/SyncMLSAMReadThread;->ASSERT(II)V

    .line 275
    if-eqz v3, :cond_5

    .line 277
    new-instance v4, Lcom/futuredial/SyncMLException;

    invoke-direct {v4}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v4

    .line 280
    :cond_5
    iget-object v4, p0, Lcom/futuredial/SyncMLSAMReadThread;->syncML:Lcom/futuredial/syncml/SyncML_SAM;

    invoke-virtual {v4}, Lcom/futuredial/syncml/SyncML_SAM;->IsObexFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    return-void
.end method
