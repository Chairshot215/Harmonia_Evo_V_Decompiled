.class public Lcom/htc/android/epst/translator/NameTranslator;
.super Ljava/lang/Object;
.source "NameTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NameTranslator"


# instance fields
.field protected ADDRESS:Ljava/lang/String;

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/NameTranslator;->ADDRESS:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/NameTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 30
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 31
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 35
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
    const-string v0, "NameTranslator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/htc/android/epst/translator/NameTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 48
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 51
    const-string v0, "NameTranslator"

    const-string v1, "Request Read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p2, p0, Lcom/htc/android/epst/translator/NameTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 57
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x39

    iget-object v3, p0, Lcom/htc/android/epst/translator/NameTranslator;->ADDRESS:Ljava/lang/String;

    move v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 59
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 8
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v2, 0x39

    .line 63
    const-string v0, "NameTranslator"

    const-string v1, "Request Write"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p2, p0, Lcom/htc/android/epst/translator/NameTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 65
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, value:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/epst/translator/NameTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    iget-object v1, p0, Lcom/htc/android/epst/translator/NameTranslator;->ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(ILjava/lang/String;)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;

    .line 69
    .local v6, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;
    invoke-virtual {v6, v7}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->setLETTERS(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/htc/android/epst/translator/NameTranslator;->ADDRESS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 73
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 5
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 76
    const-string v2, "NameTranslator"

    const-string v3, "Retrieve and Update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/htc/android/epst/translator/NameTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x39

    iget-object v4, p0, Lcom/htc/android/epst/translator/NameTranslator;->ADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(ILjava/lang/String;)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;

    .line 79
    .local v0, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;
    const-string v1, ""

    .line 80
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->getLETTERS()Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/NameTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 85
    return-void
.end method
