.class public Lcom/futuredial/SyncML11ReadThread;
.super Lcom/futuredial/SyncML12ReadThread;
.source "SyncML11ReadThread.java"


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 0
    .parameter "tParam"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/futuredial/SyncML12ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected DoComm()V
    .locals 22

    .prologue
    .line 22
    const/4 v14, 0x0

    .line 23
    .local v14, resCode:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uuid:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    .line 24
    .local v9, id:Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uuid:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    .line 25
    .local v10, pId:Ljava/util/UUID;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/futuredial/SyncML11ReadThread;->OpenPort(Ljava/util/UUID;)I

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML11ReadThread;->SetIsCompleted()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML11ReadThread;->GetSyncMLObject()Lcom/futuredial/syncml/SyncML_NOK;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    .line 31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/SyncML_NOK;->setActivity(Landroid/content/Context;)V

    .line 32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->commuPolicy:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/SyncML_NOK;->setPolicy(Ljava/lang/String;)Z

    move-result v15

    .line 33
    .local v15, state:Z
    if-nez v15, :cond_0

    .line 35
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_0
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    .end local v9           #id:Ljava/util/UUID;
    .end local v10           #pId:Ljava/util/UUID;
    .end local v15           #state:Z
    :catch_0
    move-exception v16

    .line 176
    .local v16, ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/futuredial/SyncML11ReadThread;->bPopResume:Z

    .line 177
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(I)V

    .line 178
    const/16 v17, 0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/SyncML11ReadThread;->ThreadErrorCode:I

    .line 189
    .end local v16           #ui:Lcom/futuredial/bluetooth/ExceptionForUI;
    :goto_0
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/SyncML11ReadThread;->Close(Ljava/lang/Boolean;)V

    .line 190
    return-void

    .line 38
    .restart local v9       #id:Ljava/util/UUID;
    .restart local v10       #pId:Ljava/util/UUID;
    .restart local v15       #state:Z
    :cond_0
    :try_start_1
    new-instance v3, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v3}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 41
    .local v3, baData:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/SyncML_NOK;->getConnectPCSuiteStream()[B

    move-result-object v11

    .line 42
    .local v11, pRes:[B
    if-eqz v11, :cond_1

    array-length v0, v11

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 44
    :cond_1
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_1
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .end local v3           #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v9           #id:Ljava/util/UUID;
    .end local v10           #pId:Ljava/util/UUID;
    .end local v11           #pRes:[B
    .end local v15           #state:Z
    :catch_1
    move-exception v7

    .line 182
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(I)V

    .line 185
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/SyncML11ReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 48
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #baData:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v9       #id:Ljava/util/UUID;
    .restart local v10       #pId:Ljava/util/UUID;
    .restart local v11       #pRes:[B
    .restart local v15       #state:Z
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    const/16 v18, 0x4e20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v14

    .line 49
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 50
    if-eqz v14, :cond_3

    .line 52
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :catch_2
    move-exception v7

    .line 63
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 54
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    const/16 v18, 0x4e20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v14

    .line 55
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 56
    if-eqz v14, :cond_4

    .line 58
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/SyncML_NOK;->setConnectResponseStream([B)Z

    move-result v12

    .line 67
    .local v12, pflag:Z
    if-nez v12, :cond_5

    .line 69
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17

    .line 71
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML11ReadThread;->getPCSuitObject()[B

    move-result-object v5

    .line 72
    .local v5, buf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/futuredial/syncml/SyncML_NOK;->setCapabilityObject([B)Z

    .line 74
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/SyncML11ReadThread;->Close(Ljava/lang/Boolean;)V

    .line 76
    sget v17, Lcom/futuredial/SyncML11ReadThread;->CancelFlag:I

    if-nez v17, :cond_6

    .line 78
    new-instance v17, Lcom/futuredial/CancelException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/CancelException;-><init>()V

    throw v17

    .line 82
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/futuredial/SyncML11ReadThread;->OpenPort(Ljava/util/UUID;)I

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x196

    const/16 v20, 0x10

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML11ReadThread;->SetIsCompleted()V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/SyncML_NOK;->getConnectStream()[B

    move-result-object v13

    .line 87
    .local v13, res:[B
    if-eqz v13, :cond_7

    array-length v0, v13

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 89
    :cond_7
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_5
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 93
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    const/16 v18, 0x4e20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v14

    .line 94
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 95
    if-eqz v14, :cond_9

    .line 97
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_6 .. :try_end_6} :catch_0

    .line 106
    :catch_3
    move-exception v7

    .line 108
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_7
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 99
    .end local v7           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    const/16 v18, 0x4e20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v14

    .line 100
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 101
    if-eqz v14, :cond_a

    .line 103
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_8 .. :try_end_8} :catch_0

    .line 112
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/SyncML_NOK;->setConnectResponseStream([B)Z

    move-result v8

    .line 113
    .local v8, flag:Z
    if-nez v8, :cond_b

    .line 115
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17

    .line 118
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x196

    const/16 v20, 0x14

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/SyncML_NOK;->getSelectServiceStream()[B

    move-result-object v2

    .line 120
    .local v2, b:[B
    if-eqz v2, :cond_c

    array-length v0, v2

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 122
    :cond_c
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_9
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 126
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    const/16 v18, 0x4e20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v14

    .line 127
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 128
    if-eqz v14, :cond_e

    .line 130
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_a .. :try_end_a} :catch_0

    .line 139
    :catch_4
    move-exception v7

    .line 141
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_b
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 132
    .end local v7           #e:Ljava/lang/Exception;
    :cond_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v17, v0

    const v18, 0x30d40

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v14

    .line 133
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 134
    if-eqz v14, :cond_f

    .line 136
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_c .. :try_end_c} :catch_0

    .line 146
    :cond_f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->uiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x196

    const/16 v20, 0x18

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/syncml/SyncML_NOK;->setSelectServiceResponseStream([B)Z

    move-result v4

    .line 148
    .local v4, bool:Z
    if-nez v4, :cond_10

    .line 150
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17

    .line 156
    :cond_10
    sget v17, Lcom/futuredial/SyncML11ReadThread;->CancelFlag:I

    if-nez v17, :cond_11

    .line 158
    new-instance v17, Lcom/futuredial/CancelException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/CancelException;-><init>()V

    throw v17

    .line 160
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/SyncML11ReadThread;->getObject()[B

    move-result-object v2

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/futuredial/syncml/SyncML_NOK;->ParseSyncML([B)[B

    move-result-object v6

    .line 162
    .local v6, buffer:[B
    if-nez v6, :cond_12

    .line 164
    new-instance v17, Lcom/futuredial/SyncMLException;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v17

    .line 166
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/futuredial/SyncML11ReadThread;->putObject([B)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/syncml/SyncML_NOK;->IsSyncMLFinished()Z
    :try_end_d
    .catch Lcom/futuredial/bluetooth/ExceptionForUI; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result v17

    if-eqz v17, :cond_10

    goto/16 :goto_0
.end method

.method getPCSuitObject()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v4, 0x0

    .line 195
    .local v4, resCode:I
    iget-object v5, p0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->initGetCapabilityObject()Z

    .line 196
    new-instance v0, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 200
    .local v0, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    :cond_0
    sget v5, Lcom/futuredial/SyncML11ReadThread;->CancelFlag:I

    if-nez v5, :cond_1

    .line 202
    new-instance v5, Lcom/futuredial/CancelException;

    invoke-direct {v5}, Lcom/futuredial/CancelException;-><init>()V

    throw v5

    .line 204
    :cond_1
    iget-object v5, p0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->getGetObjectStream()[B

    move-result-object v1

    .line 205
    .local v1, b:[B
    if-eqz v1, :cond_2

    array-length v5, v1

    if-nez v5, :cond_3

    .line 207
    :cond_2
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 211
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v6, 0x4e20

    invoke-virtual {v5, v1, v6}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v4

    .line 212
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 213
    if-eqz v4, :cond_4

    .line 215
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    move-exception v3

    .line 226
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 217
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/futuredial/SyncML11ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    const v6, 0x30d40

    invoke-virtual {v5, v0, v6}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v4

    .line 218
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/futuredial/SyncML11ReadThread;->ASSERT(II)V

    .line 219
    if-eqz v4, :cond_5

    .line 221
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :cond_5
    iget-object v5, p0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    iget-object v6, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-virtual {v5, v6}, Lcom/futuredial/syncml/SyncML_NOK;->setGetObjectResponseStream([B)Z

    move-result v2

    .line 230
    .local v2, bool:Z
    if-nez v2, :cond_6

    .line 232
    new-instance v5, Lcom/futuredial/SyncMLException;

    invoke-direct {v5}, Lcom/futuredial/SyncMLException;-><init>()V

    throw v5

    .line 234
    :cond_6
    iget-object v5, p0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->IsObexFinished()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    iget-object v5, p0, Lcom/futuredial/SyncML11ReadThread;->syncML:Lcom/futuredial/syncml/SyncML_NOK;

    invoke-virtual {v5}, Lcom/futuredial/syncml/SyncML_NOK;->getResult()[B

    move-result-object v5

    return-object v5
.end method
