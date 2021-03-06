.class public Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_CMD_CODE_PRL_READ.java"


# static fields
.field public static final MINIMUM_PRL_SIZE:I = 0xd


# instance fields
.field public DATA:Ljava/lang/String;

.field private MORE:Ljava/lang/String;

.field private NUM_BITS:Ljava/lang/String;

.field private NV_STATUS:Ljava/lang/String;

.field private PR_LIST_STATUS:Ljava/lang/String;

.field private SEQ_NUM:Ljava/lang/String;

.field private prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

.field private prlId:Ljava/lang/String;

.field private prlPreferOnly:Ljava/lang/String;

.field private prlRoamingIndicator:Ljava/lang/String;

.field private prlType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 14
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->PR_LIST_STATUS:Ljava/lang/String;

    .line 20
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->NV_STATUS:Ljava/lang/String;

    .line 33
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->SEQ_NUM:Ljava/lang/String;

    .line 35
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->MORE:Ljava/lang/String;

    .line 37
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->NUM_BITS:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 266
    new-instance v1, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;

    invoke-direct {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;-><init>()V

    .line 268
    .local v1, prl:Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;
    const-string v2, "1390ECC503500A00012B80060D49F43528FD38945190CE5A947E0607223F4E26A4FA00060F50320C812C640AF1F476D9CB526D6006136819190578BBAD5064191771DB15E3E8FA1450060B39C247EA29131773E8578006082AA34B08FCED9F400201F0060720FA0642BD4500060722262EE6A53880060720"

    iput-object v2, v1, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    .line 269
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlHeader()V

    .line 270
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->print()V

    .line 279
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlId()V

    .line 280
    invoke-direct {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlValidatePart()Z

    move-result v0

    .line 281
    .local v0, isValid:Z
    invoke-virtual {v1, v0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlType(Z)V

    .line 282
    invoke-virtual {v1, v0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlPreferOnly(Z)V

    .line 283
    invoke-virtual {v1, v0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlRoamingIndicator(Z)V

    .line 286
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRL ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRL Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRL Prefer Only: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlPreferOnly()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRL Prefer Only: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlRoamingIndicator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private prlValidatePart()Z
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x1

    .line 201
    .local v0, validateResult:Z
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getPrListSize()I

    move-result v1

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getSspr_p_rev()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getNumAcqRecs()I

    move-result v1

    if-nez v1, :cond_2

    .line 208
    const/4 v0, 0x0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getNumSysRecs()I

    move-result v1

    if-nez v1, :cond_3

    .line 212
    const/4 v0, 0x0

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getAcqTableBitOffset()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-lez v1, :cond_4

    .line 216
    const/4 v0, 0x0

    .line 219
    :cond_4
    return v0
.end method


# virtual methods
.method public getPrlId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlPreferOnly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlPreferOnly:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlRoamingIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlRoamingIndicator:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlType:Ljava/lang/String;

    return-object v0
.end method

.method public parsePrlHeader()V
    .locals 18

    .prologue
    .line 107
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, hex1Str:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x2

    const/16 v17, 0x4

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, hex2Str:Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    .local v1, hex1:I
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 111
    .local v3, hex2:I
    shl-int/lit8 v14, v1, 0x8

    add-int v11, v14, v3

    .line 112
    .local v11, prListSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v14, v11}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setPrListSize(I)V

    .line 114
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x4

    const/16 v17, 0x6

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x6

    const/16 v17, 0x8

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 116
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 117
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    shl-int/lit8 v14, v1, 0x8

    add-int v10, v14, v3

    .line 119
    .local v10, prListId:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v14, v10}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setPrListId(I)V

    .line 121
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x8

    const/16 v17, 0xa

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 122
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v14, v1}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setSspr_p_rev(I)V

    .line 125
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0xa

    const/16 v17, 0xc

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 126
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 127
    and-int/lit16 v14, v1, 0x80

    shr-int/lit8 v12, v14, 0x7

    .line 128
    .local v12, prefOnly:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    const/4 v14, 0x1

    if-ne v12, v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v15, v14}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setPref_only(Z)V

    .line 130
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0xc

    const/16 v17, 0xe

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 131
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 132
    and-int/lit8 v14, v1, 0x7f

    shl-int/lit8 v14, v14, 0x1

    and-int/lit16 v15, v3, 0x80

    shr-int/lit8 v15, v15, 0x7

    add-int v13, v14, v15

    .line 133
    .local v13, roamingIndicator:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v14, v13}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setDefaultRoamingIndicator(I)V

    .line 135
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0xc

    const/16 v17, 0xe

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0xe

    const/16 v17, 0x10

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 137
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 138
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 139
    and-int/lit8 v14, v1, 0x7f

    shl-int/lit8 v14, v14, 0x2

    and-int/lit16 v15, v3, 0xc0

    shr-int/lit8 v15, v15, 0x6

    add-int v7, v14, v15

    .line 140
    .local v7, numAcqRecs:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v14, v7}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setNumAcqRecs(I)V

    .line 142
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0xe

    const/16 v17, 0x10

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x10

    const/16 v17, 0x12

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 144
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 145
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 146
    and-int/lit8 v14, v1, 0x3f

    shl-int/lit8 v14, v14, 0x3

    and-int/lit16 v15, v3, 0xe0

    shr-int/lit8 v15, v15, 0x5

    add-int v8, v14, v15

    .line 147
    .local v8, numSubnet:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v14, v8}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setNumSubnetRecs(I)V

    .line 149
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x10

    const/16 v17, 0x12

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x12

    const/16 v17, 0x14

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v16, 0x14

    const/16 v17, 0x16

    invoke-virtual/range {v14 .. v17}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, hex3Str:Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 153
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 154
    const/16 v14, 0x10

    invoke-static {v6, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 155
    .local v5, hex3:I
    and-int/lit8 v14, v1, 0x1f

    shl-int/lit8 v14, v14, 0x9

    and-int/lit16 v15, v3, 0xff

    shl-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    and-int/lit16 v15, v5, 0x80

    shr-int/lit8 v15, v15, 0x7

    add-int v9, v14, v15

    .line 156
    .local v9, numSysRecs:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v14, v9}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->setNumSysRecs(I)V

    .line 166
    return-void

    .line 128
    .end local v5           #hex3:I
    .end local v6           #hex3Str:Ljava/lang/String;
    .end local v7           #numAcqRecs:I
    .end local v8           #numSubnet:I
    .end local v9           #numSysRecs:I
    .end local v13           #roamingIndicator:I
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public parsePrlId()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x6

    .line 95
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, prlIdHex1Str:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v8, v7}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, prlIdHex2Str:Ljava/lang/String;
    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, prlIdHex1:I
    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 101
    .local v2, prlIdHex2:I
    shl-int/lit8 v5, v0, 0x8

    add-int v4, v5, v2

    .line 102
    .local v4, prlIdInt:I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public parsePrlPreferOnly(Z)V
    .locals 8
    .parameter "isValid"

    .prologue
    .line 232
    const/4 v2, 0x4

    .line 233
    .local v2, index:I
    if-eqz p1, :cond_0

    .line 234
    const/4 v2, 0x5

    .line 237
    :cond_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    mul-int/lit8 v6, v2, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, hexStr:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, hex:I
    and-int/lit16 v4, v0, 0x80

    shr-int/lit8 v3, v4, 0x7

    .line 242
    .local v3, value:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 243
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v4

    const v5, 0x7f05003d

    invoke-virtual {v4, v5}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlPreferOnly:Ljava/lang/String;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v4

    const v5, 0x7f05003e

    invoke-virtual {v4, v5}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlPreferOnly:Ljava/lang/String;

    goto :goto_0
