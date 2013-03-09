.class public Lcom/htc/android/epst/translator/UpdateERITranslator;
.super Ljava/lang/Object;
.source "UpdateERITranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = "/data/data/com.android.phone/files/"

.field private static final FILETYPE:Ljava/lang/String; = ".bin"

.field private static gRecordList:Lcom/htc/android/epst/internal/RecordList;


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mBrowseFile:Lcom/htc/android/epst/BrowseFile;

.field private mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

.field private mFileNameList:[Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->gRecordList:Lcom/htc/android/epst/internal/RecordList;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v4, "UpdateERITranslator"

    iput-object v4, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->LOG_TAG:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    .line 42
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->DBG:Z

    .line 47
    new-instance v4, Lcom/htc/android/epst/BrowseFile;

    const-string v5, "/data/data/com.android.phone/files/"

    const-string v6, ".bin"

    invoke-direct {v4, v5, v6}, Lcom/htc/android/epst/BrowseFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mBrowseFile:Lcom/htc/android/epst/BrowseFile;

    .line 48
    iget-object v0, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mBrowseFile:Lcom/htc/android/epst/BrowseFile;

    .line 49
    .local v0, browse:Lcom/htc/android/epst/BrowseFile;
    invoke-virtual {v0}, Lcom/htc/android/epst/BrowseFile;->getFileNameList()[Ljava/lang/Object;

    move-result-object v3

    .line 50
    .local v3, objectList:[Ljava/lang/Object;
    array-length v4, v3

    new-array v1, v4, [Ljava/lang/String;

    .line 51
    .local v1, fileNameList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 52
    aget-object v4, v3, v2

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iput-object v1, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mFileNameList:[Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 78
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 1
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 81
    iput-object p2, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/UpdateERITranslator;->retrieveItemAndUpdate(II)V

    .line 83
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 23
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 88
    .local v17, value:Ljava/lang/String;
    const-string v9, ""

    .line 89
    .local v9, nFilePath:Ljava/lang/String;
    sget-boolean v18, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gbFixedERIPATH:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 91
    sget-object v9, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DEFAULT_PATH:Ljava/lang/String;

    .line 109
    :cond_0
    :goto_0
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, nPT:[Ljava/lang/String;
    const-string v13, ""

    .line 111
    .local v13, nPath:Ljava/lang/String;
    const-string v15, ""

    .line 113
    .local v15, nSPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-object/from16 v18, v0

    const/16 v19, 0x59

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v8

    check-cast v8, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;

    .line 116
    .local v8, nFIO:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;
    const/4 v5, 0x1

    .line 118
    .local v5, bCreateDIR:Z
    array-length v0, v12

    move/from16 v18, v0

    if-lez v18, :cond_5

    .line 120
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v6, v0, :cond_6

    .line 122
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v12, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 123
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v10, v18, 0x1

    .line 124
    .local v10, nLen:I
    invoke-static {v13}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 125
    const-string v18, "%x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, nLenHex:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "nPath:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Full nFilePath:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "00"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "00"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->bAssignParameter(ILjava/lang/String;)Z

    .line 133
    sget-object v18, Lcom/htc/android/epst/translator/UpdateERITranslator;->gRecordList:Lcom/htc/android/epst/internal/RecordList;

    const/16 v19, 0x59

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v14

    .line 134
    .local v14, nRecord:Lcom/htc/android/epst/internal/Record;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/htc/android/epst/internal/Record;->isSend:Z

    .line 135
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/htc/android/epst/internal/Record;->isResponse:Z

    .line 136
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/android/epst/internal/Record;->failedstate:I

    .line 138
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v18

    const/16 v19, 0x59

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 140
    invoke-virtual {v8}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->getCreateDIRResult()I

    move-result v7

    .line 141
    .local v7, nCreateDIR:I
    iget v0, v8, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_SUCCESS:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    iget v0, v8, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->CREATE_DIR_ALREADY_EXIST:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    .line 142
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "CREATE_DIR_SUCCESS or CREATE_DIR_ALREADY_EXIST"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 96
    .end local v5           #bCreateDIR:Z
    .end local v6           #i:I
    .end local v7           #nCreateDIR:I
    .end local v8           #nFIO:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;
    .end local v10           #nLen:I
    .end local v11           #nLenHex:Ljava/lang/String;
    .end local v12           #nPT:[Ljava/lang/String;
    .end local v13           #nPath:Ljava/lang/String;
    .end local v14           #nRecord:Lcom/htc/android/epst/internal/Record;
    .end local v15           #nSPath:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v18

    const/16 v19, 0x26

    const/16 v20, 0x1f52

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 98
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v18

    const/16 v19, 0x1f52

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v16

    check-cast v16, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;

    .line 99
    .local v16, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->getERIDESTINATION()Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_0

    .line 101
    sget-object v9, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DEFAULT_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    .end local v16           #rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;
    .restart local v5       #bCreateDIR:Z
    .restart local v6       #i:I
    .restart local v7       #nCreateDIR:I
    .restart local v8       #nFIO:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;
    .restart local v10       #nLen:I
    .restart local v11       #nLenHex:Ljava/lang/String;
    .restart local v12       #nPT:[Ljava/lang/String;
    .restart local v13       #nPath:Ljava/lang/String;
    .restart local v14       #nRecord:Lcom/htc/android/epst/internal/Record;
    .restart local v15       #nSPath:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CREATE_DIR_FAIL:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v5, 0x0

    goto :goto_2

    .line 149
    .end local v6           #i:I
    .end local v7           #nCreateDIR:I
    .end local v10           #nLen:I
    .end local v11           #nLenHex:Ljava/lang/String;
    .end local v14           #nRecord:Lcom/htc/android/epst/internal/Record;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "No sub folder."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    .line 155
    const/16 v18, 0x5

    const-string v19, "%d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v8, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->WRITE_ERI_FILE:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->bAssignParameter(ILjava/lang/String;)Z

    .line 157
    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->setAccessedFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/UpdateERITranslator;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DM_CMD_OPT_FILE_WRITE.S file:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " T File:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v18

    const/16 v19, 0x59

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 164
    :cond_7
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 4
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 167
    const-string v1, ""

    .line 168
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;

    .line 170
    .local v0, nFIO:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    .line 172
    .end local v0           #nFIO:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/UpdateERITranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 173
    return-void
.end method
