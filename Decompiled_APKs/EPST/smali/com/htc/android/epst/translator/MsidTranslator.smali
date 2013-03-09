.class public Lcom/htc/android/epst/translator/MsidTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "MsidTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/MsidTranslator$MsidVerifier;
    }
.end annotation


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mOriginMin1:Ljava/lang/String;

.field private mOriginMin2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 24
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 35
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 27
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 28
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/htc/android/epst/translator/MsidTranslator$MsidVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/MsidTranslator$MsidVerifier;-><init>(Lcom/htc/android/epst/translator/MsidTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 53
    iget-object v5, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;

    .line 55
    .local v0, min1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;
    iget-object v5, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;

    .line 58
    .local v2, min2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->getCdmaMin1()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, min1Val:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->getCdmaMin2()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, min2Val:Ljava/lang/String;
    iput-object v1, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mOriginMin1:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mOriginMin2:Ljava/lang/String;

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, value:Ljava/lang/String;
    return-object v4
.end method

.method public sendReadRequest(I)V
    .locals 4
    .parameter "itemId"

    .prologue
    const/16 v3, 0x26

    .line 70
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 72
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v3, v1, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 74
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 13
    .parameter "modifiedValue"

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v1

    .line 79
    .local v1, itemId:I
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, value:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, modifiedMin2:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, modifiedMin1:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;

    .line 85
    .local v2, min1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;
    iget-object v9, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x21

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;

    .line 88
    .local v3, min2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;
    invoke-virtual {v2, v4}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->setCdmaMin1(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->setCdmaMin2(Ljava/lang/String;)V

    .line 91
    iget-object v9, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x106

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 93
    .local v6, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    iget-object v9, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x107

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v7

    check-cast v7, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 96
    .local v7, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    invoke-virtual {v6, v4}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->setCdmaTMin1(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v7, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->setCdmaTMin2(Ljava/lang/String;)V

    .line 100
    iget-object v9, p0, Lcom/htc/android/epst/translator/MsidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;

    .line 103
    .local v0, acc:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->setCdmaClass(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v9

    const/16 v10, 0x27

    const/16 v11, 0x21

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 107
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v9

    const/16 v10, 0x27

    const/16 v11, 0x20

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 111
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v9

    const/16 v10, 0x27

    const/16 v11, 0x107

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 113
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v9

    const/16 v10, 0x27

    const/16 v11, 0x106

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 117
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v9

    const/16 v10, 0x27

    const/16 v11, 0x25

    invoke-virtual {v9, v10, v11, v1, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 119
    return-void
.end method
