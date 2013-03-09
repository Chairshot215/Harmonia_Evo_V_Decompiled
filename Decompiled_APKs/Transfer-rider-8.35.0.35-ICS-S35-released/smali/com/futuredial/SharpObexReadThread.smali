.class public Lcom/futuredial/SharpObexReadThread;
.super Lcom/futuredial/ObexReadThread;
.source "SharpObexReadThread.java"


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 0
    .parameter "tParam"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/futuredial/ObexReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected DoComm()V
    .locals 17

    .prologue
    .line 57
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/SharpObexReadThread;->ThreadErrorCode:I

    .line 60
    const/4 v9, 0x0

    .line 62
    .local v9, res:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SharpObexReadThread;->OpenPort()I

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SharpObexReadThread;->InitObexCmd()V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SharpObexReadThread;->SetIsCompleted()V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SharpObexReadThread;->GetExitDotask()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 68
    new-instance v12, Lcom/futuredial/CancelException;

    invoke-direct {v12}, Lcom/futuredial/CancelException;-><init>()V

    throw v12
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 198
    :catch_0
    move-exception v11

    .line 201
    .local v11, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/futuredial/SharpObexReadThread;->bPopResume:Z

    .line 202
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/SharpObexReadThread;->ASSERT(I)V

    .line 203
    const/16 v12, 0x67

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/SharpObexReadThread;->ThreadErrorCode:I

    .line 215
    .end local v11           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_0
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/SharpObexReadThread;->Close(Ljava/lang/Boolean;)V

    .line 218
    const-wide/16 v12, 0x1388

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    .line 225
    :goto_1
    return-void

    .line 71
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/futuredial/SharpObexReadThread;->contentType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/SharpObexReadThread;->chooseChildModule(I)Lcom/futuredial/obex/OBEX_SNE;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    .line 73
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->getConnectStream()[B

    move-result-object v6

    .line 74
    .local v6, data:[B
    if-eqz v6, :cond_1

    array-length v12, v6

    if-nez v12, :cond_2

    .line 76
    :cond_1
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 205
    .end local v6           #data:[B
    :catch_1
    move-exception v4

    .line 206
    .local v4, ce:Lcom/futuredial/CancelException;
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/SharpObexReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 78
    .end local v4           #ce:Lcom/futuredial/CancelException;
    .restart local v6       #data:[B
    :cond_2
    :try_start_3
    new-instance v3, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v3}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V
    :try_end_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 81
    .local v3, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_4
    const-string v12, "Enter ObexConnectSend"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v6, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v9

    .line 83
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/SharpObexReadThread;->ASSERT(II)V

    .line 84
    if-eqz v9, :cond_3

    .line 86
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_4 .. :try_end_4} :catch_1

    .line 98
    :catch_2
    move-exception v7

    .line 100
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_5
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 208
    .end local v3           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v6           #data:[B
    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 210
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/SharpObexReadThread;->ASSERT(I)V

    .line 212
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/SharpObexReadThread;->ThreadErrorCode:I

    goto/16 :goto_0

    .line 88
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v6       #data:[B
    :cond_3
    :try_start_6
    const-string v12, "Exit ObexConnectSend"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 89
    const-string v12, "Enter ObexConnectRecv"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v3, v13}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v9

    .line 91
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/SharpObexReadThread;->ASSERT(II)V

    .line 92
    if-eqz v9, :cond_4

    .line 94
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12

    .line 96
    :cond_4
    const-string v12, "Exit ObexConnectRecv"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_6 .. :try_end_6} :catch_1

    .line 103
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/SharpObexReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v14, 0x196

    const/16 v15, 0x10

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    iget-object v13, v3, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v12, v13}, Lcom/futuredial/obex/OBEX_SNE;->setConnectResponseStream([B)Z

    move-result v10

    .line 106
    .local v10, state:Z
    if-nez v10, :cond_5

    .line 108
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12

    .line 110
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->initGetObject()Z

    move-result v12

    if-nez v12, :cond_6

    .line 112
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12

    .line 190
    .local v1, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    .local v5, d:[B
    .local v8, flag:Z
    :catch_4
    move-exception v12

    .line 118
    .end local v1           #arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v5           #d:[B
    .end local v8           #flag:Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SharpObexReadThread;->GetExitDotask()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 120
    new-instance v12, Lcom/futuredial/CancelException;

    invoke-direct {v12}, Lcom/futuredial/CancelException;-><init>()V

    throw v12

    .line 123
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->getGetObjectStream()[B

    move-result-object v5

    .line 124
    .restart local v5       #d:[B
    if-eqz v5, :cond_8

    array-length v12, v5

    if-nez v12, :cond_9

    .line 126
    :cond_8
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12

    .line 129
    :cond_9
    new-instance v1, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v1}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V
    :try_end_7
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 132
    .restart local v1       #arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v5, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v9

    .line 133
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/SharpObexReadThread;->ASSERT(II)V

    .line 134
    if-eqz v9, :cond_a

    .line 136
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_8 .. :try_end_8} :catch_1

    .line 145
    :catch_5
    move-exception v7

    .line 147
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_9
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_9
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 138
    .end local v7           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v1, v13}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v9

    .line 139
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/SharpObexReadThread;->ASSERT(II)V

    .line 140
    if-eqz v9, :cond_b

    .line 142
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_a .. :try_end_a} :catch_1

    .line 149
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    iget-object v13, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v12, v13}, Lcom/futuredial/obex/OBEX_SNE;->setGetObjectResponseStream([B)Z

    move-result v8

    .line 150
    .restart local v8       #flag:Z
    if-nez v8, :cond_c

    .line 152
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_b
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 156
    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->IsFinished()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->getDisconnectStream()[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v2

    .line 162
    .local v2, b:[B
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v13, Lcom/futuredial/SharpObexReadThread$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/futuredial/SharpObexReadThread$2;-><init>(Lcom/futuredial/SharpObexReadThread;)V

    invoke-virtual {v12, v13}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v2, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v9

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0xbb8

    invoke-virtual {v12, v1, v13}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_d .. :try_end_d} :catch_1

    move-result v9

    .line 196
    :goto_2
    const/4 v12, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/SharpObexReadThread;->ThreadErrorCode:I
    :try_end_e
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    .line 220
    .end local v1           #arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v2           #b:[B
    .end local v3           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v5           #d:[B
    .end local v6           #data:[B
    .end local v8           #flag:Z
    .end local v10           #state:Z
    :catch_6
    move-exception v7

    .line 223
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 183
    .end local v7           #e:Ljava/lang/InterruptedException;
    .restart local v1       #arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v2       #b:[B
    .restart local v3       #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v5       #d:[B
    .restart local v6       #data:[B
    .restart local v8       #flag:Z
    .restart local v10       #state:Z
    :catch_7
    move-exception v12

    goto :goto_2
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

    .line 26
    iget-object v1, p0, Lcom/futuredial/SharpObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v2, Lcom/futuredial/SharpObexReadThread$1;

    invoke-direct {v2, p0}, Lcom/futuredial/SharpObexReadThread$1;-><init>(Lcom/futuredial/SharpObexReadThread;)V

    invoke-virtual {v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 44
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 45
    .local v0, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    const-string v1, "AT\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SharpObexReadThread;->send([BI)I

    .line 46
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SharpObexReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 47
    const-string v1, "AT\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SharpObexReadThread;->send([BI)I

    .line 48
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SharpObexReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 49
    const-string v1, "AT\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SharpObexReadThread;->send([BI)I

    .line 50
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SharpObexReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 51
    const-string v1, "AT*EOBEX\r"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/futuredial/SharpObexReadThread;->send([BI)I

    .line 52
    invoke-virtual {p0, v0, v4}, Lcom/futuredial/SharpObexReadThread;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 53
    return-void
.end method

.method protected chooseChildModule(I)Lcom/futuredial/obex/OBEX_SNE;
    .locals 2
    .parameter "contentType"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    if-nez p1, :cond_1

    .line 232
    new-instance v0, Lcom/futuredial/obex/OBEX_SHARP_PB;

    .end local v0           #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_SHARP_PB;-><init>()V

    .line 243
    .restart local v0       #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 236
    new-instance v0, Lcom/futuredial/obex/OBEX_SHARP_CAL;

    .end local v0           #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_SHARP_CAL;-><init>()V

    .restart local v0       #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    goto :goto_0

    .line 238
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method
