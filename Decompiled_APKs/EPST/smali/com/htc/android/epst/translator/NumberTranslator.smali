.class public Lcom/htc/android/epst/translator/NumberTranslator;
.super Ljava/lang/Object;
.source "NumberTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NumberTranslator"


# instance fields
.field protected ADDRESS:Ljava/lang/String;

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/NumberTranslator;->ADDRESS:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/NumberTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 32
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "NumberTranslator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/htc/android/epst/translator/NumberTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 51
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 7
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 54
    const-string v0, "NumberTranslator"

    const-string v1, "Request Read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p2, p0, Lcom/htc/android/epst/translator/NumberTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 57
    add-int/lit8 v6, p1, -0x1

    .line 60
    .local v6, fakeItemId:I
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x39

    iget-object v3, p0, Lcom/htc/android/epst/translator/NumberTranslator;->ADDRESS:Ljava/lang/String;

    move v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 62
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 11
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v2, 0x39

    .line 66
    const-string v0, "NumberTranslator"

    const-string v1, "Request Write"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p2, p0, Lcom/htc/android/epst/translator/NumberTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 68
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, value:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 71
    .local v8, numDigits:I
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, hex:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-static {v7, v0}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 77
    .local v6, fakeItemId:I
    iget-object v0, p0, Lcom/htc/android/epst/translator/NumberTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    iget-object v1, p0, Lcom/htc/android/epst/translator/NumberTranslator;->ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(ILjava/lang/String;)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v9

    check-cast v9, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;

    .line 79
    .local v9, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;
    invoke-virtual {v9, v7}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->setNUM_DIGITS(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->setDIGITS(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/htc/android/epst/translator/NumberTranslator;->ADDRESS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 84
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 6
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 87
    const-string v3, "NumberTranslator"

    const-string v4, "Retrieve and Update"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    add-int/lit8 v0, p1, -0x1

    .line 90
    .local v0, fakeItemId:I
    iget-object v3, p0, Lcom/htc/android/epst/translator/NumberTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v4, 0x39

    iget-object v5, p0, Lcom/htc/android/epst/translator/NumberTranslator;->ADDRESS:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(ILjava/lang/String;)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;

    .line 91
    .local v1, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;
    const-string v2, ""

    .line 92
    .local v2, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->getDIGITS()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/htc/android/epst/translator/NumberTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v3, p1, p2, v2}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 97
    return-void
.end method
