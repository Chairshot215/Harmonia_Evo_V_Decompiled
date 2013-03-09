.class public Lcom/htc/android/epst/internal/DmCmdRule;
.super Ljava/lang/Object;
.source "DmCmdRule.java"

# interfaces
.implements Lcom/htc/android/epst/internal/IRule;


# static fields
.field private static final ID_CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final NAM_SETTING_BYTE:Ljava/lang/String; = "00"


# instance fields
.field private DBG:Z

.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "DmCmdRule"

    iput-object v0, p0, Lcom/htc/android/epst/internal/DmCmdRule;->LOG_TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/internal/DmCmdRule;->DBG:Z

    return-void
.end method


# virtual methods
.method public onCheckItemState(ILcom/htc/android/epst/internal/StructBase;)I
    .locals 0
    .parameter "status"
    .parameter "structure"

    .prologue
    .line 15
    return p1
.end method

.method public onPreSendAction(Ljava/lang/String;)I
    .locals 1
    .parameter "args"

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedReadMessage(ILjava/lang/String;ILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)I
    .locals 6
    .parameter "type"
    .parameter "response"
    .parameter "appendInfo"
    .parameter "structure"
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 24
    const/4 v3, 0x0

    .line 26
    .local v3, result:Z
    :try_start_0
    move-object v0, p4

    check-cast v0, Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->onCheckCmdState()Z

    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/android/epst/internal/CmdParser;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, purecmd:Ljava/lang/String;
    invoke-virtual {p4, v2}, Lcom/htc/android/epst/internal/StructBase;->setCmd(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p4}, Lcom/htc/android/epst/internal/StructBase;->read()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v2           #purecmd:Ljava/lang/String;
    :cond_0
    :goto_0
    if-ne v3, v5, :cond_1

    .line 36
    const/4 v4, 0x0

    .line 38
    :goto_1
    return v4

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v4, v5

    .line 38
    goto :goto_1
.end method

.method public onReceivedWriteMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "response"
    .parameter "args"

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onSendEditAction(IIILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "structure"
    .parameter "args"

    .prologue
    .line 58
    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, hexid:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, autoGenerateCmdData:Ljava/lang/String;
    move-object/from16 v9, p4

    .line 60
    check-cast v9, Lcom/htc/android/epst/dmcmd/DmCmdBase;

    invoke-virtual {v9}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->generateCmdDataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, cmdDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 62
    .local v6, retCommand:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, cmdList:[Ljava/lang/Object;
    array-length v2, v3

    .line 65
    .local v2, cmdDataListLen:I
    new-array v8, v2, [Ljava/lang/String;

    .line 66
    .local v8, tmp:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 67
    aget-object v0, v3, v5

    .end local v0           #autoGenerateCmdData:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 68
    .restart local v0       #autoGenerateCmdData:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C8"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, send:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    aput-object v7, v8, v5

    .line 71
    const-string v0, ""

    .line 66
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    .end local v7           #send:Ljava/lang/String;
    :cond_0
    move-object v6, v8

    .line 84
    .end local v2           #cmdDataListLen:I
    .end local v3           #cmdList:[Ljava/lang/Object;
    .end local v5           #i:I
    .end local v8           #tmp:[Ljava/lang/String;
    :goto_1
    return-object v6

    .line 75
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/epst/internal/StructBase;->generateCmdData()Ljava/lang/String;

    move-result-object v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "must implement one of generateCmdData() or generateCmdDataList() in struct"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 80
    :cond_2
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    .line 81
    .local v7, send:[Ljava/lang/String;
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "C8"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 82
    move-object v6, v7

    goto :goto_1
.end method

.method public onSendViewAction(IIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    const-string v3, "%02X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, hexId:Ljava/lang/String;
    const-string v1, "C8"

    .line 45
    .local v1, send:Ljava/lang/String;
    const-string v3, "%02X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, strIndex:Ljava/lang/String;
    if-nez p4, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    :goto_0
    iget-boolean v3, p0, Lcom/htc/android/epst/internal/DmCmdRule;->DBG:Z

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "DmCmdRule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendViewAction.send command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-object v1

    .line 49
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
