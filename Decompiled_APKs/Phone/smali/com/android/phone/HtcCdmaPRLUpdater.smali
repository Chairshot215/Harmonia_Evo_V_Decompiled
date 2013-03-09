.class public final Lcom/android/phone/HtcCdmaPRLUpdater;
.super Ljava/lang/Object;
.source "HtcCdmaPRLUpdater.java"


# static fields
.field public static final CMD_MODE_DMAGENT:I = 0x1

.field public static final CMD_MODE_RIL:I = 0x2

.field private static final DATA_LENGTH:I = 0x78

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaPRLUpdater"

.field private static final READ_TIMES:I = 0x100

.field private static final START_POS_DATA:I = 0xe

.field private static final START_POS_NUM_BITS:I = 0xa

.field public static final WRITE_HEADER:Ljava/lang/String; = "C848"


# instance fields
.field private DATA:Ljava/lang/String;

.field private MORE:Ljava/lang/String;

.field private NAM:Ljava/lang/String;

.field private NUM_BITS:Ljava/lang/String;

.field private SEQ_NUM:Ljava/lang/String;

.field mDMcmder:Lcom/android/phone/HtcCdmaDMCommander;

.field public pureDATAList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pureNUM_BITSList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "00"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->SEQ_NUM:Ljava/lang/String;

    .line 27
    const-string v0, "00"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->MORE:Ljava/lang/String;

    .line 28
    const-string v0, "00"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->NAM:Ljava/lang/String;

    .line 29
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->NUM_BITS:Ljava/lang/String;

    .line 30
    const-string v0, "00"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->DATA:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPRLUpdater;->Init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    new-instance v0, Lcom/android/phone/HtcCdmaDMCommander;

    invoke-direct {v0, p1}, Lcom/android/phone/HtcCdmaDMCommander;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->mDMcmder:Lcom/android/phone/HtcCdmaDMCommander;

    .line 45
    return-void
.end method

.method private genWriteCmd()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureDATAList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 139
    .local v6, sbuf:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureDATAList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 140
    const/4 v2, 0x1

    .line 141
    .local v2, more:I
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureDATAList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 142
    const/4 v2, 0x0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureNUM_BITSList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureDATAList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/HtcCdmaPRLUpdater;->genWriteCmdData(IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v2           #more:I
    :cond_1
    return-object v6
.end method

.method private genWriteCmdData(IIJLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "SEQ_NUM"
    .parameter "MORE"
    .parameter "NUM_BITS"
    .parameter "DATA"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C848"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02X"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02X"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%04X"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/HtcCdmaUtility;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, command:Ljava/lang/String;
    return-object v0
.end method

.method private initDataList([B)V
    .locals 19
    .parameter "data"

    .prologue
    .line 83
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureDATAList:Ljava/util/ArrayList;

    .line 84
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureNUM_BITSList:Ljava/util/ArrayList;

    .line 87
    if-eqz p1, :cond_5

    .line 88
    const-wide/16 v2, 0x0

    .line 89
    .local v2, cmdSize:J
    const/16 v14, 0x7800

    :try_start_0
    new-array v1, v14, [B

    .line 90
    .local v1, buffer:[B
    const/4 v11, 0x0

    .line 91
    .local v11, readLength:I
    move-object/from16 v0, p1

    array-length v11, v0

    .line 92
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v1, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    div-int/lit8 v5, v11, 0x78

    .line 95
    .local v5, exeTimes:I
    rem-int/lit8 v14, v11, 0x78

    if-eqz v14, :cond_0

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 98
    :cond_0
    const/4 v10, 0x0

    .line 99
    .local v10, offset:I
    const/4 v13, 0x0

    .line 100
    .local v13, subByte:I
    const/4 v12, 0x0

    .local v12, sequence:I
    move v6, v5

    .line 101
    .end local v5           #exeTimes:I
    .local v6, exeTimes:I
    :goto_0
    add-int/lit8 v5, v6, -0x1

    .end local v6           #exeTimes:I
    .restart local v5       #exeTimes:I
    if-lez v6, :cond_6

    .line 102
    const-string v7, ""

    .line 103
    .local v7, fileData:Ljava/lang/String;
    const/16 v14, 0x78

    if-le v11, v14, :cond_2

    .line 104
    const/16 v13, 0x78

    .line 105
    add-int/lit8 v11, v11, -0x78

    .line 109
    :cond_1
    :goto_1
    add-int/2addr v13, v10

    .line 110
    move v8, v10

    .local v8, j:I
    :goto_2
    if-ge v8, v13, :cond_3

    .line 111
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%02X"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-byte v18, v1, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 106
    .end local v8           #j:I
    :cond_2
    const/16 v14, 0x78

    if-gt v11, v14, :cond_1

    .line 107
    move v13, v11

    goto :goto_1

    .line 115
    .restart local v8       #j:I
    :cond_3
    sub-int v14, v13, v10

    mul-int/lit8 v14, v14, 0x8

    int-to-long v2, v14

    .line 116
    const/4 v9, 0x1

    .line 117
    .local v9, more:I
    if-nez v5, :cond_4

    .line 118
    const/4 v9, 0x0

    .line 121
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureDATAList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcCdmaPRLUpdater;->pureNUM_BITSList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    move v10, v13

    move v6, v5

    .line 125
    .end local v5           #exeTimes:I
    .restart local v6       #exeTimes:I
    goto :goto_0

    .line 128
    .end local v1           #buffer:[B
    .end local v2           #cmdSize:J
    .end local v6           #exeTimes:I
    .end local v7           #fileData:Ljava/lang/String;
    .end local v8           #j:I
    .end local v9           #more:I
    .end local v10           #offset:I
    .end local v11           #readLength:I
    .end local v12           #sequence:I
    .end local v13           #subByte:I
    :cond_5
    const-string v14, "HtcCdmaPRLUpdater"

    const-string v15, "PRL data is not found !"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_6
    :goto_3
    return-void

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const-string v14, "HtcCdmaPRLUpdater"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initDataList ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public GetPRLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, prlVersion:Ljava/lang/String;
    return-object v0
.end method

.method public WritePRLByFile(Ljava/lang/String;)Z
    .locals 8
    .parameter "filePath"

    .prologue
    .line 55
    const/4 v4, 0x0

    .line 57
    .local v4, result:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    .local v3, fin:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v2, v6, [B

    .line 61
    .local v2, fileContent:[B
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaPRLUpdater;->WritePRLData([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v5, v4

    .line 67
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileContent:[B
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v4           #result:Z
    .local v5, result:I
    :goto_0
    return v5

    .line 64
    .end local v5           #result:I
    .restart local v4       #result:Z
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v4

    .line 67
    .restart local v5       #result:I
    goto :goto_0
.end method

.method public WritePRLData([B)Z
    .locals 4
    .parameter "data"

    .prologue
    .line 72
    const-string v1, "HtcCdmaPRLUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Buffer Length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPRLUpdater;->initDataList([B)V

    .line 77
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaPRLUpdater;->genWriteCmd()[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, cmdBuf:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPRLUpdater;->mDMcmder:Lcom/android/phone/HtcCdmaDMCommander;

    invoke-virtual {v1, v0}, Lcom/android/phone/HtcCdmaDMCommander;->ExecutePRLW([Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x1

    return v1
.end method
