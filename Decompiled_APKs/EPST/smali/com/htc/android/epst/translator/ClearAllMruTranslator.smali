.class public Lcom/htc/android/epst/translator/ClearAllMruTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "ClearAllMruTranslator.java"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 17
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/ClearAllMruTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getAvailableOptions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040083

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040084

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    const-string v1, ""

    .line 30
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/ClearAllMruTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x3b1

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;

    .line 32
    .local v0, mru:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->isClean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f040083

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 36
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f040084

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x3b1

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 46
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/16 v5, 0x3b1

    .line 50
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/ClearAllMruTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v2, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;

    .line 53
    .local v0, mru:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f040083

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->setClean(Z)V

    .line 56
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/ClearAllMruTranslator;->refreshGroupSettings()V

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MRU3_TABLE;->setClean(Z)V

    goto :goto_0
.end method
