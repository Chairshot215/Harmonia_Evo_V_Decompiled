.class public Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;
.super Ljava/lang/Object;
.source "PDEIPDefaultTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PDEIPDefaultTranslator"


# instance fields
.field private fakeItemId:I

.field private index:I

.field private indexStr:Ljava/lang/String;

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .parameter "index"
    .parameter "fakeItemId"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 39
    iput p1, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->index:I

    .line 40
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->indexStr:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->fakeItemId:I

    .line 42
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 45
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/htc/android/epst/IPAddressVerifier;->getSingleton()Lcom/htc/android/epst/IPAddressVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "PDEIPDefaultTranslator"

    const-string v1, "Update All"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 63
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 66
    iput-object p2, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 69
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x191

    iget-object v3, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->indexStr:Ljava/lang/String;

    move v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestRead(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 71
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 12
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v2, 0x191

    const/4 v4, 0x0

    .line 76
    iput-object p2, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 77
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, value:Ljava/lang/String;
    const-string v0, "\\."

    const/4 v1, 0x4

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, ips:[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 80
    .local v7, ipList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 81
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 82
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 83
    .local v9, num:I
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "PDEIPDefaultTranslator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestWriteSettingValue.PDE index:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " PDE IP:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    .end local v9           #num:I
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    iget v1, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->index:I

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v10

    check-cast v10, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;

    .line 89
    .local v10, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;
    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->setHomeAddr([Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->indexStr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/epst/Port;->RequestWrite(IILjava/lang/String;ILcom/htc/android/epst/translator/Translator;)V

    .line 93
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 8
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 97
    iget-object v5, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v6, 0x191

    iget v7, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->index:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;

    .line 98
    .local v3, rawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;
    const-string v4, ""

    .line 100
    .local v4, value:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 101
    invoke-virtual {v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PDE_IP;->getHomeAddr()[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, ips:[Ljava/lang/String;
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 103
    aget-object v5, v1, v0

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, num:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    .end local v2           #num:I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 107
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 110
    .end local v0           #i:I
    .end local v1           #ips:[Ljava/lang/String;
    :cond_1
    const-string v5, "PDEIPDefaultTranslator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrieveItemAndUpdate.PDE IP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v5, p0, Lcom/htc/android/epst/translator/PDEIPDefaultTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v5, p1, p2, v4}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 112
    return-void
.end method
