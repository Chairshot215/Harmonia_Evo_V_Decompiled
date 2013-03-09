.class public Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "MipRegistRetryTimeoutTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MipRegistRetryTimeoutTranslator"

.field public static final option_1000:Ljava/lang/String; = "1000 ms"

.field public static final option_1250:Ljava/lang/String; = "1250 ms"

.field public static final option_1500:Ljava/lang/String; = "1500 ms"

.field public static final option_1750:Ljava/lang/String; = "1750 ms"

.field public static final option_2000:Ljava/lang/String; = "2000 ms"

.field public static final option_2250:Ljava/lang/String; = "2250 ms"

.field public static final option_2500:Ljava/lang/String; = "2500 ms"

.field public static final option_2750:Ljava/lang/String; = "2750 ms"

.field public static final option_3000:Ljava/lang/String; = "3000 ms"

.field public static final option_3250:Ljava/lang/String; = "3250 ms"

.field public static final option_3500:Ljava/lang/String; = "3500 ms"

.field public static final option_3750:Ljava/lang/String; = "3750 ms"

.field public static final option_4000:Ljava/lang/String; = "4000 ms"

.field public static final option_4250:Ljava/lang/String; = "4250 ms"

.field public static final option_4500:Ljava/lang/String; = "4500 ms"

.field public static final option_4750:Ljava/lang/String; = "4750 ms"

.field public static final option_5000:Ljava/lang/String; = "5000 ms"


# instance fields
.field private mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;

.field private optionsToData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 22
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x1cd

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;

    iput-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    .line 50
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "1000 ms"

    const-string v2, "00"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "1250 ms"

    const-string v2, "01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "1500 ms"

    const-string v2, "02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "1750 ms"

    const-string v2, "03"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "2000 ms"

    const-string v2, "04"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "2250 ms"

    const-string v2, "05"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "2500 ms"

    const-string v2, "06"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "2750 ms"

    const-string v2, "07"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "3000 ms"

    const-string v2, "08"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "3250 ms"

    const-string v2, "09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "3500 ms"

    const-string v2, "0A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "3750 ms"

    const-string v2, "0B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "4000 ms"

    const-string v2, "0C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "4250 ms"

    const-string v2, "0D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "4500 ms"

    const-string v2, "0E"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "4750 ms"

    const-string v2, "0F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    const-string v1, "5000 ms"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public getAvailableOptions()Ljava/util/List;
    .locals 5
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
    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 74
    .local v2, options:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, option:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v1           #option:Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    return-object v3
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    const-string v2, ""

    .line 86
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .local v1, option:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;

    invoke-virtual {v4}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->getDsMipRetryInt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #value:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 98
    .end local v1           #option:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 103
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1cd

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 105
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 5
    .parameter "modifiedValue"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->optionsToData:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    const-string v0, "00"

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/MipRegistRetryTimeoutTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;

    invoke-virtual {v1, v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->setDsMipRetryInt(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v1

    const/16 v2, 0x27

    const/16 v3, 0x1cd

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 118
    return-void
.end method
