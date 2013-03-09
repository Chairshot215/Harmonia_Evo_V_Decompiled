.class public Lcom/htc/android/epst/translator/PrevTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "PrevTranslator.java"


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

    iput-object v0, p0, Lcom/htc/android/epst/translator/PrevTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

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

    const v2, 0x7f04008c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04008d

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04008e

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    iget-object v2, p0, Lcom/htc/android/epst/translator/PrevTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;

    .line 32
    .local v0, prev:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;
    const-string v1, ""

    .line 33
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->getCaiRev()Ljava/lang/String;

    move-result-object v2

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04008c

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    return-object v1

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->getCaiRev()Ljava/lang/String;

    move-result-object v2

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04008d

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->getCaiRev()Ljava/lang/String;

    move-result-object v2

    const-string v3, "06"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04008e

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
    .line 46
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 47
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 8
    .parameter "modifiedValue"

    .prologue
    const/16 v7, 0x3a5

    const/16 v6, 0x27

    const/4 v5, 0x6

    .line 51
    iget-object v3, p0, Lcom/htc/android/epst/translator/PrevTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v7}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DYNAMIC_FEATURE;

    .line 52
    .local v0, dynamicFeature:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DYNAMIC_FEATURE;
    iget-object v3, p0, Lcom/htc/android/epst/translator/PrevTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;

    .line 53
    .local v1, prev:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04008c

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const-string v3, "01"

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->setCaiRev(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v5, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 64
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v3, v6, v7, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 67
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04008d

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    const-string v3, "03"

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->setCaiRev(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04008e

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const-string v3, "06"

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->setCaiRev(Ljava/lang/String;)V

    goto :goto_0
.end method
