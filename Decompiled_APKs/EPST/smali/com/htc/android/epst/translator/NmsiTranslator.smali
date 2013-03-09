.class public Lcom/htc/android/epst/translator/NmsiTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "NmsiTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/NmsiTranslator$NmsiVerifier;
    }
.end annotation


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 25
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 36
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 28
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

    .line 29
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/htc/android/epst/translator/NmsiTranslator$NmsiVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/NmsiTranslator$NmsiVerifier;-><init>(Lcom/htc/android/epst/translator/NmsiTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    iget-object v4, p0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0xb1

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;

    .line 56
    .local v2, mnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;
    iget-object v4, p0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;

    .line 58
    .local v0, min1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;
    iget-object v4, p0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;

    .line 61
    .local v1, min2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->getCdmaMin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->getCdmaMin1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, value:Ljava/lang/String;
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

    const/16 v1, 0xb1

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 69
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 71
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v1, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 73
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 17
    .parameter "modifiedValue"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v14, 0xb1

    invoke-virtual {v13, v14}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v5

    check-cast v5, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;

    .line 80
    .local v5, mnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;

    .line 82
    .local v3, min1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v14, 0x21

    invoke-virtual {v13, v14}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;

    .line 85
    .local v4, min2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, modifiedVal:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, modMncVal:Ljava/lang/String;
    const/4 v13, 0x2

    const/4 v14, 0x5

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, modMin2Val:Ljava/lang/String;
    const/4 v13, 0x5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, modMin1Val:Ljava/lang/String;
    invoke-virtual {v5, v8}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->setMnc(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->setCdmaMin1(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4, v7}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->setCdmaMin2(Ljava/lang/String;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v14, 0x109

    invoke-virtual {v13, v14}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v12

    check-cast v12, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;

    .line 97
    .local v12, tmnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v14, 0x106

    invoke-virtual {v13, v14}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v10

    check-cast v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 99
    .local v10, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v14, 0x107

    invoke-virtual {v13, v14}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v11

    check-cast v11, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 102
    .local v11, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    invoke-virtual {v12, v8}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;->setTMnc(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v10, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->setCdmaTMin1(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v11, v7}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->setCdmaTMin2(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/epst/translator/NmsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v14, 0x25

    invoke-virtual {v13, v14}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;

    .line 110
    .local v1, acc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->setCdmaClass(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v2

    .line 115
    .local v2, itemId:I
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v13

    const/16 v14, 0x27

    const/16 v15, 0xb1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 117
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v13

    const/16 v14, 0x27

    const/16 v15, 0x21

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 119
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v13

    const/16 v14, 0x27

    const/16 v15, 0x20

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 122
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v13

    const/16 v14, 0x27

    const/16 v15, 0x109

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 124
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v13

    const/16 v14, 0x27

    const/16 v15, 0x107

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 126
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v13

    const/16 v14, 0x27

    const/16 v15, 0x106

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 130
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v13

    const/16 v14, 0x27

    const/16 v15, 0x25

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v15, v2, v0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 132
    return-void
.end method
