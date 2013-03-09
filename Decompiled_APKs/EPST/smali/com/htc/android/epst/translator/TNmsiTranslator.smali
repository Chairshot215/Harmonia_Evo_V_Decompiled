.class public Lcom/htc/android/epst/translator/TNmsiTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "TNmsiTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/TNmsiTranslator$TNmsiVerifier;
    }
.end annotation


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 21
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/TNmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 32
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 24
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 25
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/htc/android/epst/translator/TNmsiTranslator$TNmsiVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/TNmsiTranslator$TNmsiVerifier;-><init>(Lcom/htc/android/epst/translator/TNmsiTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 50
    const-string v3, ""

    .line 51
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/translator/TNmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x109

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;

    .line 53
    .local v2, tmnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;
    iget-object v4, p0, Lcom/htc/android/epst/translator/TNmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x106

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 55
    .local v0, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    iget-object v4, p0, Lcom/htc/android/epst/translator/TNmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x107

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 58
    .local v1, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;->getTMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->getCdmaTMin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->getCdmaTMin1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    :cond_0
    return-object v3
.end method

.method public sendReadRequest(I)V
    .locals 4
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x26

    .line 67
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x109

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 69
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x107

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 71
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x106

    invoke-virtual {v0, v2, v1, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 73
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 13
    .parameter "modifiedValue"

    .prologue
    const/16 v12, 0x106

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/16 v11, 0x27

    const/4 v10, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 78
    .local v0, itemId:I
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, modifiedTMnc:Ljava/lang/String;
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, modifiedTMin2:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, modifiedTMin1:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/epst/translator/TNmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v9, 0x109

    invoke-virtual {v8, v9}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;

    .line 86
    .local v6, tmnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;
    iget-object v8, p0, Lcom/htc/android/epst/translator/TNmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v8, v12}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 88
    .local v4, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    iget-object v8, p0, Lcom/htc/android/epst/translator/TNmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v9, 0x107

    invoke-virtual {v8, v9}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v5

    check-cast v5, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 91
    .local v5, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    invoke-virtual {v6, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;->setTMnc(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->setCdmaTMin2(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->setCdmaTMin1(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v8

    const/16 v9, 0x109

    invoke-virtual {v8, v11, v9, v10, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 98
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v8

    const/16 v9, 0x107

    invoke-virtual {v8, v11, v9, v10, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 100
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v8

    invoke-virtual {v8, v11, v12, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 102
    return-void
.end method
