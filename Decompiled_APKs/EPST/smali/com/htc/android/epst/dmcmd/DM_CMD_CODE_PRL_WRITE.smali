.class public Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;
.super Lcom/htc/android/epst/dmcmd/DmCmdBase;
.source "DM_CMD_CODE_PRL_WRITE.java"


# static fields
.field private static mPath:Ljava/lang/String;


# instance fields
.field private DATA:Ljava/lang/String;

.field private final DATA_LENGTH:I

.field private MORE:Ljava/lang/String;

.field private NAM:Ljava/lang/String;

.field private NUM_BITS:Ljava/lang/String;

.field private final READ_TIMES:I

.field private SEQ_NUM:Ljava/lang/String;

.field private mCmdDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;-><init>()V

    .line 11
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->SEQ_NUM:Ljava/lang/String;

    .line 12
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->MORE:Ljava/lang/String;

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->NAM:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->NUM_BITS:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->DATA:Ljava/lang/String;

    .line 17
    const/16 v0, 0x78

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->DATA_LENGTH:I

    .line 18
    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->READ_TIMES:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mCmdDataList:Ljava/util/ArrayList;

    return-void
.end method

.method private fileProcess()V
    .locals 24

    .prologue
    .line 35
    sget-object v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mPath:Ljava/lang/String;

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "EPST"

    const-string v20, "no PRL file path"

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    :try_start_0
    new-instance v16, Ljava/io/File;

    sget-object v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v16, prlFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    const-string v1, "EPST"

    const-string v20, "find PRL file"

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .local v4, cmdSize:J
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v13, input:Ljava/io/FileInputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 47
    .local v11, fileSize:J
    const-string v1, "PRL File"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "original file size : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/16 v1, 0x7800

    new-array v7, v1, [B

    .line 50
    .local v7, buffer:[B
    const/16 v17, 0x0

    .line 51
    .local v17, readLength:I
    invoke-virtual {v13, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .line 52
    div-int/lit8 v9, v17, 0x78

    .line 53
    .local v9, exeTimes:I
    rem-int/lit8 v1, v17, 0x78

    if-eqz v1, :cond_1

    .line 54
    add-int/lit8 v9, v9, 0x1

    .line 57
    :cond_1
    const/4 v15, 0x0

    .line 58
    .local v15, offset:I
    const/16 v19, 0x0

    .line 59
    .local v19, subByte:I
    const/4 v2, 0x0

    .local v2, sequence:I
    move v10, v9

    .line 60
    .end local v9           #exeTimes:I
    .local v10, exeTimes:I
    :goto_0
    add-int/lit8 v9, v10, -0x1

    .end local v10           #exeTimes:I
    .restart local v9       #exeTimes:I
    if-lez v10, :cond_6

    .line 61
    const-string v6, ""

    .line 62
    .local v6, fileData:Ljava/lang/String;
    const/16 v1, 0x78

    move/from16 v0, v17

    if-le v0, v1, :cond_3

    .line 63
    const/16 v19, 0x78

    .line 64
    add-int/lit8 v17, v17, -0x78

    .line 70
    :cond_2
    :goto_1
    add-int v19, v19, v15

    .line 71
    move v14, v15

    .local v14, j:I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v20, "%02X"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-byte v23, v7, v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 74
    const-string v1, "PRL File"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fileData = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 65
    .end local v14           #j:I
    :cond_3
    const/16 v1, 0x78

    move/from16 v0, v17

    if-gt v0, v1, :cond_2

    .line 66
    move/from16 v19, v17

    goto :goto_1

    .line 76
    .restart local v14       #j:I
    :cond_4
    sub-int v1, v19, v15

    mul-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    .line 77
    const/4 v3, 0x1

    .line 78
    .local v3, more:I
    if-nez v9, :cond_5

    .line 79
    const/4 v3, 0x0

    .line 81
    :cond_5
    add-int/lit8 v18, v2, 0x1

    .end local v2           #sequence:I
    .local v18, sequence:I
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->storeCmdData(IIJLjava/lang/String;)V

    .line 82
    move/from16 v15, v19

    move/from16 v2, v18

    .end local v18           #sequence:I
    .restart local v2       #sequence:I
    move v10, v9

    .line 83
    .end local v9           #exeTimes:I
    .restart local v10       #exeTimes:I
    goto :goto_0

    .line 84
    .end local v3           #more:I
    .end local v6           #fileData:Ljava/lang/String;
    .end local v10           #exeTimes:I
    .end local v14           #j:I
    .restart local v9       #exeTimes:I
    :cond_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 93
    .end local v2           #sequence:I
    .end local v4           #cmdSize:J
    .end local v7           #buffer:[B
    .end local v9           #exeTimes:I
    .end local v11           #fileSize:J
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #offset:I
    .end local v16           #prlFile:Ljava/io/File;
    .end local v17           #readLength:I
    .end local v19           #subByte:I
    :goto_3
    return-void

    .line 87
    .restart local v16       #prlFile:Ljava/io/File;
    :cond_7
    const-string v1, "EPST"

    const-string v20, "can\'t find PRL file"

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 89
    .end local v16           #prlFile:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 90
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "EPST"

    const-string v20, "some probleme with PRL file"

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private storeCmdData(IIJLjava/lang/String;)V
    .locals 5
    .parameter "sequence"
    .parameter "more"
    .parameter "bits"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const-string v0, "%02X"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->SEQ_NUM:Ljava/lang/String;

    .line 97
    const-string v0, "%02X"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->MORE:Ljava/lang/String;

    .line 98
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->NAM:Ljava/lang/String;

    .line 99
    const-string v0, "%04X"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->NUM_BITS:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->DATA:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->SEQ_NUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->MORE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->NAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->NUM_BITS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mCurrentCmdData:Ljava/lang/String;

    .line 102
    const-string v0, "EPST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createcmd from file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mCmdDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public generateCmdDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mCmdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    invoke-direct {p0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->fileProcess()V

    .line 110
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mCmdDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 22
    sput-object p1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->mPath:Ljava/lang/String;

    .line 23
    return-void
.end method