.end method

.method public parsePrlRoamingIndicator(Z)V
    .locals 11
    .parameter "isValid"

    .prologue
    const/16 v10, 0x10

    .line 251
    const/4 v4, 0x4

    .line 252
    .local v4, index:I
    if-eqz p1, :cond_0

    .line 253
    const/4 v4, 0x5

    .line 255
    :cond_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    mul-int/lit8 v8, v4, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, hex1Str:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, hex2Str:Ljava/lang/String;
    invoke-static {v1, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    and-int/lit8 v0, v6, 0x7f

    .line 259
    .local v0, hex1:I
    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    and-int/lit16 v2, v6, 0x80

    .line 261
    .local v2, hex2:I
    shr-int/lit8 v6, v2, 0x7

    shl-int/lit8 v7, v0, 0x1

    or-int v5, v6, v7

    .line 262
    .local v5, value:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlRoamingIndicator:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public parsePrlType(Z)V
    .locals 2
    .parameter "isValid"

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v0

    const v1, 0x7f05003f

    invoke-virtual {v0, v1}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlType:Ljava/lang/String;

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v0

    const v1, 0x7f050040

    invoke-virtual {v0, v1}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlType:Ljava/lang/String;

    goto :goto_0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prListSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getPrListSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prListId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getPrListId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sspr_p_rev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getSspr_p_rev()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref only: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getPref_only()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roaming indr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getDefaultRoamingIndicator()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num acq recs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getNumAcqRecs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num subnet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getNumSubnetRecs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num sys recs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlHeader:Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->getNumSysRecs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public read()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 78
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->PR_LIST_STATUS:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->NV_STATUS:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->SEQ_NUM:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->MORE:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v2, v7, v8}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->NUM_BITS:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->mCmdToBeParsed:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->DATA:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlId()V

    .line 86
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlHeader()V

    .line 88
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->prlValidatePart()Z

    move-result v0

    .line 89
    .local v0, validateResult:Z
    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlType(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlPreferOnly(Z)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->parsePrlRoamingIndicator(Z)V

    .line 92
    return-void
.end method
