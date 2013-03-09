.class public Lcom/htc/android/epst/translator/TImsi_sTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "TImsi_sTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/TImsi_sTranslator$TImsi_sVerifier;
    }
.end annotation


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 20
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/TImsi_sTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 31
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 23
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

    .line 24
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/htc/android/epst/translator/TImsi_sTranslator$TImsi_sVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/TImsi_sTranslator$TImsi_sVerifier;-><init>(Lcom/htc/android/epst/translator/TImsi_sTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 49
    const-string v4, ""

    .line 50
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/epst/translator/TImsi_sTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x106

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 52
    .local v0, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    iget-object v5, p0, Lcom/htc/android/epst/translator/TImsi_sTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x107

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 54
    .local v2, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->getCdmaTMin1()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, tmin1Val:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->getCdmaTMin2()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, tmin2Val:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    return-object v4
.end method

.method public sendReadRequest(I)V
    .locals 4
    .parameter "itemId"

    .prologue
    const/16 v3, 0x26

    .line 63
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x106

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 65
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x107

    invoke-virtual {v0, v3, v1, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 67
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 12
    .parameter "modifiedValue"

    .prologue
    const/16 v11, 0x107

    const/16 v10, 0x106

    const/16 v9, 0x27

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 72
    .local v0, itemId:I
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, modifiedTMin2:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, modifiedTMin1:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/epst/translator/TImsi_sTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v6, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 79
    .local v3, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    iget-object v6, p0, Lcom/htc/android/epst/translator/TImsi_sTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v6, v11}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;

    .line 82
    .local v4, tmin2:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
    invoke-virtual {v4, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->setCdmaTMin2(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->setCdmaTMin1(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v6

    invoke-virtual {v6, v9, v11, v7, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 88
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v6

    invoke-virtual {v6, v9, v10, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 91
    return-void
.end method
