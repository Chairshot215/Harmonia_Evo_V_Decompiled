.class public Lcom/htc/android/epst/translator/HomeOrigTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "HomeOrigTranslator.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "HomeOrigTranslator"


# instance fields
.field mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 18
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x11d

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    iput-object v0, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    return-void
.end method


# virtual methods
.method public getAvailableOptions()Ljava/util/List;
    .locals 8
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
    const v7, 0x7f04006a

    const v6, 0x7f040069

    const v5, 0x7f040066

    const v4, 0x7f040068

    const v3, 0x7f040067

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 26
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006b

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 36
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 41
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006b

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 51
    :cond_2
    const-string v1, "HomeOrigTranslator"

    const-string v2, "No assign operator"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f04007a

    .line 59
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040067

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0044"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "HomeOrigTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support.getHomeOrigVoiceSo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    return-object v0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0044"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040068

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040066

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :cond_5
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0038"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006a

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :cond_6
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040069

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :cond_7
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->getHomeOrigVoiceSo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006b

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 105
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x11d

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 107
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 5
    .parameter "modifiedValue"

    .prologue
    const v4, 0x7f040068

    const v3, 0x7f040067

    .line 111
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040066

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    const-string v2, "0001"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->setHomeOrigVoiceSo(Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 143
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    const-string v1, "HomeOrigTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support this feature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v1

    const/16 v2, 0x27

    const/16 v3, 0x11d

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 152
    return-void

    .line 117
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    const-string v2, "0003"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->setHomeOrigVoiceSo(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    const-string v2, "0044"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->setHomeOrigVoiceSo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040069

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    const-string v2, "8000"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->setHomeOrigVoiceSo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_5
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006a

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    const-string v2, "0038"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->setHomeOrigVoiceSo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006b

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    const-string v2, "0011"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->setHomeOrigVoiceSo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_7
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04006c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/htc/android/epst/translator/HomeOrigTranslator;->mHomeOrig:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;

    const-string v2, "8001"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->setHomeOrigVoiceSo(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
