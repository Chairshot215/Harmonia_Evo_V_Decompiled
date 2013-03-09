.class public Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;
.super Lcom/htc/android/epst/dmcmd/DmCmdBase;
.source "DM_CMD_CODE_FILESYS_IO.java"


# static fields
.field public static DEFAULT_PATH:Ljava/lang/String;

.field public static gbFixedERIPATH:Z


# instance fields
.field public CREATE_DIR_ALREADY_EXIST:I

.field public CREATE_DIR_FAIL:I

.field private CREATE_DIR_RESULT:I

.field public CREATE_DIR_SUCCESS:I

.field private final DATA_LENGTH:I

.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private final READ_TIMES:I

.field public WRITE_ERI_FILE:I

.field private WRITE_TYPE:I

.field public WRITE_UNDEFINED:I

.field private gBlockLeft:I

.field private gBlockSize:I

.field private gBlockUsed:I

.field private gCMDStatus:Ljava/lang/String;

.field private gCMDType:Ljava/lang/String;

.field private gERIVersion:Ljava/lang/String;

.field private gOption:I

.field private gSourceFile:Ljava/lang/String;

.field private gTargetFile:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "ERI/00004"

    sput-object v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DEFAULT_PATH:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gbFixedERIPATH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;-><init>()V

    .line 20
    const-string v0, "DM_CMD_CODE_FILESYS_IO"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    .line 25
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDType:Ljava/lang/String;

    .line 26
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDStatus:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gERIVersion:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gTargetFile:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gSourceFile:Ljava/lang/String;

    .line 33
    iput v2, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_FAIL:I

    .line 34
    iput v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_SUCCESS:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_ALREADY_EXIST:I

    .line 36
    iget v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_SUCCESS:I

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_RESULT:I

    .line 39
    iput v2, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_UNDEFINED:I

    .line 40
    iput v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_ERI_FILE:I

    .line 41
    iget v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_UNDEFINED:I

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_TYPE:I

    .line 43
    const/16 v0, 0x78

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DATA_LENGTH:I

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->READ_TIMES:I

    .line 46
    const/16 v0, 0x80

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockSize:I

    .line 47
    iput v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    iput v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdDataList:Ljava/util/ArrayList;

    return-void
.end method

