.class public Lcom/futuredial/ObexReadThread;
.super Lcom/futuredial/ReadThread;
.source "ObexReadThread.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected obex:Lcom/futuredial/obex/OBEX_SNE;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter "tParam"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/futuredial/ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 17
    const-string v0, "ObexReadThread"

    iput-object v0, p0, Lcom/futuredial/ObexReadThread;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    .line 23
    return-void
.end method


# virtual methods
.method protected DoComm()V
    .locals 17

    .prologue
    .line 61
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/ObexReadThread;->ThreadErrorCode:I

    .line 64
    const/4 v9, 0x0

    .line 65
    .local v9, res:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexReadThread;->InitBeforeOpen()V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexReadThread;->OpenPort()I

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexReadThread;->InitObexCmd()V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexReadThread;->SetIsCompleted()V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexReadThread;->GetExitDotask()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 72
    new-instance v12, Lcom/futuredial/CancelException;

    invoke-direct {v12}, Lcom/futuredial/CancelException;-><init>()V

    throw v12
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 185
    :catch_0
    move-exception v11

    .line 188
    .local v11, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/futuredial/ObexReadThread;->bPopResume:Z

    .line 189
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/ObexReadThread;->ASSERT(I)V

    .line 190
    const/16 v12, 0x67

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/ObexReadThread;->ThreadErrorCode:I

    .line 203
    .end local v11           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_0
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/ObexReadThread;->Close(Ljava/lang/Boolean;)V

    .line 204
    return-void

    .line 75
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/futuredial/ObexReadThread;->contentType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/ObexReadThread;->chooseChildModule(I)Lcom/futuredial/obex/OBEX_SNE;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    .line 77
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->getConnectStream()[B

    move-result-object v6

    .line 78
    .local v6, data:[B
    if-eqz v6, :cond_1

    array-length v12, v6

    if-nez v12, :cond_2

    .line 80
    :cond_1
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 192
    .end local v6           #data:[B
    :catch_1
    move-exception v4

    .line 193
    .local v4, ce:Lcom/futuredial/CancelException;
    const-string v12, "ObexReadThread"

    const-string v13, "Cancel Msg!!!"

    invoke-static {v12, v13}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/ObexReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 82
    .end local v4           #ce:Lcom/futuredial/CancelException;
    .restart local v6       #data:[B
    :cond_2
    :try_start_2
    new-instance v3, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v3}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V
    :try_end_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 85
    .local v3, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_3
    const-string v12, "Enter ObexConnectSend"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v6, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v9

    .line 87
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/ObexReadThread;->ASSERT(II)V

    .line 88
    if-eqz v9, :cond_3

    .line 90
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_3 .. :try_end_3} :catch_1

    .line 102
    :catch_2
    move-exception v7

    .line 104
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_4
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 196
    .end local v3           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v6           #data:[B
    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 198
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/futuredial/ObexReadThread;->ASSERT(I)V

    .line 200
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/ObexReadThread;->ThreadErrorCode:I

    goto/16 :goto_0

    .line 92
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v6       #data:[B
    :cond_3
    :try_start_5
    const-string v12, "Exit ObexConnectSend"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 93
    const-string v12, "Enter ObexConnectRecv"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v3, v13}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v9

    .line 95
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/ObexReadThread;->ASSERT(II)V

    .line 96
    if-eqz v9, :cond_4

    .line 98
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12

    .line 100
    :cond_4
    const-string v12, "Exit ObexConnectRecv"

    invoke-static {v12}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_5 .. :try_end_5} :catch_1

    .line 107
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/ObexReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v14, 0x196

    const/16 v15, 0x10

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    iget-object v13, v3, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v12, v13}, Lcom/futuredial/obex/OBEX_SNE;->setConnectResponseStream([B)Z

    move-result v10

    .line 110
    .local v10, state:Z
    if-nez v10, :cond_5

    .line 112
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12

    .line 114
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->initGetObject()Z

    move-result v12

    if-nez v12, :cond_6

    .line 116
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12

    .line 177
    .local v1, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    .local v5, d:[B
    .local v8, flag:Z
    :catch_4
    move-exception v12

    .line 122
    .end local v1           #arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v5           #d:[B
    .end local v8           #flag:Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ObexReadThread;->GetExitDotask()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 124
    new-instance v12, Lcom/futuredial/CancelException;

    invoke-direct {v12}, Lcom/futuredial/CancelException;-><init>()V

    throw v12

    .line 127
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->getGetObjectStream()[B

    move-result-object v5

    .line 128
    .restart local v5       #d:[B
    if-eqz v5, :cond_8

    array-length v12, v5

    if-nez v12, :cond_9

    .line 130
    :cond_8
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12

    .line 133
    :cond_9
    new-instance v1, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v1}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V
    :try_end_6
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 136
    .restart local v1       #arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v5, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v9

    .line 137
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/ObexReadThread;->ASSERT(II)V

    .line 138
    if-eqz v9, :cond_a

    .line 140
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_7 .. :try_end_7} :catch_1

    .line 149
    :catch_5
    move-exception v7

    .line 151
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_8
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_8
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 142
    .end local v7           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v13, 0xea60

    invoke-virtual {v12, v1, v13}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v9

    .line 143
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/futuredial/ObexReadThread;->ASSERT(II)V

    .line 144
    if-eqz v9, :cond_b

    .line 146
    new-instance v12, Lcom/futuredial/SyncMLException;

    invoke-direct {v12}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_9 .. :try_end_9} :catch_1

    .line 153
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    iget-object v13, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v12, v13}, Lcom/futuredial/obex/OBEX_SNE;->setGetObjectResponseStream([B)Z

    move-result v8

    .line 154
    .restart local v8       #flag:Z
    if-nez v8, :cond_c

    .line 156
    new-instance v12, Lcom/futuredial/OBEXException;

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v14}, Lcom/futuredial/obex/OBEX_SNE;->getObexErrorCode()B

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/futuredial/OBEXException;-><init>(IB)V

    throw v12
    :try_end_a
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 160
    :cond_c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->IsFinished()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->obex:Lcom/futuredial/obex/OBEX_SNE;

    invoke-virtual {v12}, Lcom/futuredial/obex/OBEX_SNE;->getDisconnectStream()[B
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v2

    .line 166
    .local v2, b:[B
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v2, v13}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v9

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/ObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v13, 0x4e20

    invoke-virtual {v12, v1, v13}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_c .. :try_end_c} :catch_1

    move-result v9

    .line 183
    :goto_1
    const/4 v12, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iput v12, v0, Lcom/futuredial/ObexReadThread;->ThreadErrorCode:I
    :try_end_d
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/futuredial/CancelException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 170
    :catch_6
    move-exception v12

    goto :goto_1
