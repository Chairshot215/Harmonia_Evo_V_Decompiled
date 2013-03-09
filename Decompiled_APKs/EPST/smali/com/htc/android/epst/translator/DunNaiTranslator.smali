.class public Lcom/htc/android/epst/translator/DunNaiTranslator;
.super Ljava/lang/Object;
.source "DunNaiTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DunNaiTranslator"


# instance fields
.field private index:I

.field private indexStr:Ljava/lang/String;

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 32
    iput p1, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->index:I

    .line 33
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->indexStr:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 37
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x48

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 38
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 55
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 59
    iput-object p2, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 61
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0xb09

    iget-object v3, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->indexStr:Ljava/lang/String;

    move v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 63
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 8
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v2, 0xb09

    .line 68
    iput-object p2, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 69
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, value:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    iget v1, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->index:I

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;

    .line 72
    .local v6, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;
    invoke-virtual {v6, v7}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->setNai(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->indexStr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 76
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 5
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0xb09

    iget v4, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;

    .line 81
    .local v0, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;
    const-string v1, ""

    .line 82
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIP_DUN_NAI;->getNai()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/DunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 87
    return-void
.end method
