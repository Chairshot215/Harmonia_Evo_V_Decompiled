.class public Lcom/htc/android/epst/translator/AaaSpiTranslator;
.super Ljava/lang/Object;
.source "AaaSpiTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AaaSpiTranslator"


# instance fields
.field private fakeItemId:I

.field private index:I

.field private indexStr:Ljava/lang/String;

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .parameter "index"
    .parameter "fakeItemId"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 34
    iput p1, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->index:I

    .line 35
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->indexStr:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->fakeItemId:I

    .line 37
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 40
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/android/epst/translator/HexKeyFilter;->getInstance()Lcom/htc/android/epst/translator/HexKeyFilter;

    move-result-object v2

    aput-object v2, v0, v1

    .line 41
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "AaaSpiTranslator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 58
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 61
    const-string v0, "AaaSpiTranslator"

    const-string v1, "Request Read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p2, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 67
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1d1

    iget-object v3, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->indexStr:Ljava/lang/String;

    move v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 69
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 8
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v2, 0x1d1

    const/4 v3, 0x1

    .line 73
    const-string v0, "AaaSpiTranslator"

    const-string v1, "Request Write"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p2, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 75
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, value:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    iget v1, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->index:I

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;

    .line 78
    .local v6, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 84
    :cond_0
    invoke-virtual {v6, v7}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->setMN_AAA_Spi(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->indexStr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 88
    return-void

    .line 82
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 5
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 91
    const-string v2, "AaaSpiTranslator"

    const-string v3, "Retrieve and Update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x1d1

    iget v4, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;

    .line 95
    .local v0, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;
    const-string v1, ""

    .line 97
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->getMN_AAA_Spi()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/AaaSpiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 102
    return-void
.end method