.end method

.method protected InitBeforeOpen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method protected InitObexCmd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method protected SetIsCompleted()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/futuredial/ObexReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/ObexReadThread$1;

    invoke-direct {v1, p0}, Lcom/futuredial/ObexReadThread$1;-><init>(Lcom/futuredial/ObexReadThread;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 44
    return-void
.end method

.method protected chooseChildModule(I)Lcom/futuredial/obex/OBEX_SNE;
    .locals 2
    .parameter "contentType"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    if-nez p1, :cond_1

    .line 211
    new-instance v0, Lcom/futuredial/obex/OBEX_SNE_PB;

    .end local v0           #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_SNE_PB;-><init>()V

    .line 222
    .restart local v0       #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    :cond_0
    :goto_0
    return-object v0

    .line 213
    :cond_1
    const/4 v1, 0x1

    if-eq v1, p1, :cond_2

    const/4 v1, 0x6

    if-ne v1, p1, :cond_3

    .line 215
    :cond_2
    new-instance v0, Lcom/futuredial/obex/OBEX_SNE_CAL;

    .end local v0           #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_SNE_CAL;-><init>()V

    .restart local v0       #obexSNE:Lcom/futuredial/obex/OBEX_SNE;
    goto :goto_0

    .line 217
    :cond_3
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method
