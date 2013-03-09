.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MIP_DMU_MN_AUTH_I.java"


# static fields
.field public static final MAX_MN_AUTH_LENGTH:I = 0x6


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private mn_auth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->index:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mn_auth:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->DBG:Z

    .line 16
    const-string v0, "DM_NVI_ID_MIP_DMU_MN_AUTH_I"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mn_auth:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, mnAuth:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateCmdData.index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->index:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->index:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mCurrentCmdData:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getMnAuthenticator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mn_auth:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x4

    .line 26
    iget-boolean v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->DBG:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read.index:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->index:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, data1:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, data2:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v10, 0x8

    invoke-virtual {v9, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, data3:Ljava/lang/String;
    const/4 v6, 0x0

    .line 34
    .local v6, nValue1:I
    const/16 v9, 0x10

    :try_start_0
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 39
    :goto_0
    const/4 v7, 0x0

    .line 41
    .local v7, nValue2:I
    const/16 v9, 0x10

    :try_start_1
    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    mul-int/lit16 v7, v9, 0x100

    .line 46
    :goto_1
    const/4 v8, 0x0

    .line 48
    .local v8, nValue3:I
    const/16 v9, 0x10

    :try_start_2
    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    mul-int/lit16 v9, v9, 0x100

    mul-int/lit16 v8, v9, 0x100

    .line 53
    :goto_2
    add-int v9, v6, v7

    add-int v5, v9, v8

    .line 54
    .local v5, nValue:I
    const-string v9, "%X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, nHexValue:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->DBG:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nHexValue:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    iput-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mn_auth:Ljava/lang/String;

    .line 57
    return-void

    .line 35
    .end local v4           #nHexValue:Ljava/lang/String;
    .end local v5           #nValue:I
    .end local v7           #nValue2:I
    .end local v8           #nValue3:I
    :catch_0
    move-exception v3

    .line 36
    .local v3, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    const-string v10, "nValue1 = Integer.parseInt(data1, 16).error!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #nValue2:I
    :catch_1
    move-exception v3

    .line 43
    .restart local v3       #e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    const-string v10, "nValue2 = Integer.parseInt(data2, 16) * 256.error!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v8       #nValue3:I
    :catch_2
    move-exception v3

    .line 50
    .restart local v3       #e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    const-string v10, "nValue3 = Integer.parseInt(data3, 16) * 256 * 256.error!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setIndex(I)V
    .locals 4
    .parameter "iIndex"

    .prologue
    .line 19
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->index:Ljava/lang/String;

    .line 20
    iget-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndex.index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->index:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    return-void
.end method

.method public setMnAuthenticator(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DMU_MN_AUTH_I;->mn_auth:Ljava/lang/String;

    .line 72
    return-void
.end method
