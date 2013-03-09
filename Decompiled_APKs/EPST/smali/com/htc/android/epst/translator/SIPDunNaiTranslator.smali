.class public Lcom/htc/android/epst/translator/SIPDunNaiTranslator;
.super Ljava/lang/Object;
.source "SIPDunNaiTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SIPDunNaiTranslator"


# instance fields
.field private DBG:Z

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->DBG:Z

    .line 26
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 29
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x48

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 30
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->DBG:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "SIPDunNaiTranslator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 50
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 3
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->DBG:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "SIPDunNaiTranslator"

    const-string v1, "Request Read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 60
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0xb89

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 62
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v5, 0xb89

    .line 67
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->DBG:Z

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "SIPDunNaiTranslator"

    const-string v3, "Request Write"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iput-object p2, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 71
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v2, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SIP_DUN_NAI;

    .line 73
    .local v0, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SIP_DUN_NAI;
    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SIP_DUN_NAI;->setUserID(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 77
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 4
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 80
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->DBG:Z

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "SIPDunNaiTranslator"

    const-string v3, "Retrieve and Update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0xb89

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SIP_DUN_NAI;

    .line 84
    .local v0, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_SIP_DUN_NAI;
    const-string v1, ""

    .line 85
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SIP_DUN_NAI;->getUserID()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/htc/android/epst/translator/SIPDunNaiTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 90
    return-void
.end method
