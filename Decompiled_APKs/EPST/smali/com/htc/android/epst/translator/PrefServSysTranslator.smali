.class public Lcom/htc/android/epst/translator/PrefServSysTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "PrefServSysTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrefServSysTranslator"

.field static gMapArray:[I

.field static gOptionNum:I


# instance fields
.field DBG:Z

.field final PREF_AUTO:I

.field final PREF_AUTO_A:I

.field final PREF_AUTO_B:I

.field final PREF_HOME:I

.field final PREF_ROAM:I

.field PREF_SYS_TYPE:I

.field gSprintSupportRoaming:Z

.field mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 29
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x1ba

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    iput-object v0, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_HOME:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_ROAM:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_AUTO:I

    .line 34
    iput v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_AUTO_A:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_AUTO_B:I

    .line 37
    iput v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    .line 42
    iput-boolean v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gSprintSupportRoaming:Z

    .line 43
    iput-boolean v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    return-void
.end method

.method private assignMapAry()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 46
    iget-boolean v1, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PrefServSysTranslator"

    const-string v2, "assignMapAry:IN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 49
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v4, v1, v2

    .line 50
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v6, v1, v7

    .line 51
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v4

    .line 52
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v6

    .line 53
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v8

    .line 55
    sput v4, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    .line 122
    :goto_0
    iget-boolean v1, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PrefServSysTranslator"

    const-string v2, "assignMapAry:OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    return-void

    .line 57
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 58
    iget-boolean v1, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gSprintSupportRoaming:Z

    if-ne v1, v7, :cond_3

    .line 60
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v4, v1, v2

    .line 61
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v6, v1, v7

    .line 62
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v8, v1, v4

    .line 63
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v6

    .line 64
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v8

    .line 66
    sput v6, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    goto :goto_0

    .line 70
    :cond_3
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v4, v1, v2

    .line 71
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v6, v1, v7

    .line 72
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v4

    .line 73
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v6

    .line 74
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v8

    .line 76
    sput v4, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    goto :goto_0

    .line 80
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 82
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v1

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;

    .line 83
    .local v0, mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;
    iget-boolean v1, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "PrefServSysTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assignMapAry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlPreferOnly()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_5
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlPreferOnly()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 86
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v4, v1, v2

    .line 87
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v6, v1, v7

    .line 88
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v2, v1, v4

    .line 89
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v7, v1, v6

    .line 90
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v8

    .line 92
    sput v8, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    goto/16 :goto_0

    .line 94
    :cond_6
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlPreferOnly()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04005c

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v7, :cond_7

    .line 96
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v4, v1, v2

    .line 97
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v6, v1, v7

    .line 98
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v4

    .line 99
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v6

    .line 100
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v8

    .line 102
    sput v4, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    goto/16 :goto_0

    .line 107
    :cond_7
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v4, v1, v2

    .line 108
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    const/4 v2, 0x0

    aput v2, v1, v7

    .line 109
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v7, v1, v4

    .line 110
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v6

    .line 111
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aput v5, v1, v8

    .line 113
    sput v6, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    goto/16 :goto_0

    .line 119
    .end local v0           #mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;
    :cond_8
    const-string v1, "PrefServSysTranslator"

    const-string v2, "(assignMapAry)No adssign operator"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private bCheckCorrectType(I)Z
    .locals 4
    .parameter "iInputType"

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    if-ge v0, v1, :cond_2

    .line 184
    sget-object v1, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 186
    iget-boolean v1, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PrefServSysTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bGetPrefSysType.bCheckCorrectType:correct:type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    const/4 v1, 0x1

    .line 191
    :goto_1
    return v1

    .line 182
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    const-string v1, "PrefServSysTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bGetPrefSysType.bCheckCorrectType:fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private bGetPrefSysType()Z
    .locals 15

    .prologue
    .line 244
    const/4 v0, 0x1

    .line 245
    .local v0, bResult:Z
    iget-object v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    invoke-virtual {v11}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->getRoam()Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, mode:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "PrefServSysTranslator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bGetPrefSysType.mode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    sget-boolean v11, Lcom/htc/android/epst/EntryEPSTInfo;->WORLD_PHONE:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 250
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v11

    const/16 v12, 0x102

    invoke-virtual {v11, v12}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v10

    check-cast v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;

    .line 251
    .local v10, sysPref:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;
    invoke-virtual {v10}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->getSYS()Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, nSysPref:Ljava/lang/String;
    const-string v11, "PrefServSysTranslator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bGetPrefSysType.nSysPref:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v11, v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_02:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const-string v11, "01"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 254
    const/4 v11, 0x2

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    .line 297
    .end local v9           #nSysPref:Ljava/lang/String;
    .end local v10           #sysPref:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;
    :goto_0
    return v0

    .line 255
    .restart local v9       #nSysPref:Ljava/lang/String;
    .restart local v10       #sysPref:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;
    :cond_1
    iget-object v11, v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_03:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const-string v11, "FF"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 256
    const/4 v11, 0x3

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto :goto_0

    .line 257
    :cond_2
    iget-object v11, v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_00:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const-string v11, "FF"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 258
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto :goto_0

    .line 259
    :cond_3
    iget-object v11, v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_01:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const-string v11, "FF"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 260
    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto :goto_0

    .line 261
    :cond_4
    iget-object v11, v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_03:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const-string v11, "02"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 262
    const/4 v11, 0x4

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto :goto_0

    .line 264
    :cond_5
    const/4 v0, 0x0

    .line 265
    const/4 v11, -0x1

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto :goto_0

    .line 270
    .end local v9           #nSysPref:Ljava/lang/String;
    .end local v10           #sysPref:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;
    :cond_6
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v11

    const/16 v12, 0x1b9

    invoke-virtual {v11, v12}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;

    .line 271
    .local v1, band0:Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v11

    const/16 v12, 0x3b2

    invoke-virtual {v11, v12}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;

    .line 273
    .local v2, band1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;
    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;->getBand()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, bandVal:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->getBand()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, bandVal_16_31:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, bandtolVal:Ljava/lang/String;
    const/16 v11, 0x10

    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 279
    .local v6, convert:J
    iget-boolean v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v11, :cond_7

    const-string v11, "PrefServSysTranslator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrefServSysTranslator.mode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bandVal_16_31:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bandVal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " convert:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (convert & 0x3FFFFFFF)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/32 v13, 0x3fffffff

    and-long/2addr v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_7
    const-wide/32 v11, 0x3fffffff

    and-long/2addr v11, v6

    const-wide/32 v13, 0x3fffffff

    cmp-long v11, v11, v13

    if-nez v11, :cond_8

    const-string v11, "01"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 281
    const/4 v11, 0x2

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto/16 :goto_0

    .line 282
    :cond_8
    const-wide/16 v11, 0x1

    cmp-long v11, v6, v11

    if-nez v11, :cond_9

    const-string v11, "FF"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 283
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto/16 :goto_0

    .line 284
    :cond_9
    const-wide/16 v11, 0x2

    cmp-long v11, v6, v11

    if-nez v11, :cond_a

    const-string v11, "FF"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 285
    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto/16 :goto_0

    .line 286
    :cond_a
    const-wide/32 v11, 0x3fffffff

    and-long/2addr v11, v6

    const-wide/32 v13, 0x3fffffff

    cmp-long v11, v11, v13

    if-nez v11, :cond_b

    const-string v11, "FF"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 287
    const/4 v11, 0x3

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto/16 :goto_0

    .line 288
    :cond_b
    const-wide/32 v11, 0x3fffffff

    and-long/2addr v11, v6

    const-wide/32 v13, 0x3fffffff

    cmp-long v11, v11, v13

    if-nez v11, :cond_c

    const-string v11, "FE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 289
    const/4 v11, 0x4

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto/16 :goto_0

    .line 291
    :cond_c
    const/4 v0, 0x0

    .line 292
    const/4 v11, -0x1

    iput v11, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    goto/16 :goto_0
.end method

.method private getStringValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04007a

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, nValue:Ljava/lang/String;
    iget v1, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    packed-switch v1, :pswitch_data_0

    .line 235
    const-string v1, "PrefServSysTranslator"

    const-string v2, "PrefServSysTranslator.getStringValue:No assigned string"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    const-string v1, "PrefServSysTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringValue-value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-object v0

    .line 201
    :pswitch_0
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 202
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040071

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040070

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    goto :goto_0

    .line 212
    :pswitch_1
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006d

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    goto :goto_0

    .line 218
    :pswitch_2
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    goto :goto_0

    .line 224
    :pswitch_3
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006f

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    goto :goto_0

    .line 230
    :pswitch_4
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040072

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private getUserOption(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 345
    const/4 v0, -0x1

    .line 346
    .local v0, nType:I
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040070

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040071

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    const/4 v0, 0x2

    .line 360
    :goto_0
    return v0

    .line 349
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006d

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const/4 v0, 0x3

    goto :goto_0

    .line 351
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006f

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040072

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    const/4 v0, 0x4

    goto :goto_0

    .line 358
    :cond_5
    const-string v1, "PrefServSysTranslator"

    const-string v2, "getUserOption.No select type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 301
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04007a

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->bGetPrefSysType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    const-string v2, "PrefServSysTranslator"

    const-string v3, "bGetPrefSysType() == false:No mapped value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 312
    .end local v0           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 306
    .end local v1           #value:Ljava/lang/String;
    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->PREF_SYS_TYPE:I

    invoke-direct {p0, v2}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->bCheckCorrectType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    const-string v2, "PrefServSysTranslator"

    const-string v3, "bCheckCorrectType() == false:No assinged value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "PrefServSysTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v1, v0

    .line 312
    .end local v0           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getAvailableOptions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PrefServSysTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableOptions:IN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gOptionNum:I

    if-ge v0, v2, :cond_a

    .line 132
    sget-object v2, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aget v2, v2, v0

    if-nez v2, :cond_2

    .line 134
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04006e

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    sget-object v2, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aget v2, v2, v0

    if-ne v2, v5, :cond_3

    .line 138
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04006f

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_3
    sget-object v2, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aget v2, v2, v0

    if-ne v2, v6, :cond_7

    .line 142
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 144
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f040071

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v2

    if-eq v2, v7, :cond_5

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 149
    :cond_5
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f040070

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_6
    const-string v2, "PrefServSysTranslator"

    const-string v3, "(getAvailableOptions)No adssign operator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    :cond_7
    sget-object v2, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 159
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04006d

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_8
    sget-object v2, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aget v2, v2, v0

    if-ne v2, v7, :cond_9

    .line 163
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f040072

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 165
    :cond_9
    sget-object v2, Lcom/htc/android/epst/translator/PrefServSysTranslator;->gMapArray:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto/16 :goto_1

    .line 171
    :cond_a
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "PrefServSysTranslator"

    const-string v3, "getAvailableOptions:OUT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_b
    return-object v1
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 5
    .parameter "itemId"

    .prologue
    const/16 v4, 0x1ba

    const/16 v3, 0x26

    const/4 v2, 0x0

    .line 318
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 319
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v2, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 322
    :cond_0
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->WORLD_PHONE:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 324
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 326
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, v3, v4, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 339
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->assignMapAry()V

    .line 341
    return-void

    .line 331
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x1b9

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 333
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 335
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, v3, v4, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    goto :goto_0
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 12
    .parameter "modifiedValue"

    .prologue
    const/16 v11, 0x1b9

    const/16 v10, 0x102

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x27

    .line 366
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, value:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/epst/EntryEPSTInfo;->WORLD_PHONE:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 369
    invoke-direct {p0, v4}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->getUserOption(Ljava/lang/String;)I

    move-result v2

    .line 370
    .local v2, pref_sys_type:I
    if-ne v2, v9, :cond_0

    .line 371
    const-string v5, "PrefServSysTranslator"

    const-string v6, "sendWriteRequest:pre_sys_type == -1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->bCheckCorrectType(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 376
    const-string v5, "PrefServSysTranslator"

    const-string v6, "sendWriteRequest:bCheckCorrectType(pre_sys_type) ==false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;

    .line 381
    .local v3, systemPref:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;
    packed-switch v2, :pswitch_data_0

    .line 418
    const-string v5, "PrefServSysTranslator"

    const-string v6, "sendWriteRequest:No assigned string"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_1
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v5

    invoke-virtual {v5, v8, v10, v7, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 423
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v5

    const/16 v6, 0x1ba

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v7

    invoke-virtual {v5, v8, v6, v7, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    goto :goto_0

    .line 384
    :pswitch_0
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "01"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    .line 385
    iget-object v5, v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_02:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->setSYS(Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :pswitch_1
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "FF"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    .line 392
    iget-object v5, v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_03:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->setSYS(Ljava/lang/String;)V

    goto :goto_1

    .line 398
    :pswitch_2
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "FF"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    .line 399
    iget-object v5, v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_00:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->setSYS(Ljava/lang/String;)V

    goto :goto_1

    .line 405
    :pswitch_3
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "FF"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    .line 406
    iget-object v5, v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_01:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->setSYS(Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :pswitch_4
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "02"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    .line 413
    iget-object v5, v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->SYS_03:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;->setSYS(Ljava/lang/String;)V

    goto :goto_1

    .line 427
    .end local v2           #pref_sys_type:I
    .end local v3           #systemPref:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SYSTEM_PREF;
    :cond_2
    invoke-direct {p0, v4}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->getUserOption(Ljava/lang/String;)I

    move-result v2

    .line 428
    .restart local v2       #pref_sys_type:I
    if-ne v2, v9, :cond_3

    .line 429
    const-string v5, "PrefServSysTranslator"

    const-string v6, "sendWriteRequest:pre_sys_type == -1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 433
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/android/epst/translator/PrefServSysTranslator;->bCheckCorrectType(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 434
    const-string v5, "PrefServSysTranslator"

    const-string v6, "sendWriteRequest:bCheckCorrectType(pre_sys_type) ==false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;

    .line 439
    .local v0, band0:Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v5

    const/16 v6, 0x3b2

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;

    .line 441
    .local v1, band1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;
    iget-object v5, v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;->BAND_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;->setBand(Ljava/lang/String;)V

    .line 442
    iget-object v5, v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->BAND_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->setBand(Ljava/lang/String;)V

    .line 444
    packed-switch v2, :pswitch_data_1

    .line 480
    const-string v5, "PrefServSysTranslator"

    const-string v6, "PrefServSysTranslator.sendWriteRequest:No assigned string"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_2
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v5

    invoke-virtual {v5, v8, v11, v7, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 485
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v5

    const/16 v6, 0x3b2

    invoke-virtual {v5, v8, v6, v7, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 486
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v5

    const/16 v6, 0x1ba

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v7

    invoke-virtual {v5, v8, v6, v7, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    goto/16 :goto_0

    .line 447
    :pswitch_5
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "01"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    goto :goto_2

    .line 453
    :pswitch_6
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "FF"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    goto :goto_2

    .line 459
    :pswitch_7
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "FF"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    .line 460
    const-string v5, "0001"

    invoke-virtual {v0, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;->setBand(Ljava/lang/String;)V

    .line 461
    const-string v5, "0000"

    invoke-virtual {v1, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->setBand(Ljava/lang/String;)V

    goto :goto_2

    .line 467
    :pswitch_8
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "FF"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    .line 468
    const-string v5, "0002"

    invoke-virtual {v0, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I;->setBand(Ljava/lang/String;)V

    .line 469
    const-string v5, "0000"

    invoke-virtual {v1, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->setBand(Ljava/lang/String;)V

    goto :goto_2

    .line 475
    :pswitch_9
    iget-object v5, p0, Lcom/htc/android/epst/translator/PrefServSysTranslator;->mRoam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;

    const-string v6, "02"

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->setRoam(Ljava/lang/String;)V

    goto :goto_2

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 444
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method
