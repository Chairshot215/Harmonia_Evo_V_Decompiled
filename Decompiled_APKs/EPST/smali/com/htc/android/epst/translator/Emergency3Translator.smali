.class public Lcom/htc/android/epst/translator/Emergency3Translator;
.super Ljava/lang/Object;
.source "Emergency3Translator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Emergency3Translator"


# instance fields
.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "Emergency3Translator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/htc/android/epst/translator/Emergency3Translator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 35
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 4
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 38
    const-string v2, "Emergency3Translator"

    const-string v3, "Request Read"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p2, p0, Lcom/htc/android/epst/translator/Emergency3Translator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 41
    const-string v1, ""

    .line 42
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getEmergencyNumbers()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, emergencyNums:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 44
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 46
    .restart local v1       #value:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/Emergency3Translator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 47
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 51
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 0
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 57
    return-void
.end method
