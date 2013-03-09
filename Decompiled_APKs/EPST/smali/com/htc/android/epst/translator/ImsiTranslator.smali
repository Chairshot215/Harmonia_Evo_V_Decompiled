.class public Lcom/htc/android/epst/translator/ImsiTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "ImsiTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/ImsiTranslator$ImsiVerifier;
    }
.end annotation


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 19
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 30
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 22
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

    .line 23
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/htc/android/epst/translator/ImsiTranslator$ImsiVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/ImsiTranslator$ImsiVerifier;-><init>(Lcom/htc/android/epst/translator/ImsiTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 48
    const-string v4, ""

    .line 49
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0xb1

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;

    .line 51
    .local v3, mnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;
    iget-object v5, p0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;

    .line 53
    .local v1, min1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;
    iget-object v5, p0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;

    .line 55
    .local v2, min2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;
    iget-object v5, p0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0xb0

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;

    .line 58
    .local v0, mcc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->getCdmaMin2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->getCdmaMin1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    :cond_0
    return-object v4
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

    const/16 v1, 0xb0

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 69
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 71
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 73
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v1, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 75
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 23
    .parameter "modifiedValue"

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0xb1

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v9

    check-cast v9, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;

    .line 81
    .local v9, mnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v7

    check-cast v7, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;

    .line 83
    .local v7, min1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0x21

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v8

    check-cast v8, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;

    .line 85
    .local v8, min2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0xb0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;

    .line 88
    .local v6, mcc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 89
    .local v14, modifiedVal:Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, modMccVal:Ljava/lang/String;
    const/16 v19, 0x3

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, modMncVal:Ljava/lang/String;
    const/16 v19, 0x5

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, modMin2Val:Ljava/lang/String;
    const/16 v19, 0x8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, modMin1Val:Ljava/lang/String;
    invoke-virtual {v6, v10}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->setMcc(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v9, v13}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->setMnc(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7, v11}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->setCdmaMin1(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v8, v12}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->setCdmaMin2(Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0x109

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v18

    check-cast v18, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;

    .line 101
    .local v18, tmnc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0x106

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v16

    check-cast v16, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 103
    .local v16, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0x107

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v17

    check-cast v17, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 105
    .local v17, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0x108

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v15

    check-cast v15, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;

    .line 108
    .local v15, tmcc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;
    invoke-virtual {v15, v10}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_MCC;->setTMcc(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_11_12;->setTMnc(Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->setCdmaTMin1(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->setCdmaTMin2(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/epst/translator/ImsiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    move-object/from16 v19, v0

    const/16 v20, 0x25

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;

    .line 116
    .local v4, acc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->setCdmaClass(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v5

    .line 121
    .local v5, itemId:I
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0xb0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 123
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0xb1

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 125
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0x21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 127
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0x20

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 131
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0x108

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 133
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0x109

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 135
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0x107

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 137
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0x106

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 141
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v19

    const/16 v20, 0x27

    const/16 v21, 0x25

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 144
    return-void
.end method
