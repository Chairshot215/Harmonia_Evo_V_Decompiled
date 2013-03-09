.class public Lcom/htc/android/epst/translator/SidTranslator;
.super Ljava/lang/Object;
.source "SidTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/SidTranslator$SIDVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SidTranslator"

.field private static final NUMBER_LENGTH:I = 0x5


# instance fields
.field public INDEX:I

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

.field private nid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/translator/SidTranslator;->INDEX:I

    .line 34
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/SidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 47
    return-void
.end method

.method private getSettingValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    iget-object v3, p0, Lcom/htc/android/epst/translator/SidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v4, 0x103

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;

    .line 81
    .local v1, sidnid:Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;
    iget v3, p0, Lcom/htc/android/epst/translator/SidTranslator;->INDEX:I

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->getSIDNID(I)[Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, sidnidVal:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 83
    .local v0, sid:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/htc/android/epst/translator/SidTranslator;->nid:Ljava/lang/String;

    .line 84
    return-object v0
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 39
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2}, Landroid/text/method/DigitsKeyListener;-><init>()V

    aput-object v2, v0, v1

    .line 40
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/htc/android/epst/translator/SidTranslator$SIDVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/SidTranslator$SIDVerifier;-><init>(Lcom/htc/android/epst/translator/SidTranslator;)V

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/android/epst/translator/SidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 111
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 114
    iput-object p2, p0, Lcom/htc/android/epst/translator/SidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 115
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/SidTranslator;->sendReadRequest(I)V

    .line 116
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 120
    iput-object p2, p0, Lcom/htc/android/epst/translator/SidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 121
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/SidTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 122
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 125
    const-string v0, ""

    .line 126
    .local v0, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/htc/android/epst/translator/SidTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/SidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 130
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 88
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 90
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 7
    .parameter "modifiedValue"

    .prologue
    const/16 v6, 0x103

    .line 93
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, sidString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 95
    .local v0, itemId:I
    iget-object v3, p0, Lcom/htc/android/epst/translator/SidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;

    .line 97
    .local v2, sidnid:Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;
    iget v3, p0, Lcom/htc/android/epst/translator/SidTranslator;->INDEX:I

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/epst/translator/SidTranslator;->nid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->setSIDNID(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v6, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 100
    return-void
.end method