.method private fileProcess()V
    .locals 26

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gSourceFile:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "no Source ERI file path"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 180
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gTargetFile:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "no Target ERI file path"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_1
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gSourceFile:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v18, nSourceERIFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Find ERI file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 193
    .local v5, input:Ljava/io/FileInputStream;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 194
    .local v10, nFileSizeNum:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "original file size : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    const-string v14, ""

    .local v14, nOption:Ljava/lang/String;
    const-string v16, ""

    .local v16, nSeq:Ljava/lang/String;
    const-string v12, ""

    .local v12, nMore:Ljava/lang/String;
    const-string v15, ""

    .local v15, nOverWrite:Ljava/lang/String;
    const-string v9, ""

    .local v9, nFileSize:Ljava/lang/String;
    const-string v6, ""

    .line 198
    .local v6, nAttribute:Ljava/lang/String;
    const-string v20, ""

    .local v20, nTFileLength:Ljava/lang/String;
    const-string v19, ""

    .line 199
    .local v19, nTFile:Ljava/lang/String;
    const-string v8, ""

    .local v8, nBlockFileSize:Ljava/lang/String;
    const-string v7, ""

    .line 200
    .local v7, nBlockData:Ljava/lang/String;
    const/4 v13, 0x0

    .line 201
    .local v13, nOffSet:I
    const/16 v21, 0x7800

    move/from16 v0, v21

    new-array v2, v0, [B

    .line 203
    .local v2, buffer:[B
    const/16 v17, 0x0

    .line 205
    .local v17, nSeqNum:I
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 207
    const-string v21, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 210
    const-string v21, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 213
    const-string v21, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 216
    const-string v21, "%08X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 217
    invoke-static {v9}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 219
    const-string v6, "FF000100"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 221
    const-string v21, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gTargetFile:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gTargetFile:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 225
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "00"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gTargetFile:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int/lit8 v21, v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    .line 230
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 231
    const/4 v13, 0x0

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v10, v21

    if-lez v21, :cond_7

    .line 234
    const-string v12, "01"

    .line 236
    const-string v21, "%04X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-static {v8}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 239
    move v4, v13

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, v21

    if-ge v4, v0, :cond_4

    .line 240
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%02X"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-byte v25, v2, v4

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    sub-long v10, v10, v21

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    add-int v13, v13, v21

    .line 258
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "more:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "nBlockData:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " nBlockFileSize:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCurrentCmdData:Ljava/lang/String;

    .line 262
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[index:0]mCurrentCmdData:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCurrentCmdData:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdDataList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCurrentCmdData:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :goto_3
    const-wide/16 v21, 0x0

    cmp-long v21, v10, v21

    if-eqz v21, :cond_d

    .line 268
    add-int/lit8 v17, v17, 0x1

    .line 269
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCurrentCmdData:Ljava/lang/String;

    .line 271
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 273
    const-string v21, "%02X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockUsed:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int/lit8 v21, v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    .line 279
    const-string v8, ""

    .line 280
    const-string v7, ""

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v10, v21

    if-lez v21, :cond_b

    .line 284
    const-string v12, "01"

    .line 286
    const-string v21, "%04X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 287
    invoke-static {v8}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 289
    move v4, v13

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, v21

    if-ge v4, v0, :cond_9

    .line 290
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%02X"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-byte v25, v2, v4

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 247
    .end local v4           #i:I
    :cond_7
    const-string v12, "00"

    .line 249
    const-string v21, "%04X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-static {v8}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    move v4, v13

    .restart local v4       #i:I
    :goto_5
    int-to-long v0, v4

    move-wide/from16 v21, v0

    int-to-long v0, v13

    move-wide/from16 v23, v0

    add-long v23, v23, v10

    cmp-long v21, v21, v23

    if-gez v21, :cond_8

    .line 253
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%02X"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-byte v25, v2, v4

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 255
    :cond_8
    const-wide/16 v10, 0x0

    .line 256
    int-to-long v0, v13

    move-wide/from16 v21, v0

    add-long v21, v21, v10

    move-wide/from16 v0, v21

    long-to-int v13, v0

    goto/16 :goto_2

    .line 292
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    sub-long v10, v10, v21

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gBlockLeft:I

    move/from16 v21, v0

    add-int v13, v13, v21

    .line 309
    :goto_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCurrentCmdData:Ljava/lang/String;

    .line 310
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[index:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]mCurrentCmdData:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCurrentCmdData:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdDataList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCurrentCmdData:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 322
    .end local v2           #buffer:[B
    .end local v4           #i:I
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #nAttribute:Ljava/lang/String;
    .end local v7           #nBlockData:Ljava/lang/String;
    .end local v8           #nBlockFileSize:Ljava/lang/String;
    .end local v9           #nFileSize:Ljava/lang/String;
    .end local v10           #nFileSizeNum:J
    .end local v12           #nMore:Ljava/lang/String;
    .end local v13           #nOffSet:I
    .end local v14           #nOption:Ljava/lang/String;
    .end local v15           #nOverWrite:Ljava/lang/String;
    .end local v16           #nSeq:Ljava/lang/String;
    .end local v17           #nSeqNum:I
    .end local v18           #nSourceERIFile:Ljava/io/File;
    .end local v19           #nTFile:Ljava/lang/String;
    .end local v20           #nTFileLength:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 323
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Parse ERI file fail !!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 297
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #buffer:[B
    .restart local v4       #i:I
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v6       #nAttribute:Ljava/lang/String;
    .restart local v7       #nBlockData:Ljava/lang/String;
    .restart local v8       #nBlockFileSize:Ljava/lang/String;
    .restart local v9       #nFileSize:Ljava/lang/String;
    .restart local v10       #nFileSizeNum:J
    .restart local v12       #nMore:Ljava/lang/String;
    .restart local v13       #nOffSet:I
    .restart local v14       #nOption:Ljava/lang/String;
    .restart local v15       #nOverWrite:Ljava/lang/String;
    .restart local v16       #nSeq:Ljava/lang/String;
    .restart local v17       #nSeqNum:I
    .restart local v18       #nSourceERIFile:Ljava/io/File;
    .restart local v19       #nTFile:Ljava/lang/String;
    .restart local v20       #nTFileLength:Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string v12, "00"

    .line 299
    const-string v21, "%04X"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 300
    invoke-static {v8}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 302
    move v4, v13

    :goto_7
    int-to-long v0, v4

    move-wide/from16 v21, v0

    int-to-long v0, v13

    move-wide/from16 v23, v0

    add-long v23, v23, v10

    cmp-long v21, v21, v23

    if-gez v21, :cond_c

    .line 303
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%02X"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-byte v25, v2, v4

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 302
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 305
    :cond_c
    const-wide/16 v10, 0x0

    .line 306
    int-to-long v0, v13

    move-wide/from16 v21, v0

    add-long v21, v21, v10

    move-wide/from16 v0, v21

    long-to-int v13, v0

    goto/16 :goto_6

    .line 316
    :cond_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 319
    .end local v2           #buffer:[B
    .end local v4           #i:I
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #nAttribute:Ljava/lang/String;
    .end local v7           #nBlockData:Ljava/lang/String;
    .end local v8           #nBlockFileSize:Ljava/lang/String;
    .end local v9           #nFileSize:Ljava/lang/String;
    .end local v10           #nFileSizeNum:J
    .end local v12           #nMore:Ljava/lang/String;
    .end local v13           #nOffSet:I
    .end local v14           #nOption:Ljava/lang/String;
    .end local v15           #nOverWrite:Ljava/lang/String;
    .end local v16           #nSeq:Ljava/lang/String;
    .end local v17           #nSeqNum:I
    .end local v19           #nTFile:Ljava/lang/String;
    .end local v20           #nTFileLength:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No source file:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public bAssignParameter(ILjava/lang/String;)Z
    .locals 9
    .parameter "iParameter"
    .parameter "iERIParameter"

    .prologue
    const/4 v8, 0x0

    .line 53
    const/4 v0, 0x1

    .line 55
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v3

    .line 56
    .local v3, nRecordList:Lcom/htc/android/epst/internal/RecordList;
    const/16 v5, 0x59

    invoke-virtual {v3, v5, v8, v8}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v4

    .line 57
    .local v4, record:Lcom/htc/android/epst/internal/Record;
    const-string v5, "%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, nParameter:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_0

    .line 61
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bAssignParameter.iParameter:(int)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (hex):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 82
    :pswitch_0
    const/4 v0, 0x0

    .line 83
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No support this type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    :pswitch_1
    if-eqz v0, :cond_1

    iput p1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    .line 87
    :cond_1
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_2

    .line 88
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "record.customAttr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    return v0

    .line 66
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_4
    const-string v5, ""

    iput-object v5, v4, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    .line 76
    const/16 v5, 0xa

    :try_start_0
    invoke-static {p2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_TYPE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Integer.parseInt(iERIParameter, 10).ERROR!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public generateCmdDataList()Ljava/util/ArrayList;
    .locals 3
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
    .line 330
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_TYPE:I

    iget v1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_ERI_FILE:I

    if-ne v0, v1, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->fileProcess()V

    .line 336
    :goto_0
    iget v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_UNDEFINED:I

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_TYPE:I

    .line 337
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdDataList:Ljava/util/ArrayList;

    return-object v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support this type at generateCmdDataList.Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCreateDIRResult()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_RESULT:I

    return v0
.end method

.method public getERIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gERIVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gSourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 105
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read:IN.mCmdToBeParsed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v4

    .line 110
    .local v4, parser:Lcom/htc/android/epst/internal/CmdParser;
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v9}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDType:Ljava/lang/String;

    .line 111
    const/4 v3, 0x0

    .line 114
    .local v3, nOption:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDType:Ljava/lang/String;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 119
    :goto_0
    iget v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    if-eq v3, v5, :cond_2

    .line 120
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nOption != gOption.ERROR!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Integer.parseInt(gCMDType, 16)ERROR!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v4, v5, v9, v10}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDStatus:Ljava/lang/String;

    .line 126
    iget v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    if-ne v5, v10, :cond_6

    .line 128
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v5

    const v6, 0x7f040055

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gERIVersion:Ljava/lang/String;

    .line 129
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_3

    .line 130
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "read:IN.DM_CMD_OPT_FILE_READ"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDStatus:Ljava/lang/String;

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_5

    .line 134
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v6, 0x14

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, nERIVersion:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nERIVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_4
    const/4 v1, 0x0

    .line 140
    .local v1, nERINumber:I
    const/16 v5, 0x10

    :try_start_1
    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 144
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gERIVersion:Ljava/lang/String;

    .line 168
    .end local v1           #nERINumber:I
    .end local v2           #nERIVersion:Ljava/lang/String;
    :cond_5
    :goto_3
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_1

    .line 169
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read:OUT-mCmdToBeParsed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 141
    .restart local v1       #nERINumber:I
    .restart local v2       #nERIVersion:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 142
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Integer.parseInt(nERIVersion, 16)ERROR"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 147
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #nERINumber:I
    .end local v2           #nERIVersion:Ljava/lang/String;
    :cond_6
    iget v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gOption:I

    if-nez v5, :cond_a

    .line 149
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_7

    .line 150
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "read:IN.DM_CMD_OPT_DIRECTORY_CREATE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_7
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDStatus:Ljava/lang/String;

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_8

    .line 153
    iget v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_SUCCESS:I

    iput v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_RESULT:I

    .line 159
    :goto_4
    iget-boolean v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DBG:Z

    if-eqz v5, :cond_5

    .line 160
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read.CREATE_DIR_RESULT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_RESULT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 154
    :cond_8
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gCMDStatus:Ljava/lang/String;

    const-string v6, "07"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_9

    .line 155
    iget v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_ALREADY_EXIST:I

    iput v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_RESULT:I

    goto :goto_4

    .line 157
    :cond_9
    iget v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_FAIL:I

    iput v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_RESULT:I

    goto :goto_4

    .line 165
    :cond_a
    iget-object v5, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Not support other parameter!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAccessedFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "iSFile"
    .parameter "iTFile"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gSourceFile:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gTargetFile:Ljava/lang/String;

    .line 96
    return-void
.end method
