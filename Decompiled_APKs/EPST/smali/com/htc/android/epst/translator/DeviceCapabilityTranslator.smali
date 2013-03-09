.class public Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;
.super Ljava/lang/Object;
.source "DeviceCapabilityTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeviceCapabilityTranslator"


# instance fields
.field private gCapability:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->gCapability:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->gCapability:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 65
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 68
    iput-object p2, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->sendReadRequest(I)V

    .line 70
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 73
    iput-object p2, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 75
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 80
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 51
    const-string v0, "SMS,MMS,DATA capable"

    iput-object v0, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->gCapability:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->retrieveItemAndUpdate(II)V

    .line 53
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 3
    .parameter "modifiedValue"

    .prologue
    .line 58
    const-string v0, "Joe_Shih"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWriteRequest gCapability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->gCapability:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->retrieveItemAndUpdate(II)V

    .line 60
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/DeviceCapabilityTranslator;->refreshGroupSettings()V

    .line 61
    return-void
.end method
