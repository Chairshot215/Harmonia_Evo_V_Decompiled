.class public Lcom/htc/android/epst/translator/EnableProfileTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "EnableProfileTranslator.java"


# static fields
.field public static final CUSTOMER_1_PROFILE_INDEX:I = 0x1

.field public static final CUSTOMER_2_PROFILE_INDEX:I = 0x2

.field public static final CUSTOMER_3_PROFILE_INDEX:I = 0x3

.field public static final CUSTOMER_4_PROFILE_INDEX:I = 0x4

.field public static final CUSTOMER_5_PROFILE_INDEX:I = 0x5

.field public static final DEFAULT_PROFILE_INDEX:I

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private index:I

.field mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "EnableProfileDefaultTranslator"

    sput-object v0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 36
    iput p1, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->index:I

    .line 37
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x2ca

    invoke-virtual {v0, v1, p1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;

    iput-object v0, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;

    .line 39
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
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005d

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    const-string v0, ""

    .line 52
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;

    iget v2, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->index:I

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->getEnableProfile(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 56
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
    .line 63
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x2ca

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 65
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 5
    .parameter "modifiedValue"

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 70
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

    .line 71
    iget-object v1, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;

    iget v2, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->index:I

    const-string v3, "01"

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->setEnableProfile(ILjava/lang/String;)V

    .line 77
    :goto_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v1

    const/16 v2, 0x27

    const/16 v3, 0x2ca

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 79
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;

    iget v2, p0, Lcom/htc/android/epst/translator/EnableProfileTranslator;->index:I

    const-string v3, "00"

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ENABLE;->setEnableProfile(ILjava/lang/String;)V

    goto :goto_0
.end method
