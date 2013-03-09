.class public Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;
.super Ljava/lang/Object;
.source "IMSURIMediaServerTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMSURIMediaServerTranslator"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 31
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 32
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 49
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 3
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 53
    iput-object p2, p0, Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 56
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f86

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 57
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 8
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v7, 0x1f86

    .line 63
    iput-object p2, p0, Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 64
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 67
    .local v1, length:I
    iget-object v4, p0, Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v4, v7}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_MEDIA_RESOURCE_SERVER_URI_I;

    .line 68
    .local v2, nvRaw:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_MEDIA_RESOURCE_SERVER_URI_I;
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, hex:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_MEDIA_RESOURCE_SERVER_URI_I;->setLength(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_MEDIA_RESOURCE_SERVER_URI_I;->setData(Ljava/lang/String;)V

    .line 73
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "IMSURIMediaServerTranslator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length-hex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v7, v6, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 77
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 5
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x1f86

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_MEDIA_RESOURCE_SERVER_URI_I;

    .line 82
    .local v0, nvRaw:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_MEDIA_RESOURCE_SERVER_URI_I;
    const-string v1, ""

    .line 83
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_MEDIA_RESOURCE_SERVER_URI_I;->getData()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "IMSURIMediaServerTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveItemAndUpdate.value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/htc/android/epst/translator/IMSURIMediaServerTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 88
    return-void
.end method
