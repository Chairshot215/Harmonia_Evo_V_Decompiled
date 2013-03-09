.class public Lcom/htc/android/epst/translator/RevATranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "RevATranslator.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static NVI_ID_REV_A:I

.field private static m7500:Z

.field private static mDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "RevATranslator"

    sput-object v0, Lcom/htc/android/epst/translator/RevATranslator;->LOG_TAG:Ljava/lang/String;

    .line 22
    const-string v0, "ro.product.device"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/translator/RevATranslator;->mDevice:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/htc/android/epst/translator/RevATranslator;->mDevice:Ljava/lang/String;

    const-string v1, "heroc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/android/epst/translator/RevATranslator;->mDevice:Ljava/lang/String;

    const-string v1, "desirec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/android/epst/translator/RevATranslator;->mDevice:Ljava/lang/String;

    const-string v1, "bee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/android/epst/translator/RevATranslator;->mDevice:Ljava/lang/String;

    const-string v1, "marvelc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    .line 29
    sget-boolean v0, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x106c

    :goto_1
    sput v0, Lcom/htc/android/epst/translator/RevATranslator;->NVI_ID_REV_A:I

    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_2
    const/16 v0, 0x1364

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

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
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005d

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-boolean v1, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_EHRPD:Z

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005e

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x7f04005d

    .line 48
    sget-object v6, Lcom/htc/android/epst/translator/RevATranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/android/epst/translator/RevATranslator;->mDevice:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;
    const/4 v3, 0x0

    .line 52
    .local v3, mRawData_7500:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;
    sget-boolean v6, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-eqz v6, :cond_0

    .line 53
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v6

    const/16 v7, 0x106c

    invoke-virtual {v6, v7}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    .end local v3           #mRawData_7500:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;
    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;

    .line 57
    .restart local v3       #mRawData_7500:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;
    :goto_0
    const-string v5, ""

    .line 58
    .local v5, value:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, nStatus:Ljava/lang/String;
    :goto_1
    sget-boolean v6, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-eqz v6, :cond_2

    sget-object v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;->ENABLE_STREAM:Ljava/lang/String;

    .line 60
    .local v1, EnableStream:Ljava/lang/String;
    :goto_2
    sget-boolean v6, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-eqz v6, :cond_3

    sget-object v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;->DISABLE_STREAM:Ljava/lang/String;

    .line 63
    .local v0, DiableStream:Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v6

    const v7, 0x7f04005c

    invoke-virtual {v6, v7}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    :goto_4
    return-object v5

    .line 55
    .end local v0           #DiableStream:Ljava/lang/String;
    .end local v1           #EnableStream:Ljava/lang/String;
    .end local v4           #nStatus:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v6

    const/16 v7, 0x1364

    invoke-virtual {v6, v7}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    .end local v2           #mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;
    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;

    .restart local v2       #mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;
    goto :goto_0

    .line 58
    .restart local v5       #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->getStatus()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 59
    .restart local v4       #nStatus:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->ENABLE_STREAM:Ljava/lang/String;

    goto :goto_2

    .line 60
    .restart local v1       #EnableStream:Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->DISABLE_STREAM:Ljava/lang/String;

    goto :goto_3

    .line 65
    .restart local v0       #DiableStream:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 66
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 67
    :cond_5
    sget-boolean v6, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_EHRPD:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->eHRPD_STREAM:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 68
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v6

    const v7, 0x7f04005e

    invoke-virtual {v6, v7}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 70
    :cond_6
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    sget-object v6, Lcom/htc/android/epst/translator/RevATranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getSettingValue]Please chekck!!There is no this type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 78
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    sget v2, Lcom/htc/android/epst/translator/RevATranslator;->NVI_ID_REV_A:I

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 80
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 7
    .parameter "modifiedValue"

    .prologue
    const/4 v5, 0x1

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;
    const/4 v1, 0x0

    .line 86
    .local v1, mRawData_7500:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;
    sget-boolean v3, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-eqz v3, :cond_0

    .line 87
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v3

    const/16 v4, 0x106c

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    .end local v1           #mRawData_7500:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;
    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;

    .line 91
    .restart local v1       #mRawData_7500:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;
    :goto_0
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04005c

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    sget-boolean v3, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-ne v3, v5, :cond_1

    .line 95
    sget-object v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;->ENABLE_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;->setStatus(Ljava/lang/String;)V

    .line 114
    :goto_1
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    sget v5, Lcom/htc/android/epst/translator/RevATranslator;->NVI_ID_REV_A:I

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 116
    return-void

    .line 89
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v3

    const/16 v4, 0x1364

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    .end local v0           #mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;
    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;

    .restart local v0       #mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;
    goto :goto_0

    .line 97
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->ENABLE_STREAM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04005d

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    sget-boolean v3, Lcom/htc/android/epst/translator/RevATranslator;->m7500:Z

    if-ne v3, v5, :cond_3

    .line 103
    sget-object v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;->DISABLE_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A_7500;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_3
    sget-object v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->DISABLE_STREAM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04005e

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    sget-object v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->eHRPD_STREAM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REV_A;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_5
    sget-object v3, Lcom/htc/android/epst/translator/RevATranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sendWriteRequest]Please chekck!!There is no this type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
