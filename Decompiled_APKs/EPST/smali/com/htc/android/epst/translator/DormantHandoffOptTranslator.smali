.class public Lcom/htc/android/epst/translator/DormantHandoffOptTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "DormantHandoffOptTranslator.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "DormantHandoffOptTranslator"

    sput-object v0, Lcom/htc/android/epst/translator/DormantHandoffOptTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 20
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x1ef

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;

    iput-object v0, p0, Lcom/htc/android/epst/translator/DormantHandoffOptTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;

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
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005d

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    const-string v0, ""

    .line 36
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/DormantHandoffOptTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;

    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005d

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1ef

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 49
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 5
    .parameter "modifiedValue"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/htc/android/epst/translator/DormantHandoffOptTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;

    const-string v2, "01"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;->setStatus(Ljava/lang/String;)V

    .line 61
    :goto_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v1

    const/16 v2, 0x27

    const/16 v3, 0x1ef

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 63
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/DormantHandoffOptTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QC_DRS_OPT;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method
