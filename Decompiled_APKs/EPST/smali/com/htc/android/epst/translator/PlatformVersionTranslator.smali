.class public Lcom/htc/android/epst/translator/PlatformVersionTranslator;
.super Ljava/lang/Object;
.source "PlatformVersionTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PlatformVersionTranslator"


# instance fields
.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "PlatformVersionTranslator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/htc/android/epst/translator/PlatformVersionTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 34
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 3
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 37
    const-string v1, "PlatformVersionTranslator"

    const-string v2, "Request Read"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p2, p0, Lcom/htc/android/epst/translator/PlatformVersionTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 40
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 42
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/PlatformVersionTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 47
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 0
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 53
    return-void
.end method
