.class public Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;
.super Ljava/lang/Object;
.source "IMSIPv6AddressTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator$dataVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMSIPv6AddressTranslator"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 40
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 32
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 33
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator$dataVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator$dataVerifier;-><init>(Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;)V

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 82
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 3
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 86
    iput-object p2, p0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 89
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f87

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 90
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 7
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v6, 0x1f87

    .line 96
    iput-object p2, p0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 97
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    .local v0, length:I
    iget-object v3, p0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;

    .line 102
    .local v1, nvRaw:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;
    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->setData(Ljava/lang/String;)V

    .line 103
    sget-boolean v3, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "IMSIPv6AddressTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length-value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 107
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 5
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x1f87

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;

    .line 112
    .local v0, nvRaw:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;
    const-string v1, ""

    .line 113
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_PCSCF_IPV6_ADDR_I;->getData()Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "IMSIPv6AddressTranslator"

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

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/htc/android/epst/translator/IMSIPv6AddressTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 118
    return-void
.end method
