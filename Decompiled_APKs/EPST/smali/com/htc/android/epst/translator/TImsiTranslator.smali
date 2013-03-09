.class public Lcom/htc/android/epst/translator/TImsiTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "TImsiTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/TImsiTranslator$TImsiVerifier;
    }
.end annotation


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 22
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 33
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 25
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 26
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/htc/android/epst/translator/TImsiTranslator$TImsiVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/TImsiTranslator$TImsiVerifier;-><init>(Lcom/htc/android/epst/translator/TImsiTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 52
    const-string v4, ""

    .line 53
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x108

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;

    .line 55
    .local v0, tmcc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;
    iget-object v5, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x109

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;

    .line 57
    .local v3, tmnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;
    iget-object v5, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x106

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 59
    .local v1, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    iget-object v5, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x107

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 62
    .local v2, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;->getTMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;->getTMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->getCdmaTMin2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->getCdmaTMin1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    :cond_0
    return-object v4
.end method

.method public sendReadRequest(I)V
    .locals 4
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x26

    .line 71
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x108

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 73
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x109

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 75
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x107

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 77
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x106

    invoke-virtual {v0, v2, v1, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 79
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 14
    .parameter "modifiedValue"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 84
    .local v0, itemId:I
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, modifiedTMcc:Ljava/lang/String;
    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, modifiedTMnc:Ljava/lang/String;
    const/4 v10, 0x5

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, modifiedTMin2:Ljava/lang/String;
    const/16 v10, 0x8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, modifiedTMin1:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v11, 0x108

    invoke-virtual {v10, v11}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v5

    check-cast v5, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;

    .line 93
    .local v5, tmcc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;
    iget-object v10, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v11, 0x109

    invoke-virtual {v10, v11}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v8

    check-cast v8, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;

    .line 95
    .local v8, tmnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;
    iget-object v10, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v11, 0x106

    invoke-virtual {v10, v11}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 97
    .local v6, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    iget-object v10, p0, Lcom/htc/android/epst/translator/TImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v11, 0x107

    invoke-virtual {v10, v11}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v7

    check-cast v7, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 100
    .local v7, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    invoke-virtual {v5, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;->setTMcc(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v8, v4}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;->setTMnc(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v7, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->setCdmaTMin2(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v6, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->setCdmaTMin1(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v10

    const/16 v11, 0x27

    const/16 v12, 0x108

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 108
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v10

    const/16 v11, 0x27

    const/16 v12, 0x109

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 110
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v10

    const/16 v11, 0x27

    const/16 v12, 0x107

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 112
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v10

    const/16 v11, 0x27

    const/16 v12, 0x106

    invoke-virtual {v10, v11, v12, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 114
    return-void
.end method
