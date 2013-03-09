.class public Lcom/htc/android/epst/translator/TMin1Translator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "TMin1Translator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/TMin1Translator$TMin1Verifier;
    }
.end annotation


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 19
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/TMin1Translator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 29
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 21
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 22
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/htc/android/epst/translator/TMin1Translator$TMin1Verifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/TMin1Translator$TMin1Verifier;-><init>(Lcom/htc/android/epst/translator/TMin1Translator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/htc/android/epst/translator/TMin1Translator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v2, 0x106

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 47
    .local v0, tmin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->getCdmaTMin1()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 52
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x106

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 54
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/16 v5, 0x106

    .line 58
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 59
    .local v0, itemId:I
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, modifiedTMin1:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/translator/TMin1Translator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;

    .line 62
    .local v1, mTMin1:Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->setCdmaTMin1(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v5, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 65
    return-void
.end method
